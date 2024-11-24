#include "createtransaction.hpp"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>
#include <QVariant>
#include <QRegularExpression>
#include <QDate>  // Add this line to include QDate

CreateTransaction::CreateTransaction(QObject *parent)
    : QObject{parent}
{}

void CreateTransaction::makeTransaction(const QString &senderIBAN, const QString &recipentIBAN, const QString &sendingInfo, const QString &receivingInfo)
{
    QSqlQuery qry;
    // Extract sending value and currency using a regex
    QRegularExpression sendingRegex(R"(\$\s*([\d,]+(?:\.\d{1,2})?)\s*(\w{3}))");
    QRegularExpressionMatch sendingMatch = sendingRegex.match(sendingInfo);

    if (!sendingMatch.hasMatch()) {
        qDebug() << "Invalid sending information format:" << sendingInfo;
        return;
    }

    QString sendingValueStr = sendingMatch.captured(1).remove(','); // Remove commas if present
    QString sendingCurrency = sendingMatch.captured(2);
    bool sendingValueOk;
    double sendingValue = sendingValueStr.toDouble(&sendingValueOk); // Convert to double

    if (!sendingValueOk) {
        qDebug() << "Failed to convert sending value to double.";
        return;
    }

    QRegularExpression receivingRegex(R"(\$\s*([\d,]+(?:\.\d{1,5})?)\s*(\w{3}))");
    QRegularExpressionMatch receivingMatch = receivingRegex.match(receivingInfo);

    if (!receivingMatch.hasMatch()) {
        qDebug() << "Invalid receiving information format:" << receivingInfo;
        return;
    }

    QString receivingValueStr = receivingMatch.captured(1).remove(','); // Remove commas if present
    QString receivingCurrency = receivingMatch.captured(2);

    bool receivingValueOk;
    double receivingValue = receivingValueStr.toDouble(&receivingValueOk); // Convert to double

    if (!receivingValueOk) {
        qDebug() << "Failed to convert receiving value to double.";
        return;
    }

    // Start a transaction
    if (!qry.exec("START TRANSACTION")) {
        qDebug() << "Failed to begin transaction:" << qry.lastError();
        return;
    }

    // Update sender balance
    qry.prepare("SELECT balance FROM users WHERE IBAN = :senderIBAN");
    qry.bindValue(":senderIBAN", senderIBAN);
    if (qry.exec() && qry.next()) {
        double senderBalance = qry.value(0).toDouble();
        double newSenderBalance = senderBalance - sendingValue;

        // Update sender balance in the users table
        qry.prepare("UPDATE users SET balance = :newBalance, expenses = expenses + :sendingValue WHERE IBAN = :senderIBAN");
        qry.bindValue(":newBalance", newSenderBalance);
        qry.bindValue(":sendingValue", sendingValue);
        qry.bindValue(":senderIBAN", senderIBAN);
        if (!qry.exec()) {
            qDebug() << "Failed to update sender's balance:" << qry.lastError();
            qry.exec("ROLLBACK"); // Rollback transaction on error
            return;
        }
    } else {
        qDebug() << "Sender IBAN not found or error querying balance:" << qry.lastError();
        qry.exec("ROLLBACK"); // Rollback transaction on error
        return;
    }

    // Update recipient balance
    qry.prepare("SELECT balance FROM users WHERE IBAN = :recipentIBAN");
    qry.bindValue(":recipentIBAN", recipentIBAN);
    if (qry.exec() && qry.next()) {
        double recipientBalance = qry.value(0).toDouble();
        double newRecipientBalance = recipientBalance + receivingValue;

        // Update recipient balance in the users table
        qry.prepare("UPDATE users SET balance = :newBalance, income = income + :receivingValue WHERE IBAN = :recipentIBAN");
        qry.bindValue(":newBalance", newRecipientBalance);
        qry.bindValue(":receivingValue", receivingValue);
        qry.bindValue(":recipentIBAN", recipentIBAN);
        if (!qry.exec()) {
            qDebug() << "Failed to update recipient's balance:" << qry.lastError();
            qry.exec("ROLLBACK"); // Rollback transaction on error
            return;
        }
    } else {
        qDebug() << "Recipient IBAN not found or error querying balance:" << qry.lastError();
        qry.exec("ROLLBACK"); // Rollback transaction on error
        return;
    }

    // Insert transaction into transactions table
    qry.prepare("INSERT INTO transactions (sendingValue, sendingCurrency, receivingValue, receivingCurrency, date, senderIBAN, recipentIBAN) "
                "VALUES (:sendingValue, :sendingCurrency, :receivingValue, :receivingCurrency, CURRENT_DATE, :senderIBAN, :recipentIBAN)");
    qry.bindValue(":sendingValue", sendingValue);
    qry.bindValue(":sendingCurrency", sendingCurrency);
    qry.bindValue(":receivingValue", receivingValue);
    qry.bindValue(":receivingCurrency", receivingCurrency);
    qry.bindValue(":senderIBAN", senderIBAN);
    qry.bindValue(":recipentIBAN", recipentIBAN);

    // Execute the query
    if (!qry.exec()) {
        qDebug() << "Error inserting into transactions table:" << qry.lastError();
        qry.exec("ROLLBACK"); // Rollback transaction on error
    } else {
        qDebug() << "Transaction inserted successfully!";
        qry.exec("COMMIT"); // Commit the transaction on success
    }
}

