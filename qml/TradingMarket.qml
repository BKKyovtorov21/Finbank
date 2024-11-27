import QtQuick
import QtQuick.Controls
import QtCharts
import QtQuick.Shapes 1.0
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
        id: tradingmarket
        property alias buyButton: buyButton
        property alias lineChart: lineChart
        property alias stockData: stockData
        property alias shares: shares
        property bool stockAvailable: false

        property string stockTicker
        property int stockShares
        property double stockPrice
        anchors.fill: parent

        imageSource: rootdashboard.pfp

        searchbar.onAccepted: stockAPIClient.fetchStockData(searchbar.text);

        function clearStockInstances() {
            // Iterate over stockFlow children and destroy each
            for (var i = stockFlow.children.length - 1; i >= 0; i--) {
                stockFlow.children[i].destroy();
            }
        }


        dashboardButton.onClicked: {
            clearStockInstances();
            tradingmarket.visible = false;
            loader.source = "TradingDashboard.qml"
        }

        buyButton.onClicked:
        {
            createtransaction.buyStock(rootdashboard.usernameRef, shares.text, tradingmarket.stockTicker, tradingmarket.stockPrice);
        }

        Connections {
            target: stockAPIClient

            onLineSeriesDataReady: function(points) {
                lineChart.visible = true;
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

            onStockDataFetched: function(stockData) {

                console.log("Stock data visible:", stockData.visible);
                tradingmarket.stockAvailable = true;
                // Update the stock data in the UI
                openPrice.text = stockData["openPrice"];
                highPrice.text = stockData["highPrice"];
                lowprice.text = stockData["lowPrice"];
                volumePrice.text = stockData["volume"];
                // Check if the fundamental data is available in stockData and set it to "N/A" if not
                peprice.text = stockData["peRatio"] !== undefined ? stockData["peRatio"] : "N/A";
                betaprice.text = stockData["beta"] !== undefined ? stockData["beta"] : "N/A";
                mktcapprice.text = stockData["marketCap"] !== undefined ? stockData["marketCap"] : "N/A";
                epsprice.text = stockData["eps"] !== undefined ? stockData["eps"] : "N/A";
                tradingmarket.stockTicker = stockData["ticker"];
                tradingmarket.stockPrice = stockData["openPrice"];
                var stockComponent = Qt.createComponent("Stock.qml");
                if (stockComponent.status === Component.Ready) {
                    var stockInstance = stockComponent.createObject(stockFlow, {
                                                                        ticker: stockData["ticker"],
                                                                        price: stockData["openPrice"],
                                                                        name: stockData["name"],
                                                                        percent: stockData["dailyChange"]});
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
            visible: false

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

        Item {
            id: stockData
            x: 614
            y: 491
            width: 658
            height: 323
            visible: true

            Text {
                id: open
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("Open")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 14
                anchors.topMargin: 8
                font.pixelSize: 16
                font.weight: Font.Medium
            }
            Text {
                id: openPrice
                width: 41
                height: 20
                color: "black"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 121
                anchors.topMargin: 8
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: high
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("High")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 202
                anchors.topMargin: 8
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: highPrice
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 309
                anchors.topMargin: 8
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: low
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("Low")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 433
                anchors.topMargin: 8
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: lowprice
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 540
                anchors.topMargin: 8
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: open1
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("Volume")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 14
                anchors.topMargin: 43
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: volumePrice
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 121
                anchors.topMargin: 43
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: high1
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("P/E")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 202
                anchors.topMargin: 43
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: peprice
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 309
                anchors.topMargin: 43
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: low1
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("Mkt Cap")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 433
                anchors.topMargin: 43
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: mktcapprice
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 540
                anchors.topMargin: 43
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: open2
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("Yield")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 14
                anchors.topMargin: 80
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: dividend
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 121
                anchors.topMargin: 80
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: high2
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("Beta")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 202
                anchors.topMargin: 80
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: betaprice
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 309
                anchors.topMargin: 80
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: low2
                width: 41
                height: 20
                color: "#666666"
                text: qsTr("EPS")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 433
                anchors.topMargin: 80
                font.pixelSize: 16
                font.weight: Font.Medium
            }

            Text {
                id: epsprice
                width: 41
                height: 20
                color: "#000000"
                text: qsTr("152.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 540
                anchors.topMargin: 80
                font.pixelSize: 16
                font.weight: Font.Medium
            }


            Button {
                id: buyButton
                x: 460
                y: 240
                width: 141
                height: 51
                background: Rectangle {
                    id: rectangle_34
                    width: 141
                    height: 51
                    color: "#1c1f31"
                    radius: 20
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element12
                    width: 68
                    height: 20
                    color: "#ffffff"
                    text: qsTr("Buy")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 37
                    anchors.topMargin: 15
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Medium

                }
            }

            TextEdit {
                id: shares
                x: 340
                y: 256
                width: 80
                height: 20
                text: qsTr("")
                font.pixelSize: 12
            }
        }
    }

    Flow {
        id: stockFlow
        y: 271
        anchors.top: tradingmarket.bottom
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
