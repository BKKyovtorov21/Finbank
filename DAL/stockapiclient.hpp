#pragma once

#include <QObject>
#include <QVariantMap>
#include <QVariantList>
#include <QNetworkAccessManager>
class StockAPIClient : public QObject
{
    Q_OBJECT
public:
    explicit StockAPIClient(QObject *parent = nullptr);


    Q_INVOKABLE void fetchExchangeRates(const QString &baseCurrency);
    Q_INVOKABLE double convertCurrency(const QString &base, const QString &target, double amount);
    Q_INVOKABLE void fetchCandlestickData(const QString &ticker);

signals:

    void exchangeRatesUpdated(const QVariantMap &rates);
    void errorOccurred(const QString &error);
    void getExchangeRate(const double& rate);
    void dataReceived(QVariantList candles);

private slots:
    void onDataReceived(QNetworkReply *reply);

private:
    QString converterApi;
    QVariantMap exchangeRates;

    QNetworkAccessManager *networkManager;
    QString apikey;

};
