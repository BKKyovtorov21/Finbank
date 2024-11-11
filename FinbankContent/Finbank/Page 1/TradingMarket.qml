import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    TradingMarketWindow {
        id: transactionType
        anchors.fill: parent

        imageSource: rootdashboard.pfp

        Component.onCompleted:
        {
            stockAPIClient.fetchStockData("V");

        }


        Connections {
            target: stockAPIClient

            onLineSeriesDataReady: function(points) {
                    lineSeries.clear();  // Clear existing points

                    if (points.length === 0) {
                        console.warn("No points to display in line series.");
                        return;
                    }

                    // Initialize min and max for x and y based on the first point
                    var xMin = points[0].x;
                    var xMax = points[0].x;
                    var yMin = points[0].y;
                    var yMax = points[0].y;

                    for (var i = 0; i < points.length; i++) {
                        var point = points[i];
                        lineSeries.append(point.x, point.y);

                        // Update min and max for x and y
                        if (point.x < xMin) xMin = point.x;
                        if (point.x > xMax) xMax = point.x;
                        if (point.y < yMin) yMin = point.y;
                        if (point.y > yMax) yMax = point.y;
                    }

                    // Set axis ranges based on calculated min and max
                    xAxis.min = xMin;
                    xAxis.max = xMax;
                    yAxis.min = yMin;
                    yAxis.max = yMax;
                }

            onFetchSuccessful: function(percentChange, indexTicker, closePrice, highPrice, lowPrice, openPrice, volume, volumeWeighted) {
                var stockComponent = Qt.createComponent("Stock.qml");
                if (stockComponent.status === Component.Ready) {
                    var stockInstance = stockComponent.createObject(stockFlow, {
                                                                        ticker: indexTicker,
                                                                        price: openPrice,
                                                                        percent: percentChange});
                    if (!stockInstance) {
                        console.error("Error: Stock instance creation failed.");
                    }
                } else {
                    console.error("Error creating Stock component:", stockComponent.errorString());
                }
            }
        }


        ChartView {
            id: lineChart
            x: 579
            y: 100
            width: 701
            height: 385
            antialiasing: true
            backgroundColor: "transparent"

            DateTimeAxis {
                id: xAxis
                titleText: "Date"
                tickCount: 10
                format: "MMM"
            }

            ValuesAxis {
                id: yAxis
                titleText: "Price"
                min: 0
            }

            LineSeries {
                id: lineSeries
                axisX: xAxis
                axisY: yAxis
                name: "Historical Prices"
            }
        }
    }


    Flow {
        id: stockFlow
        y: 271
        anchors.top: transactionType.bottom
        anchors.topMargin: -724
        anchors.horizontalCenterOffset: -213
        anchors.horizontalCenter: parent.horizontalCenter
        width: 366
        height: 710
        spacing: 10
        visible: true
        z: 10
        clip: true
    }
}
