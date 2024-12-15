#include "stockapiclient.hpp"
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QDateTime>
#include <QDebug>

StockAPIClient::StockAPIClient(QObject *parent)
    : QObject{parent}, networkManager(new QNetworkAccessManager(this)) {
    converterApi = "43eb5f5641de66852e2c07c9";
}

void StockAPIClient::fetchStockData(const QString &ticker) {
    QString apiKey = "4i0TVOoTyfYiwPsaXDd3YCuqju1kl9nH";

    QString endDate = QDate::currentDate().toString("yyyy-MM-dd");
    QString startDate = QDate::currentDate().addYears(-1).toString("yyyy-MM-dd");

    QUrl url(QString("https://api.polygon.io/v2/aggs/ticker/%1/range/1/day/%2/%3?adjusted=true&apiKey=%4")
                 .arg(ticker, startDate, endDate, apiKey));
    QNetworkRequest request(url);

    connect(networkManager, &QNetworkAccessManager::finished, this, [=](QNetworkReply *reply) {
        if (reply->error() == QNetworkReply::NoError) {
            QJsonDocument jsonResponse = QJsonDocument::fromJson(reply->readAll());
            QJsonObject jsonObject = jsonResponse.object();
            QString indexTicker = jsonObject["ticker"].toString();
            QJsonArray resultsArray = jsonObject["results"].toArray();

            if (resultsArray.isEmpty()) {
                qDebug() << "No results found for ticker" << indexTicker;
                return;
            }

            // Extract latest data point
            QJsonObject latestDataPoint = resultsArray.last().toObject();
            double closePrice = latestDataPoint["c"].toDouble();
            double highPrice = latestDataPoint["h"].toDouble();
            double lowPrice = latestDataPoint["l"].toDouble();
            double openPrice = latestDataPoint["o"].toDouble();
            double volume = latestDataPoint["v"].toDouble();
            double vwPrice = latestDataPoint["vw"].toDouble();

            // Format volume in millions
            double volumeInMillions = volume / 1000000.0;

            // Calculate daily percentage change
            double dailyChange = ((closePrice - openPrice) / openPrice) * 100;

            // Prepare a QVariantMap to hold all data
            QVariantMap stockData;

            // Stock price data
            stockData["dailyChange"] = QString::number(dailyChange);
            stockData["ticker"] = indexTicker;
            stockData["closePrice"] = QString::number(closePrice);
            stockData["highPrice"] = QString::number(highPrice);
            stockData["lowPrice"] = QString::number(lowPrice);
            stockData["openPrice"] = QString::number(openPrice);
            stockData["volume"] = QString::number(volumeInMillions);
            stockData["vwPrice"] = QString::number(vwPrice);


            // Extract historical data for charting
            QVariantList points;
            for (const QJsonValue &value : resultsArray) {
                QJsonObject dataPoint = value.toObject();
                qint64 timestamp = dataPoint["t"].toVariant().toLongLong();
                double closePrice = dataPoint["c"].toDouble();

                QVariantMap point;
                point["x"] = QDateTime::fromMSecsSinceEpoch(timestamp);
                point["y"] = closePrice;
                points.append(point);
            }
            emit lineSeriesDataReady(points);

            stockData["historicalData"] = points;

            // Now fetch fundamental data from Alpha Vantage
            fetchFundamentalData(ticker, stockData);
        } else {
            qDebug() << "Error:" << reply->errorString();
        }
        reply->deleteLater();
    });

    networkManager->get(request);
}

void StockAPIClient::fetchFundamentalData(const QString &ticker, QVariantMap stockData) {
    QString apiKey = "8N4UQXABERJCWEZL";

    // URL for Alpha Vantage’s stock overview data
    QUrl url(QString("https://www.alphavantage.co/query?function=OVERVIEW&symbol=%1&apikey=%2")
                 .arg(ticker, apiKey));
    QNetworkRequest request(url);

    connect(networkManager, &QNetworkAccessManager::finished, this, [=](QNetworkReply* reply)  {
        QVariantMap combinedData = stockData;  // Copy stockData into a new map to add fundamental data

        if (reply->error() == QNetworkReply::NoError) {
            QJsonDocument jsonResponse = QJsonDocument::fromJson(reply->readAll());
            QJsonObject jsonObject = jsonResponse.object();

            if (jsonObject.contains("MarketCapitalization")) {
                QString marketCapStr = jsonObject["MarketCapitalization"].toString();
                double marketCap = marketCapStr.toDouble();
                // Convert market cap to trillions if necessary
                if (marketCap >= 1000000000000) {
                    marketCap /= 1000000000000;
                    combinedData["marketCap"] = QString::number(marketCap, 'f', 2) + " T"; // Trillions
                } else {
                    combinedData["marketCap"] = marketCapStr; // Original format if less than a trillion
                }
            } else {
                combinedData["marketCap"] = "N/A";
            }
            combinedData["revenue"] = jsonObject["RevenueTTM"].toString();
            combinedData["peRatio"] = jsonObject["PEGRatio"].toString();
            combinedData["dividendYield"] = jsonObject["DividendYield"].toString();
            combinedData["avgVolume"] = jsonObject["AverageVolume"].toString();
            combinedData["eps"] = jsonObject["EPS"].toString();
            combinedData["name"] = jsonObject["Name"].toString();
            if (jsonObject.contains("Beta")) {
                combinedData["beta"] = jsonObject["Beta"].toString();
            } else {
                combinedData["beta"] = "N/A";  // Or some default value
            }
            // Emit the combined data to QML
            emit stockDataFetched(combinedData);
        } else {
            qDebug() << "Error:" << reply->errorString();
        }
        reply->deleteLater();
    });

    networkManager->get(request);
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
