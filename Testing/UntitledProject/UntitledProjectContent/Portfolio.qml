import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Timeline
import Qt5Compat.GraphicalEffects
import QtCharts
import Qt.labs.qmlmodels



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
                source: "qrc:/resources/logo1.png"
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


                    source: "qrc:/resources/search.svg"
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
                        source: "qrc:/resources/pfp.jpg"
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
                        source: "qrc:/resources/dashboardactive.svg"

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
                        source: "qrc:/resources/portfolio.svg"
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
                        source: "qrc:/resources/stock.svg"

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
                        source: "qrc:/resources/deposit.svg"

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
                        source: "qrc:/resources/insight.svg"

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
                    background: RowLayout
                    {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "qrc:/resources/marketStock.svg"

                    }
                    Text
                    {
                        text: "Market Stock"
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                    }
                }
                RowLayout
                {
                    Layout.leftMargin: 10

                    Image
                    {
                        source: "qrc:/resources/news.svg"

                    }
                    Text
                    {
                        text: "Market Stock"
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
                        source: "qrc:/resources/help.svg"

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
                        source: "qrc:/resources/settings.svg"

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
                    MouseArea
                                    {
                                        anchors.fill: parent
                                        onClicked:{
                                            if (rootdashboard.stackViewRef) {
                                                        rootdashboard.stackViewRef.push(Qt.resolvedUrl("Transactions.qml"), {
                                                            username: rootdashboard.usernameRef,
                                                            fullName: rootdashboard.fullName,
                                                            stackViewRef: rootdashboard.stackViewRef
                                                        });
                                                    }
                                            else {
                                                console.error("stackViewRef is undefined in SignIn.qml");
                                            }
                                        }
                                    }


                    Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
                    background: Text

                    {
                        text: "Back To Finbank"
                        font.bold: true
                        font.pixelSize: 15
                    }
                }

            }
        }
        Rectangle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            ScrollView {
                anchors.fill: parent
                TableView {
                    anchors.fill: parent
                    id: tableView
                    clip: true  // Ensures content is properly constrained
                    interactive: true
                    rowSpacing: 0
                    columnSpacing: 50

                    columnWidthProvider: function(column) {
                        return tableView.width / 10;  // Ensures proper column sizing
                    }

                    model: TableModel {
                        TableModelColumn { display: "Financial instrument" }
                        TableModelColumn { display: "Company Name" }
                        TableModelColumn { display: "Position" }
                        TableModelColumn { display: "Last" }
                        TableModelColumn { display: "Change" }
                        TableModelColumn { display: "Change%" }
                        TableModelColumn { display: "Trend" }
                        TableModelColumn { display: "Daily P&L" }
                        TableModelColumn { display: "Daily P&L%" }
                        TableModelColumn { display: "Average Price" }

                        rows: [
                            { "Financial instrument": "Financial instrument", "Company Name": "Company Name", "Position": "Position", "Last": "Last", "Change": "Change", "Change%" : "Change%", "Trend" : "Trend", "Daily P&L" : "Daily P&L", "Daily P&L%" : "Daily P&L%", "Average Price" : "Average Price"  },
                            { "Financial instrument": "TSLA", "Company Name": "Tesla", "Position": "0.0695", "Last": "321.03", "Change": "-7.47", "Change%" : "2.27%", "Trend" : "↓", "Daily P&L" : "-1", "Daily P&L%" : "-1.21%", "Average Price" : "435.921"  },
                            { "Financial instrument": "NVDA", "Company Name": "NVIDIA CORP", "Position": "0.1437", "Last": "133.02", "Change": "+0.22", "Change%" : "0.17%", "Trend" : "↑", "Daily P&L" : "0", "Daily P&L%" : "+0.8%", "Average Price" : "140.481"  },
                        ]
                    }
                    selectionModel: ItemSelectionModel {}

                    delegate: Rectangle {
                        width: tableView.width
                        height: 50
                        required property bool selected
                        required property bool current
                        border.width: current ? 2 : 0
                        color: selected ? "lightblue" : "white"
                        clip: true  // Prevents overflow into neighboring cells

                        Text {
                            text: model.display
                            anchors.fill: parent
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.WordWrap  // Allows text to wrap instead of getting truncated
                            maximumLineCount: 2  // Limits to 2 lines
                            elide: Text.ElideRight  // Still truncates if too long
                        }
                    }
                }


            }

                SelectionRectangle {
                    target: tableView
                }

        }
        Rectangle
        {
            Layout.fillWidth: true
            Layout.fillHeight: true

            ChartView {
                id: chart
                anchors.fill: parent
                antialiasing: true
                theme: ChartView.ChartThemeQt
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
    }

}
    ColumnLayout {
        visible: root.isTablet
        anchors.fill: parent

        RowLayout {
            anchors.top: parent.top
            anchors.left: parent.left
            Layout.preferredWidth: parent.width
            Image {
                Layout.topMargin: 30
                Layout.leftMargin: 30
                Layout.preferredWidth: 80
                Layout.preferredHeight: 80
                source: "qrc:/resources/pfp.jpg"
            }
            Text {
                Layout.topMargin: 30
                Layout.leftMargin: 10
                text: "Hey, Boyan"
                font.pixelSize: 17
                font.bold: true
            }

            Item {
                Layout.fillWidth: true
            }
            Image {
                Layout.topMargin: 30
                source: "qrc:/resources/search.svg"
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20
            }

            Image {
                Layout.topMargin: 35
                Layout.rightMargin: 30
                source: "qrc:/resources/more2.svg"
                Layout.leftMargin: 10
                Layout.preferredWidth: 20
                Layout.preferredHeight: 10
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 50
            Text {
                text: "$"
                font.pixelSize: root.isTablet ? 30 : (root.isPhone ? 20 : 30)
            }
            Text {
                text: "1914"
                font.pixelSize: root.isTablet ? 55 :(root.isPhone ? 30 : 50)
                font.bold: true
            }
            Text {
                text: "71"
                font.pixelSize: root.isTablet ? 30 : (root.isPhone ? 20 : 30)
            }
        }

        Item {
            Layout.preferredHeight: 5
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 10
            Text {
                text: "USD"
                font.bold: true
                font.pixelSize: 25
            }
            Text {
                text: "EUR"
                font.pixelSize: 25
            }
            Text {
                text: "BTC"
                font.pixelSize: 25
            }
            Text {
                text: "ETH"
                font.pixelSize: 25
            }
            Image {
                Layout.topMargin: 10
                source: "qrc:/resources/more2.svg"
                Layout.preferredWidth: 20
                Layout.preferredHeight: 10
            }
        }

        Item {
            Layout.preferredHeight: 40
        }

        GridLayout {
            columns: root.width > 860 ? 4 : 2
            columnSpacing: 5
            rowSpacing: 5
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                Layout.preferredHeight: 100
                Layout.preferredWidth: 200
                color: "#292D2E"
                radius: 15
                Text {
                    text: "Add money"
                    color: "white"
                    font.pixelSize: 17
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 13
                }
                Image {
                    source: "qrc:/resources/plus.png"
                    Layout.preferredWidth: 20
                    Layout.preferredHeight: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Rectangle {
                Layout.preferredHeight: 100
                Layout.preferredWidth: root.isTablet ? 200 : 150
                color: "#292D2E"
                radius: 15
                Text {
                    text: "Exchange"
                    color: "white"
                    font.pixelSize: 17
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 13
                }
                Image {
                    source: "qrc:/resources/exchange.png"
                    Layout.preferredWidth: 20
                    Layout.preferredHeight: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Rectangle {
                Layout.preferredHeight: 100
                Layout.preferredWidth: root.isTablet ? 200 : 150
                color: "#292D2E"
                radius: 15
                Text {
                    text: "Details"
                    color: "white"
                    font.pixelSize: 17
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 13
                }
                Image {
                    source: "qrc:/resources/details.png"
                    Layout.preferredWidth: 20
                    Layout.preferredHeight: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Rectangle {
                Layout.preferredHeight: 100
                Layout.preferredWidth: root.isTablet ? 200 : 150
                color: "#292D2E"
                radius: 15
                Text {
                    text: "More"
                    color: "white"
                    font.pixelSize: 17
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 13
                }
                Image {
                    source: "qrc:/resources/more.png"
                    Layout.preferredWidth: 20
                    Layout.preferredHeight: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }

        Item {
            Layout.fillHeight: true
        }
    }

}
