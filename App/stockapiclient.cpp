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
    : QObject{parent}
{}

void StockAPIClient::fetchStockData(const QString &input) {
    QNetworkAccessManager *manager = new QNetworkAccessManager(this);
    bool isExactTicker = input.length() >= 1 && input == input.toUpper();

    QString apiKey = "4i0TVOoTyfYiwPsaXDd3YCuqju1kl9nH";

    // Check if input is a full ticker or a partial search term

    QUrl url;
        // Perform partial search for tickers containing input
        url = QUrl(QString("https://api.polygon.io/v3/reference/tickers?search=%1&apiKey=%2")
                       .arg(input, apiKey));


    QNetworkRequest request(url);

    connect(manager, &QNetworkAccessManager::finished, this, [=](QNetworkReply *reply) {
        if (reply->error() == QNetworkReply::NoError) {
            QJsonDocument jsonResponse = QJsonDocument::fromJson(reply->readAll());
            QJsonObject jsonObject = jsonResponse.object();

            if (isExactTicker) {
                // Handle specific ticker data
                QString indexTicker = jsonObject["ticker"].toString();
                QJsonArray resultsArray = jsonObject["results"].toArray();

                if (resultsArray.isEmpty()) {
                    qDebug() << "No results found for ticker" << indexTicker;
                    return;
                }

                QJsonObject latestDataPoint = resultsArray.last().toObject();
                double closePrice = latestDataPoint["c"].toDouble();
                double highPrice = latestDataPoint["h"].toDouble();
                double lowPrice = latestDataPoint["l"].toDouble();
                double openPrice = latestDataPoint["o"].toDouble();
                double volume = latestDataPoint["v"].toDouble();
                double vwPrice = latestDataPoint["vw"].toDouble();

                double volumeInMillions = volume / 1000000.0;
                double dailyChange = ((closePrice - openPrice) / openPrice) * 100;

                emit fetchSuccessful(
                    QString::number(dailyChange), indexTicker, QString::number(closePrice),
                    QString::number(highPrice), QString::number(lowPrice), QString::number(openPrice),
                    QString::number(volumeInMillions), QString::number(vwPrice)
                    );

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

            } else {
                // Handle search results for partial ticker/name match
                QJsonArray resultsArray = jsonObject["results"].toArray();
                if (resultsArray.isEmpty()) {
                    qDebug() << "No stocks found for query" << input;
                    emit searchFailed(input);
                    return;
                }

                QList<QVariantMap> stockList;
                int count = 0;
                for (const QJsonValue &value : resultsArray) {
                    if (count >= 8) break; // Limit to top 8 results

                    QJsonObject stockObj = value.toObject();
                    QVariantMap stockData;
                    stockData["ticker"] = stockObj["ticker"].toString();
                    stockData["name"] = stockObj["name"].toString();
                    stockData["market"] = stockObj["market"].toString();
                    //
                    qDebug() << stockData;

                    stockList.append(stockData);
                    count++;
                }

                emit searchCompleted(stockList);
            }
        } else {
            qDebug() << "Error:" << reply->errorString();
        }
        reply->deleteLater();
    });

    manager->get(request);
}
