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

void StockAPIClient::fetchStockData(const QString &ticker) {
    QNetworkAccessManager *manager = new QNetworkAccessManager(this);
    QString apiKey = "4i0TVOoTyfYiwPsaXDd3YCuqju1kl9nH";

    QString endDate = QDate::currentDate().toString("yyyy-MM-dd");
    QString startDate = QDate::currentDate().addYears(-1).toString("yyyy-MM-dd");

    // Updated URL for historical data, using dynamic start and end dates
    QUrl url(QString("https://api.polygon.io/v2/aggs/ticker/%1/range/1/day/%2/%3?adjusted=true&apiKey=%4")
                 .arg(ticker, startDate, endDate, apiKey));
    QNetworkRequest request(url);

    connect(manager, &QNetworkAccessManager::finished, this, [=](QNetworkReply *reply) {
        if (reply->error() == QNetworkReply::NoError) {
            QJsonDocument jsonResponse = QJsonDocument::fromJson(reply->readAll());
            QJsonObject jsonObject = jsonResponse.object();

            // Extract metadata for main stock information
            QString indexTicker = jsonObject["ticker"].toString();
            QJsonArray resultsArray = jsonObject["results"].toArray();

            // Check if there's at least one data point in the array
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

            // Calculate percentage change for the current day
            double dailyChange = ((closePrice - openPrice) / openPrice) * 100;

            // Emit signal with main stock data
            emit fetchSuccessful(
                QString::number(dailyChange), indexTicker, QString::number(closePrice),
                QString::number(highPrice), QString::number(lowPrice), QString::number(openPrice),
                QString::number(volumeInMillions), QString::number(vwPrice)
                );

            // Extract historical data for line series
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

            // Emit line series data to QML
            emit lineSeriesDataReady(points);

        } else {
            qDebug() << "Error:" << reply->errorString();
        }
        reply->deleteLater();
    });

    manager->get(request);
}
