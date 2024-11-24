import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.15

Item {
    visible: true
    id: root
    width: 1280
    height: 832

    property var monthLabels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    property int mouseX: 0
    property int mouseY: 0
    property string username


    Loader
    {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    TradingDashboardWindow {
        id: tradingdashboard
        imageSource: rootdashboard.pfp
        username: "@" + rootdashboard.usernameRef
        userFullname: rootdashboard.firstName + " " + rootdashboard.lastName;
        anchors.fill: parent

        ChartView {
            id: chartView
            x: 210
            y: 344
            width: 788
            height: 177
            backgroundColor: "transparent"
            legend.visible: false

            LineSeries {
                id: lineSeries
                name: "Monthly Data"

                Component.onCompleted: {
                    append(0, 100000)
                    append(1, 200000)
                    append(2, 150000)
                    append(3, 250000)
                    append(4, 180000)
                    append(5, 220000)
                    append(6, 300000)
                    append(7, 280000)
                    append(8, 120000)
                    append(9, 260000)
                    append(10, 170000)
                    append(11, 310000)
                }

                axisX: categoryAxisX
                axisY: valueAxisY
            }

            CategoryAxis {
                id: categoryAxisX
                min: 0
                max: 11
                gridVisible: false
                Component.onCompleted: {
                    for (var i = 0; i < root.monthLabels.length; i++) {
                        categoryAxisX.append(root.monthLabels[i], i)
                    }
                }
            }

            ValuesAxis {
                id: valueAxisY
                min: 0
                max: 500000
                labelFormat: "$%dK"
            }

            Rectangle {
                id: popup
                visible: false
                color: "black"
                radius: 8
                width: 120
                height: 50
                opacity: 0.85
                border.color: "gray"
                border.width: 1
                z: 2

                Column {
                    anchors.centerIn: parent
                    spacing: 2

                    Text {
                        id: popupText
                        color: "white"
                        font.bold: true
                        font.pixelSize: 14
                        text: "$0.00"
                    }

                    Text {
                        id: popupSubtext
                        color: "lightgray"
                        font.pixelSize: 12
                        text: "Value | Month, Year"
                    }
                }
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent

                onPositionChanged: (position) => {
                    root.mouseX = position.x
                    root.mouseY = position.y

                    // Map the x-position within the MouseArea to data points in the line series
                    let chartX = (root.mouseX / chartView.width) * (lineSeries.count - 1)
                    let index1 = Math.floor(chartX)
                    let index2 = Math.min(index1 + 1, lineSeries.count - 1)

                    let dataPoint1 = lineSeries.at(index1)
                    let dataPoint2 = lineSeries.at(index2)

                    // Interpolating the y-value
                    let interpolatedY = dataPoint1.y + (dataPoint2.y - dataPoint1.y) * (chartX - index1)

                    // Update popup position and content
                    popup.x = root.mouseX - popup.width / 2
                    popup.y = root.mouseY - popup.height - 10
                    popupText.text = "$" + interpolatedY.toLocaleString(Qt.locale("en_US"), 'f', 2)
                    popupSubtext.text = "Value | " + root.monthLabels[Math.round(chartX)] + ", 23"
                    popup.visible = true
                }

                onExited: {
                    popup.visible = false
                }
            }
        }

        backButton.onClicked:
        {
            tradingdashboard.visible = false
            loader.setSource("Dashboard.qml", { "usernameRef": username });
        }

        stockMarketButton.onClicked:
        {
            tradingdashboard.visible = false
            loader.source = "TradingMarket.qml";
        }

    }
}
