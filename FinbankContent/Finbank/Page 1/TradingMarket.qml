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

        searchbar.onTextChanged: searchStock()
        Connections {
            target: stockAPIClient

            onLineSeriesDataReady: function(points) {
                lineSeries.clear();

                if (points.length === 0) {
                    console.warn("No points to display in line series.");
                    return;
                }

                var xMin = points[0].x;
                var xMax = points[0].x;
                var yMin = points[0].y;
                var yMax = points[0].y;

                for (var i = 0; i < points.length; i++) {
                    var point = points[i];
                    lineSeries.append(point.x, point.y);

                    if (point.x < xMin) xMin = point.x;
                    if (point.x > xMax) xMax = point.x;
                    if (point.y < yMin) yMin = point.y;
                    if (point.y > yMax) yMax = point.y;
                }

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
                            percent: percentChange
                        });
                        if (!stockInstance) {
                            console.error("Error: Stock instance creation failed.");
                        }
                    } else {
                        console.error("Error creating Stock component:", stockComponent.errorString());
                    }
                }

                onSearchCompleted: function(stocks) {
                    // Clear previous search results in stockFlow
                    stockFlow.children.forEach(child => child.destroy());

                    // Loop through each stock in search results and create Stock instances
                    for (var i = 0; i < stocks.length; i++) {
                        var stock = stocks[i];
                        var stockComponent = Qt.createComponent("Stock.qml");
                        if (stockComponent.status === Component.Ready) {
                            var stockInstance = stockComponent.createObject(stockFlow, {
                                ticker: stock.ticker,
                                name: stock.name,
                                price: stock.price ? stock.price : "N/A",  // Ensure there's a default if price is unavailable
                                percent: stock.percent ? stock.percent : "N/A"  // Ensure there's a default if percent is unavailable
                            });
                            if (!stockInstance) {
                                console.error("Error: Stock instance creation failed.");
                            }
                        } else {
                            console.error("Error creating Stock component:", stockComponent.errorString());
                        }
                    }
                }

                onSearchFailed: function(error) {
                    console.warn("Search failed:", error);
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

            ValueAxis {
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

    // ListView to display search results for partial matches
    ListView {
        id: searchResultsView
        width: 300
        height: 500
        anchors.left: parent.left
        visible: false
        model: searchResultsModel
        delegate: Item {
            width: searchResultsView.width
            height: 40

            Text {
                text: model.ticker + " - " + model.name
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stockAPIClient.fetchStockData(modelData.ticker);
                    searchResultsView.visible = false;
                }
            }
        }
    }

    ListModel {
        id: searchResultsModel
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

    function searchStock()
    {
        console.log("sds")
        stockAPIClient.fetchStockData(transactionType.searchbar.text);
    }
}
