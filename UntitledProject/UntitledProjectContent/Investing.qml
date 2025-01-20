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
    property bool isTablet: width <= 900
    property bool isPhone: width <= 600
    property string fullName
    property string pfp: ""

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
                RowLayout
                {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Image
                    {
                        source: "resources/marketStock.svg"
                    }
                    Text
                    {
                        text: "Dashboard"
                    }
                }
                RowLayout
                {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Image
                    {
                        source: "resources/marketStock.svg"
                    }
                    Text
                    {
                        text: "Dashboard"
                    }
                }
                RowLayout
                {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Image
                    {
                        source: "resources/marketStock.svg"
                    }
                    Text
                    {
                        text: "Dashboard"
                    }
                }
            }
            Rectangle
            {
                Layout.fillWidth: true
                Layout.fillHeight: true

                ColumnLayout
                {
                    anchors.fill: parent

                    Text
                    {
                        text: "Dashboard"
                        font.pixelSize: 20
                        font.bold: true
                        Layout.alignment: Qt.AlignTop
                        Layout.leftMargin: 20
                        Layout.topMargin: 20
                    }
                    Text
                    {
                        text: "Overview of notes regarding your investment"
                        font.pixelSize: 15

                        Layout.alignment: Qt.AlignTop
                        Layout.leftMargin: 20
                        Layout.topMargin: 20
                    }

                    Rectangle
                    {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 400
                        color: "transparent"

                        RowLayout
                        {
                            anchors.fill: parent

                            Rectangle
                            {

                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rightMargin: 50
                                Layout.leftMargin: 20
                                color: "transparent"
                                radius: 20
                                border.width: 2
                                border.color: "#F2F2F2"

                                ColumnLayout
                                {
                                    anchors.fill: parent

                                    Rectangle
                                    {
                                        Layout.fillWidth: true
                                        Layout.preferredHeight: 150
                                        color: "transparent"
                                        RowLayout
                                        {
                                            anchors.fill: parent
                                            ColumnLayout
                                            {
                                                Layout.leftMargin: 20
                                                Text
                                                {
                                                   text: "Portfolio Value"
                                                   color: "#727272"
                                                   font.pixelSize: 25
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
                                                   font.pixelSize: 25
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
                                                Layout.preferredHeight: parent.height / 2
                                                Layout.preferredWidth: 5
                                                color: "grey"
                                            }
                                            ColumnLayout
                                            {
                                                Layout.leftMargin: 20
                                                Text
                                                {
                                                   text: "Best Profit Stock"
                                                   color: "#727272"
                                                   font.pixelSize: 25
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
                                                            source: "resources/appleIcon.svg"
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
                                    }
                                    Rectangle {
                                                Layout.fillHeight: true
                                                Layout.fillWidth: true
                                                color: "transparent"
                                                ChartView {
                                                    id: chartView
                                                    anchors.fill: parent
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
                                            }
                                }
                            }


                            Rectangle
                            {
                                Layout.preferredWidth: 300
                                Layout.fillHeight: true
                                color: "white"
                                border.width: 2
                                border.color: "#F2F2F2"
                                radius: 20
                                ColumnLayout
                                {
                                    anchors.fill: parent
                                    spacing: 10
                                    RowLayout
                                    {
                                        Layout.alignment: Qt.AlignTop
                                        Layout.topMargin: 10
                                        Layout.leftMargin: 10
                                        Text
                                        {
                                            text: "Watchlist"
                                            color: "black"
                                            Layout.fillWidth: true
                                            font.bold: true
                                            font.pixelSize: 18
                                            Layout.leftMargin: 10
                                        }
                                        Text
                                        {
                                            text: "Add New"
                                            font.pixelSize: 15
                                        }
                                    }

                                    RowLayout
                                    {
                                        Layout.leftMargin: 20
                                        Layout.topMargin: 10
                                        Rectangle
                                        {
                                            color: "#D9D9D9"
                                            Layout.preferredHeight: 30
                                            Layout.preferredWidth: 30
                                            radius: 30
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "resources/appleIcon.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Apple"
                                            }
                                            Text
                                            {
                                                text: "Apple Inc"
                                            }
                                        }
                                        Item
                                        {
                                            Layout.fillWidth: true
                                        }

                                        ColumnLayout
                                        {

                                            Text
                                            {
                                                text: "$193.6"
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "resources/incomeArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "0.76%"
                                                    color: "#04CB2E"
                                                }
                                            }
                                        }
                                    }
                                    RowLayout
                                    {
                                        Layout.leftMargin: 20
                                        Layout.topMargin: 10
                                        Rectangle
                                        {
                                            color: "#D9D9D9"
                                            Layout.preferredHeight: 30
                                            Layout.preferredWidth: 30
                                            radius: 30
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "resources/twitter.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Twitter"
                                            }
                                            Text
                                            {
                                                text: "Twitter Inc"
                                            }
                                        }
                                        Item
                                        {
                                            Layout.fillWidth: true
                                        }

                                        ColumnLayout
                                        {

                                            Text
                                            {
                                                text: "$193.6"
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "resources/expenseArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "0.76%"
                                                    color: "#FE1019"
                                                }
                                            }
                                        }
                                    }
                                    RowLayout
                                    {
                                        Layout.leftMargin: 20
                                        Layout.topMargin: 10
                                        Rectangle
                                        {
                                            color: "#D9D9D9"
                                            Layout.preferredHeight: 30
                                            Layout.preferredWidth: 30
                                            radius: 30
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "resources/bmw.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Bmw"
                                            }
                                            Text
                                            {
                                                text: "Bayerische Motoren Werke AG"
                                            }
                                        }
                                        Item
                                        {
                                            Layout.fillWidth: true
                                        }

                                        ColumnLayout
                                        {

                                            Text
                                            {
                                                text: "$193.6"
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "resources/incomeArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "0.76%"
                                                    color: "#04CB2E"
                                                }
                                            }
                                        }
                                    }
                                    RowLayout
                                    {
                                        Layout.leftMargin: 20
                                        Layout.topMargin: 10
                                        Rectangle
                                        {
                                            color: "#D9D9D9"
                                            Layout.preferredHeight: 30
                                            Layout.preferredWidth: 30
                                            radius: 30
                                            Image
                                            {
                                                anchors.centerIn: parent

                                                source: "resources/adidas2.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Adidas"
                                            }
                                            Text
                                            {
                                                text: "Adidas Inc"
                                            }
                                        }
                                        Item
                                        {
                                            Layout.fillWidth: true
                                        }

                                        ColumnLayout
                                        {

                                            Text
                                            {
                                                text: "$193.6"
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "resources/incomeArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "0.76%"
                                                    color: "#04CB2E"
                                                }
                                            }
                                        }
                                    }
                                    Item
                                    {
                                        Layout.fillHeight: true
                                    }
                                }
                            }
                        }
                    }

                    Item
                    {
                        Layout.fillHeight: true
                    }
                }
            }
            }
        }
    }
}