void CreateTransaction::showTransactions(const QString &userIBAN, const bool &showMore)
{
    QString baseQuery = R"(
        SELECT sendingValue, sendingCurrency, receivingValue, receivingCurrency, senderIBAN, recipentIBAN
        FROM transactions
        WHERE senderIBAN = :userIBAN OR recipentIBAN = :userIBAN
        ORDER BY date DESC
    )";

    QSqlQuery query;
    query.prepare(baseQuery);
    query.bindValue(":userIBAN", userIBAN);

    if (!query.exec()) {
        qDebug() << "Transaction query failed:" << query.lastError();
        return;
    }

    while (query.next()) {
        QString sendingValue = query.value("sendingValue").toString();
        QString sendingCurrency = query.value("sendingCurrency").toString();
        QString receivingValue = query.value("receivingValue").toString();
        QString receivingCurrency = query.value("receivingCurrency").toString();
        QString senderIBAN = query.value("senderIBAN").toString();
        QString recipentIBAN = query.value("recipentIBAN").toString();

        bool isReceiving = (recipentIBAN == userIBAN);

        // Determine whose name to fetch (the other party in the transaction)
        QString otherIBAN = isReceiving ? senderIBAN : recipentIBAN;

        // Use a separate query object for the user name lookup
        QSqlQuery userQuery;
        QString baseQuery2 = R"(
            SELECT first_name, last_name
            FROM users
            WHERE IBAN = :otherIBAN
        )";

        userQuery.prepare(baseQuery2);
        userQuery.bindValue(":otherIBAN", otherIBAN);

        if (!userQuery.exec()) {
            qDebug() << "User query failed:" << userQuery.lastError();
            return;
        }

        while (userQuery.next()) {
            QString firstName = userQuery.value("first_name").toString();
            QString lastName = userQuery.value("last_name").toString();
            QString fullname = firstName + " " + lastName;

            emit transactionFound(fullname, receivingValue, receivingCurrency, isReceiving);
        }
    }
}

void CreateTransaction::buyStock(const QString& username, const int& shares, const QString& stockTicker, const QString& stockPrice)
{
    QSqlQuery qry;

    // Step 1: Retrieve the current balance of the user
    qry.prepare("SELECT balance FROM users WHERE username = :username");
    qry.bindValue(":username", username);

    if (!qry.exec()) {
        qWarning() << "Failed to retrieve balance:" << qry.lastError();
        return;
    }

    if (qry.next()) {
        // Step 2: Calculate the total cost of the stock purchase
        double balance = qry.value(0).toDouble();
        double price = stockPrice.toDouble();
        double totalCost = price * shares;

        // Step 3: Update the balance if there are sufficient funds
        if (balance >= totalCost) {
            double newBalance = balance - totalCost;
            // Step 4: Update the user's balance in the database
            QSqlQuery updateQry;
            updateQry.prepare("UPDATE users SET balance = :newBalance WHERE username = :username");
            updateQry.bindValue(":newBalance", newBalance);
            updateQry.bindValue(":username", username);

            if (!updateQry.exec()) {
                qWarning() << "Failed to update balance:" << updateQry.lastError();
            } else {
                qDebug() << "Balance updated successfully. New balance:" << newBalance;
            }
        } else {
            qWarning() << "Insufficient funds to buy stock";
        }
    } else {
        qWarning() << "User not found:" << username;
    }


    qry.prepare("INSERT INTO stocks (username, stockTicker, stockPrice, shares, purchaseDate) "
                "VALUES (:username, :stockTicker, :stockPrice, :shares, :purchaseDate)");

    qry.bindValue(":username", username);
    qry.bindValue(":stockTicker", stockTicker);
    qry.bindValue(":stockPrice", stockPrice);
    qry.bindValue(":shares", shares);
    qry.bindValue(":purchaseDate", QDate::currentDate().toString("yyyy-MM-dd")); // Format date for MySQL

    if (!qry.exec()) {
        qWarning() << "Insert failed:" << qry.lastError();
    } else {
        qDebug() << "Stock inserted successfully for user:" << username;
    }
}
