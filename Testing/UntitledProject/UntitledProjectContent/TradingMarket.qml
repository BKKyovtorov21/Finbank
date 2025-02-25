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
                Layout.preferredWidth: 500
                Layout.preferredHeight: 50

                placeholderText: qsTr("Enter symbol or Company Name")
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
                        source: "resources/dashboardInactive.svg"

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
                    background: RowLayout
                    {


                    Image
                    {
                        source: "resources/marketStock.svg"

                    }
                    Text
                    {
                        text: "Market Stock"
                        Layout.leftMargin: 10
                        font.bold: true

                        font.pixelSize: 20
                    }
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
                        text: "News"
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
                Item
                {
                    Layout.fillHeight: true
                }

                Button
                {
                    Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
                    background: Text
                    {
                        text: "Back To Finbank"
                        font.bold: true
                        font.pixelSize: 15
                    }
                }

            }
            Rectangle
            {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: '#F9F9F9'

                RowLayout
                {
                    anchors.fill: parent
                    Rectangle
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        ChartView {
                            id: chart
                            anchors.fill: parent
                            antialiasing: true
                            backgroundColor: "black"
                            ValuesAxis {
                                id: xAxis
                                min: 0
                                max: 100
                                titleText: "Time"
                            }

                            ValuesAxis {
                                id: yAxis
                                min: 187
                                max: 200
                                titleText: "Price"
                            }

                            CandlestickSeries {
                                id: candleSeries
                                name: "AAPL Candlesticks"
                                increasingColor: "green"
                                decreasingColor: "red"
                                axisX: xAxis
                                axisY: yAxis
                            }

                            MouseArea {
                                id: dragArea
                                anchors.fill: parent
                                acceptedButtons: Qt.LeftButton | Qt.RightButton
                                property bool isDragging: false
                                property real initialX: 0
                                property real initialY: 0
                                property real initialMinX: 0
                                property real initialMaxX: 100
                                property real initialMinY: 187
                                property real initialMaxY: 200

                                onPressed: function(event) {
                                    isDragging = true;
                                    initialX = event.x;
                                    initialY = event.y;
                                    initialMinX = xAxis.min;
                                    initialMaxX = xAxis.max;
                                    initialMinY = yAxis.min;
                                    initialMaxY = yAxis.max;
                                }

                                onReleased: function() {
                                    isDragging = false;
                                }

                                onPositionChanged: function(event) {
                                    if (isDragging) {
                                        let deltaX = event.x - initialX;
                                        let deltaY = event.y - initialY;
                                        let rangeX = initialMaxX - initialMinX;
                                        let rangeY = initialMaxY - initialMinY;
                                        xAxis.min = initialMinX - (deltaX / chart.width) * rangeX;
                                        xAxis.max = initialMaxX - (deltaX / chart.width) * rangeX;
                                        yAxis.min = initialMinY + (deltaY / chart.height) * rangeY; // Inverted direction
                                        yAxis.max = initialMaxY + (deltaY / chart.height) * rangeY; // Inverted direction
                                    }
                                }

                                onWheel: function(event) {
                                    let zoomFactor = event.angleDelta.y > 0 ? 0.9 : 1.1;
                                    let midX = (xAxis.min + xAxis.max) / 2;
                                    let midY = (yAxis.min + yAxis.max) / 2;
                                    let rangeX = (xAxis.max - xAxis.min) * zoomFactor;
                                    let rangeY = (yAxis.max - yAxis.min) * zoomFactor;
                                    xAxis.min = midX - rangeX / 2;
                                    xAxis.max = midX + rangeX / 2;
                                    yAxis.min = midY - rangeY / 2;
                                    yAxis.max = midY + rangeY / 2;
                                }
                            }
                        }
                    }

                    Rectangle
                    {

                        Layout.fillHeight: true
                        Layout.preferredWidth: 320

                        ColumnLayout
                        {
                            anchors.fill: parent

                            Text
                            {
                                text: "TESLA INC"
                                Layout.topMargin: 10
                                Layout.leftMargin: 20
                                font.pixelSize: 20
                                color: "grey"
                            }

                            RowLayout
                            {
                                Text
                                {
                                    text: "TSLA"
                                    Layout.topMargin: 10
                                    Layout.leftMargin: 20
                                    font.pixelSize: 20
                                    color: "black"
                                }
                                Item
                                {
                                    Layout.fillWidth: true
                                }

                                Image
                                {
                                    source: "resources/alarm.svg"
                                }
                                Image
                                {

                                    source: "resources/like.svg"
                                }
                                Item
                                {
                                    Layout.leftMargin: 10
                                }
                            }
                            Text
                            {
                                font.pixelSize: 33
                                Layout.topMargin: 10

                                Layout.preferredWidth: parent.width
                                horizontalAlignment: Qt.AlignHCenter
                                text: "322.20"
                                color: "#C4313D"
                            }
                            RowLayout
                            {
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignHCenter

                                Text
                                {
                                    font.pixelSize: 15
                                    Layout.topMargin: 10

                                    text: "-6.30"
                                    color: "#C4313D"
                                }
                                Text
                                {
                                    font.pixelSize: 15
                                    Layout.topMargin: 10

                                    text: "-1.92%"
                                    color: "#C4313D"
                                }
                            }
                            Text
                            {
                                font.pixelSize: 10
                                Layout.topMargin: 10
                                leftPadding: 20
                                Layout.preferredWidth: parent.width
                                text: "REALTIME PRICE: NON CONSOLIDATED"
                                color: "grey"
                            }

                            RowLayout {
                                Layout.fillWidth: true
                                Layout.preferredHeight: 50
                                Layout.alignment: Qt.AlignHCenter
                                spacing: 20
                                Layout.margins: 5  // You can change this to 10 for more space on the sides

                                Rectangle {
                                    Layout.fillWidth: true  // Makes the button take up available width
                                    Layout.preferredHeight: 40
                                    color: "#1256BF"
                                    Text {
                                        anchors.centerIn: parent
                                        text: 'Buy Order'
                                        color: "white"
                                    }
                                }

                                Rectangle {
                                    Layout.fillWidth: true  // Makes the button take up available width
                                    Layout.preferredHeight: 40
                                    color: "#C4313D"
                                    Text {
                                        anchors.centerIn: parent
                                        text: 'Sell Order'
                                        color: "white"
                                    }
                                }
                            }
                            Rectangle
                            {
                                Layout.preferredWidth: parent.width

                                Layout.preferredHeight: 1
                                color: "lightgrey"
                            }

                            Rectangle
                            {
                                Layout.fillWidth: true
                                Layout.preferredHeight: 150

                                RowLayout {
                                        anchors.fill: parent
                                        spacing: 10

                                        // Left column
                                        ColumnLayout {
                                            Layout.fillWidth: true
                                            Layout.preferredWidth: 180


                                            RowLayout {
                                                Layout.preferredWidth: 150
                                                Text { text: "Open"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                Text { text: "1.09M"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                            }
                                            RowLayout {
                                                Layout.preferredWidth: 150
                                                Text { text: "Prior Close"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                Text { text: "328.50"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                            }
                                            RowLayout {
                                                Layout.preferredWidth: 150
                                                Text { text: "High"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                Text { text: "327.31"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                            }
                                            RowLayout {
                                                Layout.preferredWidth: 150
                                                Text { text: "Low"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                Text { text: "320.07"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                            }
                                            RowLayout {
                                                Layout.preferredWidth: 150
                                                Text { text: "52 Wk High"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                Text { text: "488.54"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                            }
                                            RowLayout {
                                                Layout.preferredWidth: 150
                                                Text { text: "52 Wk Lw"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                Text { text: "138.80"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                            }
                                        }

                                        // Center divider
                                        Rectangle {
                                            width: 1
                                            color: "lightgrey" // Light gray to represent the middle line
                                            Layout.preferredHeight: parent.height + 10
                                            anchors.bottom: parent.bottom
                                            anchors.bottomMargin: -5
                                        }

                                        // Right column
                                        ColumnLayout {
                                            Layout.fillWidth: true
                                            Layout.preferredWidth: 180

                                            RowLayout {
                                                            Layout.preferredWidth: 200
                                                            Text { text: "Volume"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                            Text { text: "1.09M"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                                        }
                                                        RowLayout {
                                                            Layout.preferredWidth: 200
                                                            Text { text: "Average Volume"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                            Text { text: "82.8M"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                                        }
                                                        RowLayout {

                                                            Layout.preferredWidth: 200
                                                            Text { text: "Hist Vol Cls"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                            Text { text: "59.593%"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                                        }
                                                        RowLayout {
                                                            Layout.preferredWidth: 200
                                                            Text { text: "Opt. IV%"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                            Text { text: "55.9%"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                                        }
                                                        RowLayout {
                                                            Layout.preferredWidth: 200
                                                            Text { text: "Open Int"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                            Text { text: "6.72M"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                                        }
                                                        RowLayout {
                                                            Layout.preferredWidth: 200
                                                            Text { text: "Put/Call Vol"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                            Text { text: "0.77"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                                        }
                                        }
                                    }

                            }

                            Rectangle
                            {
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: 1
                                color: "lightgrey"
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
        ColumnLayout{
        visible: root.isPhone
        anchors.fill: parent
        RowLayout{
            Layout.preferredWidth: parent.width
            Image {
                source: "resources/logo.png"
                Layout.preferredHeight: 60
                Layout.preferredWidth: 60
            }
            ColumnLayout
            {
                Text{
                text: "Hi, Boyan"
                font.pixelSize: 30
                }
                Text{
                    text:"Welcome back!"
                    font.pixelSize: 20
                    color: "#C6C6C6"
                }
            }

            Item
            {
                Layout.fillWidth: true
            }
            Image{
                Layout.alignment: Qt.AlignRight
                id: notification
                Layout.preferredHeight: 30
                Layout.preferredWidth: 30
                source: "resources/mingcute--notification-line.svg"
            }
        }
        }

    }


}

