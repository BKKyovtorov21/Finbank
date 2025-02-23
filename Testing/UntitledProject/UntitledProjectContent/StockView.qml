import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Timeline
import Qt5Compat.GraphicalEffects
import QtCharts
Window {
    id: root
    width: Screen.width
    height: Screen.height
    minimumWidth: 400
    visible: true
    property bool isTablet: width <= 950
    property bool isPhone: width <= 600

    property bool screenCheckpoint1: width <= 1200
    property string fullName
    property string pfp: ""

    Connections {
        target: stockAPIClient

        onLineSeriesDataReady: function(points) {
            // Update the candlestick series
            candlestickSeries.clear();
            for (var i = 0; i < points.length; i++) {
                var point = points[i];
                candlestickSeries.append(point.x, point.open, point.high, point.low, point.close);
            }
        }

        onStockDataFetched: function(data) {
            console.log("Stock data fetched: ", data);
        }

        onErrorOccurred: function(error) {
            console.error("Error: ", error);
        }
    }

    ColumnLayout
    {
        visible: !root.isTablet
        //visible: false

        anchors.fill: parent

        RowLayout
        {
            Layout.fillWidth: true
            Layout.topMargin: 10
            Image {
                id: logo
                source: "resources/logo1.png"
            }

            Text
            {
                text: "Finbank"
                font.pixelSize: 25
                font.bold: true
            }
            Text
            {
                text: "Trade"
                font.pixelSize: 25
            }

            TextField {
                Layout.leftMargin: 50
                background: Rectangle
                {
                    color: "#4dececec"
                }

                Image {
                    id: searchIcon
                    fillMode: Image.PreserveAspectFit


                    source: "resources/search.svg"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                }
                id: searchField

                Layout.alignment: Qt.AlignVCenter
                Layout.fillWidth: true

                placeholderText: qsTr("Search")
                placeholderTextColor: "grey"
                font.pixelSize: 18
                color: "black"

                leftPadding: 30 // Adds space around the text, adjusting the padding as needed
            }
            Item
            {
                Layout.fillWidth: true
            }

            Rectangle {
                Layout.preferredWidth: 300
                Layout.preferredHeight: 100

                RowLayout {
                    anchors.fill: parent

                    Image {
                        id: pfp
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.verticalCenterOffset: -5
                        source: "resources/pfp.jpg"
                        Layout.preferredWidth: 80
                        Layout.preferredHeight: 80
                    }

                    ColumnLayout {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.alignment: Qt.AlignVCenter // Ensure vertical centering in RowLayout
                        Layout.rightMargin: 60
                        Layout.bottomMargin: 15
                        Text {
                            text: "Boyan Kiovtorov"
                            Layout.alignment: Qt.AlignLeft
                            font.pixelSize: 15
                        }

                        Text {
                            Layout.topMargin: 5
                            text: "@kyovtorov"
                            Layout.alignment: Qt.AlignLeft
                            color: "gray"
                            font.pixelSize: 15
                        }
                    }
                }
            }
        }
        Rectangle
        {
            Layout.fillWidth: true
            Layout.preferredHeight: 1
            color: "grey"
        }
        RowLayout
        {
            Layout.fillWidth: true
            Layout.fillHeight: true
            RowLayout
            {
            ColumnLayout
            {
                Layout.preferredWidth: 150
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: 30
                spacing: 30
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/dashboardactive.svg"

                    }
                    Text
                    {
                        text: "Dashboard"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/portfolio.svg"
                        Layout.preferredWidth: 30
                        Layout.preferredHeight: 30
                    }
                    Text
                    {
                        text: "Portfolio"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/stock.svg"

                    }
                    Text
                    {
                        text: "My Stock"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/deposit.svg"

                    }
                    Text
                    {
                        text: "Deposit"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/insight.svg"

                    }
                    Text
                    {
                        text: "Insight"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                Rectangle
                {
                    Layout.preferredWidth: 150
                    Layout.preferredHeight: 1
                    Layout.leftMargin: 10
                    color: "#000000"
                    opacity: 0.3
                }
                Button
                {
                    Layout.leftMargin: 10

                    background:RowLayout
                    {

                        Image
                        {
                            source: "resources/marketStock.svg"

                        }
                        Text
                        {
                            text: "Market Stock"
                            Layout.leftMargin: 10
                            font.pixelSize: 20
                        }
                    }
                    onClicked:
                    {
                        console.log("stock")
                    }
                }


                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/news.svg"

                    }
                    Text
                    {
                        text: "News Update"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                Rectangle
                {
                    Layout.preferredWidth: 150
                    Layout.preferredHeight: 1
                    Layout.leftMargin: 10
                    color: "#000000"
                    opacity: 0.3
                }
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/help.svg"

                    }
                    Text
                    {
                        text: "Help Center"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "resources/settings.svg"

                    }
                    Text
                    {
                        text: "Settings"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                }
                Button
                {
                    onClicked:stockAPIClient.fetchStockData(tickerInput.text.trim());
                }

            }
            Rectangle
            {
                Layout.fillWidth: true
                Layout.fillHeight: true

                ChartView {
                            anchors.fill: parent
                            antialiasing: true

                            CandlestickSeries {
                                id: candlestickSeries
                                name: "Stock Data"
                                axisX: dateAxis
                                axisY: valueAxis
                                increasingColor: "green"
                                decreasingColor: "red"
                            }

                            DateTimeAxis {
                                id: dateAxis
                                format: "MMM yyyy"
                                titleText: "Date"
                                tickCount: 10
                            }

                            ValuesAxis {
                                id: valueAxis
                                titleText: "Price"
                            }
                        }
            }
            }
        }
    }
}
