#include "stockapiclient.hpp"
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QDateTime>
#include <QDebug>
#include <QFile>
#include <QSslSocket>
StockAPIClient::StockAPIClient(QObject *parent)
    : QObject{parent}, networkManager(new QNetworkAccessManager(this)) {

    qDebug() << "SSL support:" << QSslSocket::supportsSsl();
    converterApi = "be328d3f1fc00e5e90151954";
    connect(networkManager, &QNetworkAccessManager::finished, this, &StockAPIClient::onDataReceived);

    QFile file(":/resources/config.json");

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Could not open config file!";
    }

    QByteArray jsonData = file.readAll();
    file.close();

    QJsonDocument doc = QJsonDocument::fromJson(jsonData);
    if (doc.isNull() || !doc.isObject()) {
        qWarning() << "Invalid JSON format!";
    }

    QJsonObject jsonObj = doc.object();
    apikey = jsonObj.value("PolygonAPI").toString();
    converterApi = jsonObj.value("ExchangAPI").toString();
    qDebug() << apikey << " " << converterApi;
}

void StockAPIClient::fetchCandlestickData(const QString &ticker) {
    QString url = QString("https://api.polygon.io/v2/aggs/ticker/%1/range/1/minute/2024-02-06/2024-02-06?adjusted=true&sort=asc&apiKey=%2")
    .arg(ticker, apikey);
    networkManager->get(QNetworkRequest(QUrl(url)));
}

void StockAPIClient::onDataReceived(QNetworkReply *reply) {
    if (reply->error() != QNetworkReply::NoError) {
        qDebug() << "Error fetching data:" << reply->errorString();
        reply->deleteLater();
        return;
    }

    QByteArray response = reply->readAll();
    QJsonDocument jsonDoc = QJsonDocument::fromJson(response);
    QVariantList candles;

    if (jsonDoc.isObject()) {
        QJsonObject jsonObj = jsonDoc.object();
        if (jsonObj.contains("results") && jsonObj["results"].isArray()) {
            QJsonArray results = jsonObj["results"].toArray();
            for (const auto &item : results) {
                QJsonObject candle = item.toObject();
                QVariantMap candleMap;
                candleMap["timestamp"] = candle["t"].toVariant();
                candleMap["open"] = candle["o"].toVariant();
                candleMap["high"] = candle["h"].toVariant();
                candleMap["low"] = candle["l"].toVariant();
                candleMap["close"] = candle["c"].toVariant();
                candles.append(candleMap);
            }
        }
    }

    emit dataReceived(candles);
    reply->deleteLater();
}

void StockAPIClient::fetchExchangeRates(const QString &baseCurrency) {
    QUrl url("https://v6.exchangerate-api.com/v6/" + converterApi + "/latest/" + baseCurrency);
    QNetworkRequest request(url);

    auto reply = networkManager->get(request);
    connect(reply, &QNetworkReply::finished, this, [this, reply]() {
        if (reply->error() == QNetworkReply::NoError) {
            QJsonDocument jsonDoc = QJsonDocument::fromJson(reply->readAll());
            QJsonObject jsonObject = jsonDoc.object();
            if (jsonObject.contains("conversion_rates")) {
                QJsonObject rates = jsonObject["conversion_rates"].toObject();
                exchangeRates.clear();
                for (const QString &key : rates.keys()) {
                    exchangeRates[key] = rates[key].toDouble();
                }
                emit exchangeRatesUpdated(exchangeRates);
            } else {
                emit errorOccurred("Unexpected API response format.");
            }
        } else {
            emit errorOccurred(reply->errorString());
        }
        reply->deleteLater();
    });
}

double StockAPIClient::convertCurrency(const QString &base, const QString &target, double amount) {

    qDebug() << base << " " << target << " " << amount;
    if (!exchangeRates.contains(base) || !exchangeRates.contains(target)) {
        return -1;
    }

    double baseRate = exchangeRates.value(base).toDouble();
    double targetRate = exchangeRates.value(target).toDouble();
    emit getExchangeRate(targetRate);
    double amountInBaseCurrency = amount / baseRate;
    return amountInBaseCurrency * targetRate;
}
