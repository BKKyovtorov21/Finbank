import QtQuick
import QtQuick.Controls
import QtCharts
import QtQuick.Layouts

ColumnLayout
{
    id: root
    Layout.fillWidth: true
    Layout.preferredHeight: 150

    property bool isPhoneRef
    property bool screenCheckpoint1Ref

    RowLayout
    {
        Layout.fillHeight: true
        Layout.preferredWidth: parent.width
        ColumnLayout
        {
            Layout.leftMargin: 20
            Text
            {
               text: "Portfolio Value"
               color: "#727272"
               font.pixelSize: 20
            }
            Text
            {
                text: "$475.432,98"
                color: "black"
                font.pixelSize: 25
                font.bold: true
            }
            RowLayout
            {
                Text
                {
                   text: "Your profit is"
                   color: "#727272"
                   font.pixelSize: 20
                }
                Text
                {
                    Layout.leftMargin: 10
                   text: "$81.234,72"
                   color: "#145FF9"
                   font.pixelSize: 20
                }
            }


        }


        ColumnLayout
        {
            Layout.leftMargin: 20
            Text
            {
               text: "Avg. Monthly Grow"
               color: "#727272"
               font.pixelSize: 18
            }
            Text
            {
                text: "~1.34%"
                color: "black"
                font.pixelSize: 25
                font.bold: true
            }
            Text
            {
                text: "~120$"
                color: "#727272"
                font.pixelSize: 20
                font.bold: true
                Layout.preferredWidth: parent.width

            }
        }
        Rectangle
        {
            visible: !root.screenCheckpoint1Ref
            Layout.preferredHeight: parent.height / 2
            Layout.preferredWidth: 3
            color: "grey"
        }
        ColumnLayout
        {
            visible: !root.screenCheckpoint1Ref
            Layout.leftMargin: 20
            Text
            {
               text: "Best Profit Stock"
               color: "#727272"
               font.pixelSize: 20

            }
            RowLayout
            {
                Rectangle
                {
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: 50
                    color: "#D9D9D9"
                    radius: 80
                    Image
                    {
                        anchors.centerIn: parent
                        source: "qrc:/resources/appleIcon.svg"
                        width: 20
                        height: 20
                    }
                }
                ColumnLayout
                {
                    Layout.leftMargin: 30
                    Text
                    {
                        font.pixelSize: 20
                        font.bold: true
                        text: "Apple"
                    }
                    Text
                    {
                        font.pixelSize: 20
                        color: "grey"
                        text: "AAPL"
                    }
                }
            }
        }
    }

    ChartView {
        id: chartView
        Layout.fillWidth: true
        Layout.fillHeight: true
        backgroundColor: "transparent"
        legend.visible: true
        visible: !root.isPhoneRef


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
}
