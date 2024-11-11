#pragma once

#include <QObject>
#include <QVariantList>

class StockAPIClient : public QObject
{
    Q_OBJECT
public:
    explicit StockAPIClient(QObject *parent = nullptr);

    Q_INVOKABLE void fetchStockData(const QString &input);

signals:
    void fetchSuccessful(const QString &percentChange, const QString &indexTicker, const QString &closePrice,
                         const QString &highPrice, const QString &lowPrice, const QString &openPrice,
                         const QString &volume, const QString &volumeWeighted);

    void lineSeriesDataReady(QVariantList points);  // Signal to pass line series data for QML
    void searchFailed(const QString& input);
    void searchCompleted(QList<QVariantMap> stockList);
};
