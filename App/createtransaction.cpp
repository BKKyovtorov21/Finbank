#include "createtransaction.hpp"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>
#include <QRegularExpression>

CreateTransaction::CreateTransaction(QObject *parent)
    : QObject{parent}
{}

void CreateTransaction::makeTransaction(const QString &senderIBAN, const QString &recipentIBAN, const QString &sendingInfo, const QString &receivingInfo)
{
    QSqlQuery qry;

    // Debug: Print input values
    qDebug() << "Sender IBAN:" << senderIBAN;
    qDebug() << "Recipent IBAN:" << recipentIBAN;
    qDebug() << "Sending Info:" << sendingInfo;
    qDebug() << "Receiving Info:" << receivingInfo;

    // Extract sending value and currency using a regex
    QRegularExpression sendingRegex(R"(\$\s*([\d,]+(?:\.\d{1,2})?)\s*(\w{3}))");
    QRegularExpressionMatch sendingMatch = sendingRegex.match(sendingInfo);

    if (!sendingMatch.hasMatch()) {
        qDebug() << "Invalid sending information format:" << sendingInfo;
        return;
    }

    QString sendingValueStr = sendingMatch.captured(1).remove(','); // Remove commas if present
    QString sendingCurrency = sendingMatch.captured(2);

    // Debug: Print captured sending value and currency
    qDebug() << "Sending Value String:" << sendingValueStr;
    qDebug() << "Sending Currency:" << sendingCurrency;

    bool sendingValueOk;
    double sendingValue = sendingValueStr.toDouble(&sendingValueOk); // Convert to double

    if (!sendingValueOk) {
        qDebug() << "Failed to convert sending value to double.";
        return;
    }

    // Extract receiving value and currency using a regex
    // Extract receiving value and currency using a regex
    QRegularExpression receivingRegex(R"(\$\s*([\d,]+(?:\.\d{1,5})?)\s*(\w{3}))");
    QRegularExpressionMatch receivingMatch = receivingRegex.match(receivingInfo);

    if (!receivingMatch.hasMatch()) {
        qDebug() << "Invalid receiving information format:" << receivingInfo;
        return;
    }

    QString receivingValueStr = receivingMatch.captured(1).remove(','); // Remove commas if present
    QString receivingCurrency = receivingMatch.captured(2);

    // Debug: Print captured receiving value and currency
    qDebug() << "Receiving Value String:" << receivingValueStr;
    qDebug() << "Receiving Currency:" << receivingCurrency;

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
