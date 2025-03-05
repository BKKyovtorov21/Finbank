import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Timeline
import Qt5Compat.GraphicalEffects
import QtCharts

pragma ComponentBehavior: Bound

Item {
    id: root
    width: Screen.width
    height: Screen.height
    visible: true
    property bool isTablet: width <= 950
    property bool isPhone: width <= 600

    property bool screenCheckpoint1: width <= 1200
    property string fullName
    property string pfp: ""
    property string username

    property real openPrice
    property var stackViewRef

    Connections {
            target: stockAPIClient
            function onDataReceived(candles) {
                candleSeries.clear();
                for (var i = 0; i < candles.length; i++) {
                    var candle = Qt.createQmlObject(
                        'import QtCharts 2.15; CandlestickSet {}',
                        candleSeries,
                        "dynamicCandle"
                    );
                    candle.timestamp = i;
                    candle.open = candles[i].open;
                    candle.high = candles[i].high;
                    candle.low = candles[i].low;
                    candle.close = candles[i].close;
                    candleSeries.append(candle);
                }
                xAxis.min = 0;
                xAxis.max = candles.length;
                var minPrice = Math.min(...candles.map(c => c.low));
                var maxPrice = Math.max(...candles.map(c => c.high));
                yAxis.min = minPrice - 1;
                yAxis.max = maxPrice + 1;
            }
        }

    function getStockData(category) {
        console.log("called")
        var data = [];
        if (category === "Recent Searches") {
            data = [
                {symbol: "AAPL", company: "Apple Inc", price: "237.36", change: "+1.43"},
                {symbol: "TSLA", company: "Tesla Inc", price: "279.05", change: "+7.01"},
                {symbol: "NVDA", company: "Nvidia Corp", price: "118.50", change: "+2.51"}
            ];

            console.log("searches")
        } else if (category === "Portfolio") {
            data = [
                {symbol: "SPX INDEX", company: "S&P 500", price: "5777.44", change: "-0.71"},
                {symbol: "BTC", company: "Grayscale Bitcoin", price: "38.76", change: "+0.26"}
            ];
            console.log("portfoli")
        } else if (category === "Favourites") {
            data = [
                {symbol: "XOM", company: "Exxon Mobil", price: "107.83", change: "+1.10"},
                {symbol: "AMZ", company: "Amazon.com Inc", price: "192.90", change: "+2.78"}
            ];
        }
        stockModel.clear();
        for (var i = 0; i < data.length; i++) {
            stockModel.append(data[i]);
        }
    }
    Component.onCompleted: stockAPIClient.fetchCandlestickData("AAPL") // Change ticker here

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
                id: searchField
                Layout.alignment: Qt.AlignVCenter
                Layout.preferredWidth: 500
                Layout.preferredHeight: 50

                placeholderText: qsTr("Enter symbol or Company Name")
                placeholderTextColor: "grey"
                font.pixelSize: 18
                color: "black"

                leftPadding: 30

                background: Rectangle {
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

                Popup {
                    id: searchResults
                    width: parent.width
                    x: searchField.x - searchField.width + 300
                    y: searchField.y + searchField.height
                    height: 200  // Fixed height for scrolling

                    modal: false
                    focus: true

                    background: Rectangle {
                        color: "white"
                        border.color: "grey"
                        border.width: 1
                    }

                    Flickable {
                        anchors.fill: parent
                        contentHeight: stockResultsModel.count * 40  // Adjust content height based on items
                        clip: true  // Prevents overflow outside the popup
                        ScrollBar.vertical: ScrollBar {
                            policy: ScrollBar.AlwaysOn
                        }

                        Column {
                            width: parent.width
                            Repeater {
                                model: stockResultsModel
                                delegate: Item {
                                    width: parent.width
                                    height: 40
                                    Row {
                                        spacing: 10
                                        Image {
                                            source: model.image
                                            width: 24
                                            height: 24
                                        }
                                        Text {
                                            text: model.name
                                            font.pixelSize: 16
                                            padding: 10
                                        }
                                    }
                                    MouseArea {
                                        anchors.fill: parent
                                        onClicked: {
                                            searchField.text = model.name
                                            searchResults.close()
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                ListModel {
                    id: stockResultsModel
                }

                function findStock() {
                    if (searchField.text === "") {
                        clearStockResults();
                        return;
                    }
                    clearStockResults();
                    searchrecipent.searchStock(searchField.text);
                }

                function clearStockResults() {
                    stockResultsModel.clear();
                }

                Connections {
                    target: searchrecipent
                    function onStockFound(name, image) {
                        if (name !== "") {
                            stockResultsModel.append({"name": name, "image": image});
                        }
                    }
                }

                onTextChanged: {
                    if (text.length > 0) {
                        findStock();
                        searchResults.open();
                    } else {
                        searchResults.close();
                    }
                }
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
                        source: "qrc:/resources/pfp.jpg"
                        Layout.preferredWidth: 80
                        Layout.preferredHeight: 80
                    }

                    ColumnLayout {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.alignment: Qt.AlignVCenter
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
                        source: "qrc:/resources/dashboardInactive.svg"

                    }
                    Text
                    {
                        text: "Dashboard"
                        Layout.leftMargin: 10
                        font.pixelSize: 20

                        MouseArea
                        {
                            anchors.fill: parent
                            onClicked:
                            {
                                if (root.stackViewRef) {
                                            root.stackViewRef.replace(Qt.resolvedUrl("TradingDashboard.qml"), {
                                                username: root.username,
                                                fullName: root.fullName,
                                                stackViewRef: root.stackViewRef
                                            });
                                        }
                                else {
                                    console.error("stackViewRef is undefined in SignIn.qml");
                                }
                            }
                        }
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
                    Layout.leftMargin: 10
                    background: RowLayout
                    {


                    Image
                    {
                        source: "qrc:/resources/marketStock.svg"

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
                        source: "qrc:/resources/news.svg"

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
                    Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
                    background: Text
                    {
                        text: "Back To Finbank"
                        font.bold: true
                        font.pixelSize: 15
                    }

                    onClicked: {
                        contentLoader.setSource("Dashboard.qml", {
                                            usernameRef: root.username,
                                            fullName: root .fullName
                                        })
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
                    spacing: 0
                    Rectangle {
                        Layout.fillHeight: true
                        Layout.preferredWidth: 200
                        border.width: 1
                        border.color: "lightgrey"

                        ColumnLayout {
                                anchors.fill: parent

                                // Dropdown menu for Recent Searches
                                ComboBox {
                                    id: searchFilter
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 50
                                    model: ["Recent Searches", "Portfolio", "Favorites", "Screener: All US Stocks"]
                                }

                                // List of stock searches
                                ListView {
                                    id: stockList
                                    Layout.fillWidth: true
                                    Layout.fillHeight: true
                                    model: ListModel {
                                        ListElement { symbol: "AAPL"; company: "APPLE INC"; price: "234.60"; change: "-1.33"; changeColor: "red" }
                                        ListElement { symbol: "SPX INDEX"; company: "S&P 500 Stock Index"; price: "5805.24"; change: "+27.09"; changeColor: "green" }
                                        ListElement { symbol: "MFG"; company: "MIZUHO FINANCIAL"; price: "5.73"; change: "+0.07"; changeColor: "green" }
                                        ListElement { symbol: "7974"; company: "NINTENDO CO LTD"; price: "11115.0"; change: "-60.0"; changeColor: "red" }
                                        ListElement { symbol: "NIN"; company: "NINTENDO CO LTD"; price: "C330"; change: ""; changeColor: "black" }
                                        ListElement { symbol: "TSLA"; company: "TESLA INC"; price: "275.08"; change: "+3.04"; changeColor: "green" }
                                        ListElement { symbol: "LNKD"; company: "LINKEDIN CORP - A"; price: "C195.96"; change: ""; changeColor: "black" }
                                        ListElement { symbol: "BTC"; company: "GRAYSCALE BITCN M"; price: "39.82"; change: "+1.32"; changeColor: "green" }
                                        ListElement { symbol: "AMZ"; company: "AMAZON.COM INC"; price: "192.24"; change: "+2.12"; changeColor: "green" }
                                        ListElement { symbol: "XOM"; company: "EXXON MOBIL CORP"; price: "104.46"; change: "-3.08"; changeColor: "red" }
                                        ListElement { symbol: "SPY5"; company: "SPDR S&P 500 UCITS"; price: "538.58"; change: "-8.36"; changeColor: "red" }
                                        ListElement { symbol: "NVDA"; company: "NVIDIA CORP"; price: "117.63"; change: "+1.64"; changeColor: "green" }
                                    }
                                    delegate: Rectangle {
                                        width: stockList.width
                                        height: 50
                                        color: "white"
                                        border.width: 1
                                        border.color: "lightgrey"

                                        Column {
                                            anchors.fill: parent
                                            anchors.margins: 5
                                            spacing: 2

                                            Text {
                                                text: symbol
                                                font.bold: true
                                            }
                                            Text {
                                                text: company
                                                font.pixelSize: 12
                                                color: "grey"
                                            }
                                            Row {
                                                spacing: 5
                                                Text {
                                                    text: price
                                                }
                                                Text {
                                                    text: change
                                                    color: changeColor
                                                }
                                            }
                                        }
                                    }
                                }
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
                                    source: "qrc:/resources/alarm.svg"
                                }
                                Image
                                {

                                    source: "qrc:/resources/like.svg"
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

                                    MouseArea
                                    {
                                        anchors.fill: parent
                                        onClicked:
                                        {

                                        }
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
                                    MouseArea
                                    {
                                        anchors.fill: parent
                                        onClicked:
                                        {

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
                                                Text { text: "52 Wk Low"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                                Text { text: "138.80"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                            }
                                        }

                                        // Center divider
                                        Rectangle {
                                            Layout.preferredWidth: 1
                                            color: "lightgrey" // Light gray to represent the middle line
                                            Layout.preferredHeight: parent.height

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
                source: "qrc:/resources/logo.png"
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
                source: "qrc:/resources/mingcute--notification-line.svg"
            }
        }
        }

    }

    RowLayout {
            visible: root.isTablet
            anchors.fill: parent
            spacing: 0

           Rectangle
           {
               visible: !root.isPhone
               Layout.fillHeight: true
               Layout.preferredWidth: 80
               color: "white"

               ColumnLayout
               {
                   anchors.fill: parent
                   Layout.alignment: Qt.AlignHCenter

                   Image{


                       source: "qrc:/resources/pfp.jpg"
                       Layout.preferredHeight: 70
                       Layout.preferredWidth: 70
                       Layout.leftMargin: 5
                       Layout.topMargin: 15

                    }


                   Layout.fillHeight: true
                   RowLayout
                   {
                       Layout.topMargin: 30
                        Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/dashboardactive.svg"

                       }
                   }
                   RowLayout
                   {
                        Layout.leftMargin: 20
                       Image
                       {
                           source: "qrc:/resources/portfolio.svg"
                           Layout.preferredWidth: 30
                           Layout.preferredHeight: 30


                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/stock.svg"

                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/deposit.svg"

                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/insight.svg"

                       }
                   }
                   Rectangle
                   {
                       Layout.preferredWidth: 80
                       Layout.preferredHeight: 1
                       color: "#000000"
                       opacity: 0.3
                   }
                       RowLayout
                       {
                       Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/marketStock.svg"

                       }
                       }

                   RowLayout
                   {
                       Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/news.svg"

                       }
                   }
                   Rectangle
                   {
                       Layout.preferredWidth: 80
                       Layout.preferredHeight: 1
                       color: "#000000"
                       opacity: 0.3
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/help.svg"

                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 20

                       Image
                       {
                           source: "qrc:/resources/settings.svg"

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
                           font.pixelSize: 10
                       }
                   }

               }
           }
           ColumnLayout
           {
               Layout.fillHeight: true
               Layout.fillWidth: true
               spacing: 0
               Rectangle
               {
                   visible: !root.isPhone
                   Layout.fillWidth: true
                   Layout.preferredHeight: 100
                   color: "white"
                   RowLayout{

                       anchors.fill: parent
                   Text{
                    text: "Hey, Bobur"
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    font.pixelSize: 17
                    Layout.leftMargin: 5
                   }
                   Rectangle {
                       id: searchRowRect
                        Layout.fillWidth: true
                        Layout.preferredHeight: 50
                        Layout.leftMargin: 20
                        Layout.rightMargin: 20
                       color: "#FDFDFD"
                       border.width: 1
                       border.color: "#F7F7F7"
                       radius: 5

                       TextField {
                           id: textField
                           anchors.fill: parent
                           leftPadding: 50
                           color: "black"  // Sets the text color to black

                           background: Rectangle {
                               color: "transparent"
                           }

                           onTextChanged: {
                               searchRow.visible = text.length === 0 && !activeFocus;  // Hide when typing
                           }

                           onFocusChanged: {
                               searchRow.visible = text.length === 0 && !activeFocus;  // Hide when focused, show when unfocused and empty
                           }
                       }

                       RowLayout {
                           id: searchRow
                           anchors.fill: parent
                           visible: textField.text.length === 0
                           Image {
                               source: "qrc:/resources/search.svg"
                               Layout.preferredWidth: 20
                               Layout.preferredHeight: 20
                               Layout.alignment: Qt.AlignVCenter
                               Layout.leftMargin: 10
                           }

                           Text {
                               Layout.alignment: Qt.AlignVCenter
                               text: "Search"
                               color: "grey"
                           }

                           Item {
                               Layout.fillWidth: true
                           }

                           Rectangle {
                               Layout.alignment: Qt.AlignVCenter
                               Layout.preferredHeight: 35
                               Layout.preferredWidth: 35
                               Layout.rightMargin: 10
                               color: "#F3F3F3"
                               radius: 5

                               RowLayout {
                                   anchors.fill: parent

                                   Image {
                                       Layout.preferredHeight: 15
                                       Layout.preferredWidth: 15
                                       source: "qrc:/resources/command.svg"
                                       Layout.leftMargin: 5
                                   }

                                   Text {
                                       text: "F"
                                       color: "#9D9D9D"
                                       Layout.rightMargin: 15
                                   }
                               }
                           }
                       }
                   }
                   Item{
                   Layout.fillWidth: true
                   }
                   Image{
                    source: "qrc:/resources/menu.svg"
                    Layout.rightMargin: 30
                   }
                   }
               }


               Rectangle
               {
                   color: "#F9F9F9"
                   Layout.fillHeight: true
                   Layout.fillWidth: true
                   ColumnLayout{
                   anchors.fill: parent
                   RowLayout{
                       Layout.fillWidth: true
                       Layout.preferredHeight: 50
                    Text{
                    Layout.leftMargin: 80
                    Layout.topMargin: 20
                    text:"Tesla INC"
                    font.pixelSize: 18
                    }
                    Item{
                    Layout.fillWidth: true
                    }
                    Image{
                        Layout.topMargin: 20
                        source: "qrc:/resources/alarm.svg"
                    }
                    Image{
                        Layout.topMargin: 20
                        Layout.rightMargin: 80
                        source: "qrc:/resources/like.svg"
                    }
                   }
                   Text{
                   text: "TSLA"
                   Layout.leftMargin: 80
                   font.pixelSize: 16
                   Layout.topMargin: -7
                   }
                   Text{
                    Layout.preferredWidth: 100
                    text:"417.20"
                    font.pixelSize: 33
                    color: "darkred"
                    Layout.alignment: Qt.AlignHCenter
                   }
                   RowLayout{
                   Layout.fillWidth: true
                   Layout.alignment: Qt.AlignHCenter
                       Text{
                   text:"-6.40"
                   color: "red"
                   }
                   Text{
                   text: "-1.92%"
                   color: "red"
                   }
                   }

                   Text{
                       Layout.alignment: Qt.AlignHCenter
                   text: "REALTIME PRICE: NON CONSOLIDATED"
                   color: "gray"
                   font.pixelSize: 10
                   }
                   RowLayout {
                       Layout.fillWidth: true
                       Layout.preferredHeight: 50
                       Layout.alignment: Qt.AlignHCenter
                       spacing: 20
                       Layout.margins: 5  // You can change this to 10 for more space on the sides

                       Rectangle {
                           Layout.preferredWidth: 200  // Makes the button take up available width
                           Layout.preferredHeight: 40
                           color: "#1256BF"
                           Text {
                               anchors.centerIn: parent
                               text: 'Buy Order'
                               color: "white"
                           }

                           MouseArea
                           {
                               anchors.fill: parent
                               onClicked:
                               {

                               }
                           }
                       }

                       Rectangle {
                           Layout.preferredWidth: 200  // Makes the button take up available width
                           Layout.preferredHeight: 40
                           color: "#C4313D"
                           Text {
                               anchors.centerIn: parent
                               text: 'Sell Order'
                               color: "white"
                           }
                           MouseArea
                           {
                               anchors.fill: parent
                               onClicked:
                               {

                               }
                           }
                       }
                   }
                   Rectangle
                   {
                       Layout.fillWidth: true
                       Layout.preferredHeight: 150
                       color: "transparent"

                       RowLayout {
                               anchors.fill: parent
                               spacing: 10
                               Item
                               {
                                   Layout.fillWidth: true
                               }

                               // Left column
                               ColumnLayout {
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
                                       Text { text: "52 Wk Low"; font.pixelSize: 14; Layout.alignment: Qt.AlignLeft }
                                       Text { text: "138.80"; font.pixelSize: 14; Layout.alignment: Qt.AlignRight }
                                   }
                               }

                               // Center divider
                               Rectangle {
                                   Layout.preferredWidth: 1
                                   color: "lightgrey" // Light gray to represent the middle line
                                   Layout.preferredHeight: parent.height

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
                               Item
                               {
                                   Layout.fillWidth: true
                               }
                           }

                   }
                   Rectangle
                   {
                       Layout.fillWidth: true
                       Layout.fillHeight: true

                       ChartView {
                           id: chart2
                           anchors.fill: parent
                           antialiasing: true
                           theme: ChartView.ChartThemeQt
                           ValuesAxis {
                               id: xAxis2
                               min: 0
                               max: 100
                               titleText: "Time"
                           }

                           ValuesAxis {
                               id: yAxis2
                               min: 187
                               max: 200
                               titleText: "Price"
                           }

                           CandlestickSeries {
                               id: candleSeries2
                               name: "AAPL Candlesticks"
                               increasingColor: "green"
                               decreasingColor: "red"
                               axisX: xAxis2
                               axisY: yAxis2
                           }

                           MouseArea {
                               id: dragArea2
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
                                   initialMinX = xAxis2.min;
                                   initialMaxX = xAxis2.max;
                                   initialMinY = yAxis2.min;
                                   initialMaxY = yAxis2.max;
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
                                       xAxis2.min = initialMinX - (deltaX / chart.width) * rangeX;
                                       xAxis2.max = initialMaxX - (deltaX / chart.width) * rangeX;
                                       yAxis2.min = initialMinY + (deltaY / chart.height) * rangeY; // Inverted direction
                                       yAxis2.max = initialMaxY + (deltaY / chart.height) * rangeY; // Inverted direction
                                   }
                               }

                               onWheel: function(event) {
                                   let zoomFactor = event.angleDelta.y > 0 ? 0.9 : 1.1;
                                   let midX = (xAxis2.min + xAxis2.max) / 2;
                                   let midY = (yAxis2.min + yAxis2.max) / 2;
                                   let rangeX = (xAxis2.max - xAxis2.min) * zoomFactor;
                                   let rangeY = (yAxis2.max - yAxis2.min) * zoomFactor;
                                   xAxis2.min = midX - rangeX / 2;
                                   xAxis2.max = midX + rangeX / 2;
                                   yAxis2.min = midY - rangeY / 2;
                                   yAxis2.max = midY + rangeY / 2;
                               }
                           }
                       }
                   }
                }

            }

        }
    }

    NavbarMobile
    {
        isPhone: root.isPhone
        usernameRef: root.username
        fullName: root.fullName
    }

}
