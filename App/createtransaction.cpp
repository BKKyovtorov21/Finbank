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

    // Prepare the SQL insert statement
    qry.prepare("INSERT INTO transactions (sendingValue, sendingCurrency, receivingValue, receivingCurrency, date, senderIBAN, recipentIBAN) "
                "VALUES (:sendingValue, :sendingCurrency, :receivingValue, :receivingCurrency, CURRENT_DATE, :senderIBAN, :recipentIBAN)");

    // Bind values
    qry.bindValue(":sendingValue", sendingValue);
    qry.bindValue(":sendingCurrency", sendingCurrency);
    qry.bindValue(":receivingValue", receivingValue);
    qry.bindValue(":receivingCurrency", receivingCurrency);
    qry.bindValue(":senderIBAN", senderIBAN);
    qry.bindValue(":recipentIBAN", recipentIBAN);

    // Execute the query
    if (!qry.exec()) {
        qDebug() << "Error inserting into transactions table:" << qry.lastError();
    } else {
        qDebug() << "Transaction inserted successfully!";
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