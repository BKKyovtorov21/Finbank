#pragma once

#include <QObject>
#include <QSqlQuery>
class CreateTransaction : public QObject
{
    Q_OBJECT
public:
    explicit CreateTransaction(QObject *parent = nullptr);

    Q_INVOKABLE void makeTransaction(const QString& senderIBAN, const QString& recipentIBAN, const QString& sendingInfo, const QString& receivingInfo);

    Q_INVOKABLE void showTransactions(const QString& userIBAN, const bool& showMore);
signals:

    void transactionFound(const QString& receiverFullname, const QString& receivingValue, const QString& receivingCurrency, const bool& receiving);
};
