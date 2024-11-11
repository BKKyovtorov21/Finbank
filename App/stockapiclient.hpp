#pragma once

#include <QObject>
#include <QVariantMap>
#include <QVariantList>

class StockAPIClient : public QObject
{
    Q_OBJECT
public:
    explicit StockAPIClient(QObject *parent = nullptr);

    // Method to fetch stock data using a ticker
    Q_INVOKABLE void fetchStockData(const QString &ticker);

    void fetchFundamentalData(const QString &ticker, QVariantMap stockData);

signals:
    // Signal to pass combined stock data (historical + fundamental)
    void stockDataFetched(const QVariantMap &stockData);

    // Signal for line series data to be used in charts (historical data)
    void lineSeriesDataReady(QVariantList points);

};
