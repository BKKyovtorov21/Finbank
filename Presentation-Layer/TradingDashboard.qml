import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCharts
Item {
    id: root
    width: Screen.width
    height: Screen.height
    property bool isTablet: width <= 950
    property bool isPhone: width <= 600
    property bool test: width <= 1300
    property bool test2: width <= 1100
    property bool isSmallPhone: width <= 500
    property string username
    property bool screenCheckpoint1: width <= 1200
    property string firstName
    property string lastName
    property var pfp
    property var stackViewRef
    property string language: "EN"
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
                text: root.language == "EN" ? qsTr("Invest") : qsTr("Инвестирай")
                font.pixelSize: 25
            }
            Item
            {
                Layout.fillWidth: true
            }

            Rectangle {
                id: searchRowRect
Layout.preferredWidth: root.test2 ? 250 : (root.test ? 300 : 550)
Layout.preferredHeight: 50
                color: "#FDFDFD"
                border.width: 1
                border.color: "#F7F7F7"
                radius: 5

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
                        text: root.language == "EN" ? qsTr("Search") : qsTr("Търси")
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
            }
            Item
            {
                Layout.fillWidth: true
            }
            Rectangle
            {
                Layout.preferredWidth: 80
                Layout.preferredHeight: 50
                radius: 5
                color: "#fafafa"

                RowLayout
                {
                    anchors.fill: parent

                    Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                 Image {
                     source: "qrc:/resources/language.svg"
                 }
                 Text {
                     text: root.language
                     font.pixelSize: 15
                     Layout.alignment: Qt.AlignVCenter
                 }
                }


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        root.language = (root.language === "EN") ? "BG" : "EN";
                    }
                }
            }
            Rectangle {
                Layout.preferredWidth: 300
                Layout.preferredHeight: 100

                RowLayout {
                    anchors.fill: parent

                    Image {
                        id: pfp

                        source: root.pfp
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

                            Layout.alignment: Qt.AlignLeft
                            font.pixelSize: 15
                        }

                        Text {
                            Layout.topMargin: 5
                            text: "@" + root.username
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
                        text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Начална страница")
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
                        text: root.language == "EN" ? qsTr("Portfolio") : qsTr("Портфолио")
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
                        text: root.language == "EN" ? qsTr("My stock") : qsTr("Моите акции")
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
                        text: root.language == "EN" ? qsTr("Deposit") : qsTr("Депозит")
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
                        text: root.language == "EN" ? qsTr("Insight") : qsTr("Анализ")
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
                        text: root.language == "EN" ? qsTr("Market Stock") : qsTr("Пазарни акции")
                        Layout.leftMargin: 10
                        font.pixelSize: 20
                    }
                    }

                    onClicked: {
                        contentLoader.setSource("TradingMarket.qml", {
                                            username: root.username,
                                            fullName: root .fullName
                                        })
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
                        text: root.language == "EN" ? qsTr("News") : qsTr("Новини")
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
                        text: root.language == "EN" ? qsTr("Help Center") : qsTr("Помощен център")
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
                        text: root.language == "EN" ? qsTr("Settings") : qsTr("Настройки")
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
                        text: root.language == "EN" ? qsTr("Back to Finbank") : qsTr("Обратно към Finbank")
                        font.bold: true
                        font.pixelSize: 20
                    }
                    onClicked: {
                        contentLoader.setSource("Dashboard.qml", {
                                            username: root.username,
                                            fullName: root .fullName
                                        })
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

                    RowLayout
                    {
                        Layout.preferredWidth: parent.width
                        Layout.topMargin: 15
                        Text
                        {
                            text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Начална страница")
                            font.pixelSize: 20
                            font.bold: true
                            Layout.alignment: Qt.AlignTop
                            Layout.leftMargin: 20
                            Layout.topMargin: 20
                        }
                        Item
                        {
                            Layout.fillWidth: true
                        }

                        Rectangle
                        {
                            Layout.preferredWidth: 150
                            Layout.preferredHeight:40
                            color: "transparent"
                            border.width: 1
                            border.color: '#D2D2D2'
                            radius: 10

                            Text
                            {
                                anchors.centerIn: parent
                                text: root.language == "EN" ? qsTr("Deposit") : qsTr("Депозирай")
                                font.pixelSize: 17
                            }
                        }
                        Item
                        {
                            Layout.preferredWidth: 10
                        }

                        Rectangle
                        {
                            Layout.preferredWidth: 150
                            Layout.preferredHeight:40
                            color: "#181818"
                            radius: 10
                            Text
                            {
                                anchors.centerIn: parent
                                text:root.language == "EN" ? qsTr("Withdraw") : qsTr("Изтегли")
                                font.pixelSize: 17
                                color: "white"
                            }

                        }

                    }
                    Text
                    {
                        text: root.language == "EN" ? qsTr("Overview of notes regarding your investment") : qsTr("Преглед на инвестициите ти")
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

                            PortfolioValue
                            {
                                Layout.fillHeight: true
                                Layout.fillWidth: true

                                isPhoneRef: root.isPhone
                                screenCheckpoint1Ref: root.screenCheckpoint1

                            }

                            Rectangle
                            {
                                Layout.preferredWidth: 300
                                Layout.fillHeight: true
                                color: "white"
                                border.width: 2
                                border.color: "#F2F2F2"
                                radius: 20
                                Layout.rightMargin: 15
                                Layout.leftMargin: -10
                                ColumnLayout
                                {
                                    anchors.fill: parent
                                    spacing: 15
                                    RowLayout
                                    {
                                        Layout.alignment: Qt.AlignTop
                                        Layout.topMargin: 10
                                        Layout.leftMargin: 10
                                        Text
                                        {
                                            text: root.language == "EN" ? qsTr("Watchlist") : qsTr("Наблюдавани")
                                            color: "black"
                                            Layout.fillWidth: true
                                            font.bold: true
                                            font.pixelSize: 18
                                            Layout.leftMargin: 10
                                        }
                                        Text
                                        {
                                            text: root.language == "EN" ? qsTr("Add new") : qsTr("Добави нова")
                                            font.pixelSize: 15
                                            Layout.rightMargin: 10
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
                                                source: "qrc:/resources/appleIcon.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Apple"
                                                font.pixelSize: 15
                                            }
                                            Text
                                            {
                                                text: "Apple Inc"
                                                font.pixelSize: 15
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
                                                font.pixelSize: 15
                                                Layout.rightMargin: 10
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "qrc:/resources/incomeArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "0.76%"
                                                    color: "#04CB2E"
                                                    font.pixelSize: 15
                                                    Layout.rightMargin: 10
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
                                                source: "qrc:/resources/twitter.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Twitter"
                                                font.pixelSize: 15
                                            }
                                            Text
                                            {
                                                text: "Twitter Inc"
                                                font.pixelSize: 15
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
                                                text: "$53.40"
                                                font.pixelSize: 15
                                                Layout.rightMargin: 10
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "qrc:/resources/ExpenseArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "0.66%"
                                                    color: "#FE1019"
                                                    font.pixelSize: 15
                                                    Layout.rightMargin: 10
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
                                                source: "qrc:/resources/bmw.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "BMW"
                                                font.pixelSize: 15
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
                                            Layout.rightMargin: 10

                                            Text
                                            {
                                                text: "$86,98"
                                                font.pixelSize: 15
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "qrc:/resources/incomeArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "4.34%"
                                                    color: "#04CB2E"
                                                    font.pixelSize: 15
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

                                                source: "qrc:/resources/adidas2.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Adidas"
                                                font.pixelSize: 15
                                            }
                                            Text
                                            {
                                                text: "Adidas Inc"
                                                font.pixelSize: 15
                                            }
                                        }
                                        Item
                                        {
                                            Layout.fillWidth: true
                                        }

                                        ColumnLayout
                                        {
                                            Layout.rightMargin: 10
                                            Text
                                            {
                                                text: "$241.20"
                                                font.pixelSize: 15
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "qrc:/resources/incomeArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "1.34%"
                                                    color: "#04CB2E"
                                                    font.pixelSize: 15
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

                                                source: "qrc:/resources/tesla.svg"
                                            }
                                        }
                                        ColumnLayout
                                        {
                                            Text
                                            {
                                                text: "Tesla"
                                                font.pixelSize: 15
                                            }
                                            Text
                                            {
                                                text: "Tesla Inc"
                                                font.pixelSize: 15
                                            }
                                        }
                                        Item
                                        {
                                            Layout.fillWidth: true
                                        }

                                        ColumnLayout
                                        {
                                            Layout.rightMargin: 10
                                            Text
                                            {
                                                text: "$263.45"
                                                font.pixelSize: 15
                                            }
                                            RowLayout
                                            {
                                                Image
                                                {
                                                    source: "qrc:/resources/incomeArrow.svg"
                                                }
                                                Text
                                                {
                                                    text: "5.61%"
                                                    color: "#FE1019"
                                                    font.pixelSize: 15
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

                    Rectangle
                    {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.margins: 5
                        border.width: 2
                        border.color: "#F2F2F2"
                        radius: 20

                        ColumnLayout
                        {
                            anchors.fill: parent

                            RowLayout
                            {
                                Text
                                {
                                    text: "My Stock"
                                    font.pixelSize: 30
                                    font.bold: true
                                    Layout.leftMargin: 20
                                    Layout.topMargin: 20
                                }
                            }
                            Rectangle
                            {
                                Layout.fillWidth: true
                                Layout.preferredHeight: 50
                                Layout.leftMargin: 1
                                Layout.rightMargin: 1
                                color: "#F9F9F9"


                                RowLayout
                                {
                                    anchors.fill: parent
                                    anchors.leftMargin: 10

                                    Text
                                    {
                                        text: root.language == "EN" ? qsTr("Name Stock") : qsTr("Име на акция")
                                        color: "#797979"
                                        Layout.alignment: Qt.AlignVCenter
                                        Layout.leftMargin: 15
                                    }
                                    Text
                                    {
                                        text: root.language == "EN" ? qsTr("Invest Date") : qsTr("Инвестиран от")
                                        color: "#797979"
                                        Layout.alignment: Qt.AlignVCenter
                                    }
                                    Text
                                    {
                                        text: root.language == "EN" ? qsTr("Volume") : qsTr("Обем")
                                        color: "#797979"
                                        Layout.alignment: Qt.AlignVCenter
                                    }
                                    Text
                                    {
                                        text: root.language == "EN" ? qsTr("Change") : qsTr("Разлика")
                                        color: "#797979"
                                        Layout.alignment: Qt.AlignVCenter
                                    }
                                    Text
                                    {
                                        text: root.language == "EN" ? qsTr("Price/Stock") : qsTr("Цена/Акция")
                                        color: "#797979"
                                        Layout.alignment: Qt.AlignVCenter
                                    }
                                    Text
                                    {
                                        text: root.language == "EN" ? qsTr("Number of lots") : qsTr("Брой лотарии")
                                        color: "#797979"
                                        Layout.alignment: Qt.AlignVCenter
                                    }

                                }
                            }

                            Rectangle
                            {
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Layout.margins: 10

                                ColumnLayout
                                {
                                    anchors.fill: parent



                                    ColumnLayout {
                                        Layout.preferredHeight: parent.height
                                        Layout.preferredWidth: parent.width
                                        spacing: 10

                                        // Data Rows
                                        TableRow{
                                            name: "Apple Inc"
                                            stockSymbol: "AAPL"
                                            investDate: "January 23, 2024"
                                            volume: "1.75B"
                                            change: "+1.3%"
                                            pricePerStock: "$145.67"
                                            numberOfLots: "420"
                                            iconSource: "qrc:/resources/appleIcon.svg"
                                        }

                                        TableRow {
                                            name: "Tesla Inc"
                                            stockSymbol: "TSLA"
                                            investDate: "February 14, 2024"
                                            volume: "2.01B"
                                            change: "-0.8%"
                                            pricePerStock: "$198.23"
                                            numberOfLots: "350"
                                            iconSource: "qrc:/resources/tesla.svg"
                                        }

                                        TableRow {
                                            name: "Adidas"
                                            stockSymbol: "ADS"
                                            investDate: "March 5, 2024"
                                            volume: "1.12B"
                                            change: "+2.9%"
                                            pricePerStock: "$89.45"
                                            numberOfLots: "250"
                                            iconSource: "qrc:/resources/adidas2.svg"
                                        }

                                        TableRow {
                                            name: "BMW"
                                            stockSymbol: "BMW"
                                            investDate: "May 18, 2024"
                                            volume: "860M"
                                            change: "+1.7%"
                                            pricePerStock: "$95.34"
                                            numberOfLots: "400"
                                            iconSource: "qrc:/resources/bmw.svg"
                                        }

                                        TableRow {
                                            name: "Twitter"
                                            stockSymbol: "TWTR"
                                            investDate: "July 30, 2024"
                                            volume: "1.53B"
                                            change: "-2.1%"
                                            pricePerStock: "$57.12"
                                            numberOfLots: "300"
                                            iconSource: "qrc:/resources/twitter.svg"
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
            }

        }

    }
    RowLayout {
            visible: root.isTablet
            anchors.fill: parent
            spacing: 0

           Rectangle
           {
               Layout.fillHeight: true
               Layout.preferredWidth: 120
               color: "white"
               visible: !root.isPhone


               ColumnLayout
               {
                   id: columnLayout
                   width: parent.width
                   Layout.alignment: Qt.AlignHCenter

                   Image{


                       source: "qrc:/resources/pfp.jpg"
                       Layout.preferredHeight: 70
                       Layout.preferredWidth: 70
                       Layout.leftMargin: 20

                    }


                   Layout.fillHeight: true
                   RowLayout
                   {
                       Layout.topMargin: 50
                        Layout.leftMargin: 30

                       Image
                       {
                           source: "qrc:/resources/dashboardactive.svg"

                       }
                   }
                   RowLayout
                   {
                        Layout.leftMargin: 30
                       Image
                       {
                           source: "qrc:/resources/portfolio.svg"
                           Layout.preferredWidth: 30
                           Layout.preferredHeight: 30


                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 30

                       Image
                       {
                           source: "qrc:/resources/stock.svg"

                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 30

                       Image
                       {
                           source: "qrc:/resources/deposit.svg"

                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 30

                       Image
                       {
                           source: "qrc:/resources/insight.svg"

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
                       Layout.leftMargin: 30

                       Image
                       {
                           source: "qrc:/resources/marketStock.svg"

                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 30

                       Image
                       {
                           source: "qrc:/resources/news.svg"

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
                       Layout.leftMargin: 30

                       Image
                       {
                           source: "qrc:/resources/help.svg"

                       }
                   }
                   RowLayout
                   {
                       Layout.leftMargin: 30

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
                           text: root.language == "EN" ? qsTr("Back to Finbank") : qsTr("Обратно към Finbank")
                           font.bold: true
                           font.pixelSize: 15
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
                   Layout.preferredHeight: 70
                   Layout.fillWidth: true
                   visible: root.isPhone

                   RowLayout
                   {
                       anchors.fill: parent

                       Image
                       {
                           visible: root.isPhone
                           Layout.leftMargin: 20
                           Layout.topMargin: 10
                           source: "qrc:/resources/pfp.jpg"
                           Layout.preferredWidth: 60
                           Layout.preferredHeight: 60
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
                           Layout.rightMargin: 20
                           source: "qrc:/resources/mingcute--notification-line.svg"
                           Rectangle {

                               width: 16
                               height: 16
                               radius: width / 2
                               color: "red"
                               anchors.right: parent.right
                               Text {
                                   text: "6"
                                   color: "white"
                                   font.pixelSize: 12
                                   anchors.centerIn: parent
                                   }
                               }
                       }

                   }
               }

               Rectangle
               {
                   Layout.fillWidth: true
                   Layout.preferredHeight: 100
                   color: "white"
                   RowLayout{
                       anchors.fill: parent
                    Text{
                       visible: !root.isPhone
                        text: root.language == "EN" ? qsTr("Hey, Boyan") : qsTr("Здравей, Боян!")
                        Layout.alignment: Qt.AlignVCenter
                        font.bold: true
                        font.pixelSize: 17
                   }

                   Rectangle {
                       id: searchRowRect2
                        Layout.fillWidth: true
                        Layout.preferredHeight: 50
                        Layout.leftMargin: 20
                        Layout.rightMargin: 20
                       color: "#FDFDFD"
                       border.width: 1
                       border.color: "#F7F7F7"
                       radius: 5

                       TextField {
                           id: textField2
                           anchors.fill: parent
                           leftPadding: 50
                           color: "black"  // Sets the text color to black

                           background: Rectangle {
                               color: "transparent"
                           }

                           onTextChanged: {
                               searchRow2.visible = text.length === 0 && !activeFocus;  // Hide when typing
                           }

                           onFocusChanged: {
                               searchRow2.visible = text.length === 0 && !activeFocus;  // Hide when focused, show when unfocused and empty
                           }
                       }

                       RowLayout {
                           id: searchRow2
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
                               text: root.language == "EN" ? qsTr("Search") : qsTr("Търсене")
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
                    source: "qrc:/resources/menu2.svg"
                    Layout.rightMargin: 30
                    visible: !root.isPhone
                   }
                   }
               }


               Rectangle
               {
                   color: "#F9F9F9"
                   Layout.fillHeight: true
                   Layout.fillWidth: true
                   Flickable {
                               anchors.fill: parent
                               contentHeight: columnLayout2.implicitHeight + 300
                               clip: true
                   ColumnLayout
                   {
                       id: columnLayout2
                       anchors.fill: parent
                       anchors.leftMargin: 30



                       Rectangle
                       {
                           Layout.fillWidth: true
                           Layout.preferredHeight: root.isPhone ? 150 : 300

                           color: "transparent"

                           PortfolioValue
                           {
                               anchors.fill: parent
                               isPhoneRef: root.isPhone
                               screenCheckpoint1Ref: root.screenCheckpoint1
                           }
                       }

                       Text
                       {
                           text: root.language == "EN" ? qsTr("Invest") : qsTr("Инвестирай")
                           font.pixelSize: 25
                           font.bold: true
                           Layout.topMargin: 15
                       }

                       Text
                       {
                           text: root.language == "EN" ? qsTr("Recently Viewed") : qsTr("Скорошно разгледани")
                           color: "grey"
                           font.bold: true
                       }


                       Flickable {
                           Layout.preferredWidth: parent.width
                           Layout.preferredHeight: 200
                           contentWidth: rowLayout.implicitWidth
                           contentHeight: 200
                           clip: true

                           RowLayout {
                               id: rowLayout
                               anchors.fill: parent
                               spacing: 20

                               Rectangle {
                                   Layout.preferredHeight: parent.height
                                   Layout.preferredWidth: 130
                                   border.width: 1
                                   border.color: "lightgrey"
                                   radius: 10

                                   ColumnLayout {
                                       anchors.fill: parent

                                       Image {
                                           Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                                           Layout.topMargin: 30
                                           source: "qrc:/resources/teslaIcon2.webp"
                                           Layout.preferredWidth: 50
                                           Layout.preferredHeight: 50
                                           Layout.bottomMargin: 20
                                       }

                                       Text {
                                           Layout.alignment: Qt.AlignHCenter
                                           text: "TSLA"
                                           color: "black"
                                           font.bold: true
                                           font.pixelSize: 15
                                       }

                                       Text {
                                           Layout.alignment: Qt.AlignHCenter
                                           text: "302.41"
                                           color: "black"
                                           font.pixelSize: 13
                                       }

                                       Item {
                                           Layout.fillHeight: true
                                       }

                                       Rectangle {
                                           Layout.preferredWidth: parent.width * 0.7
                                           Layout.preferredHeight: 30
                                           Layout.bottomMargin: 15
                                           Layout.alignment: Qt.AlignHCenter
                                           radius: 20
                                           color: "#F8D0D4"

                                           Text {
                                               anchors.centerIn: parent
                                               text: "-8.51%"
                                               color: "#D80E1F"
                                           }
                                       }
                                   }
                               }
                               Rectangle
                                                          {
                                                              Layout.preferredHeight: parent.height
                                                              Layout.preferredWidth: 130
                                                              border.width: 1
                                                              border.color: "lightgrey"
                                                              radius: 10
                                                              ColumnLayout
                                                              {
                                                                  anchors.fill: parent
                                                                  Image
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                                                                      Layout.topMargin: 30

                                                                      source: "qrc:/resources/apple.png"
                                                                      Layout.preferredWidth: 50
                                                                      Layout.preferredHeight: 50
                                                                      Layout.bottomMargin: 20
                                                                  }

                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "AAPL"
                                                                      color: "black"
                                                                      font.bold: true
                                                                      font.pixelSize: 15

                                                                  }
                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "248.19"
                                                                      color: "black"

                                                                      font.pixelSize: 13

                                                                  }
                                                                  Item
                                                                  {
                                                                      Layout.fillHeight: true
                                                                  }
                                                                  Rectangle
                                                                  {
                                                                      Layout.preferredWidth: parent.width * 0.7
                                                                      Layout.preferredHeight: 30
                                                                      Layout.bottomMargin: 15
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      radius: 20
                                                                      color: "#CEE9D9"

                                                                      Text
                                                                      {
                                                                          anchors.centerIn: parent
                                                                          text: "-8.51%"
                                                                          color: "#018740"
                                                                      }
                                                                  }


                                                              }


                                                          }
                                                          Rectangle
                                                          {
                                                              Layout.preferredHeight: parent.height
                                                              Layout.preferredWidth: 130
                                                              border.width: 1
                                                              border.color: "lightgrey"
                                                              radius: 10
                                                              ColumnLayout
                                                              {
                                                                  anchors.fill: parent
                                                                  Image
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                                                                      Layout.topMargin: 30

                                                                      source: "qrc:/resources/nvidia.png"
                                                                      Layout.preferredWidth: 50
                                                                      Layout.preferredHeight: 50
                                                                      Layout.bottomMargin: 20
                                                                  }

                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "NVDA"
                                                                      color: "black"
                                                                      font.bold: true
                                                                      font.pixelSize: 15

                                                                  }
                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "128.22"
                                                                      color: "black"

                                                                      font.pixelSize: 13

                                                                  }
                                                                  Item
                                                                  {
                                                                      Layout.fillHeight: true
                                                                  }
                                                                  Rectangle
                                                                  {
                                                                      Layout.preferredWidth: parent.width * 0.7
                                                                      Layout.preferredHeight: 30
                                                                      Layout.bottomMargin: 15
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      radius: 20
                                                                      color: "#F8D0D4"

                                                                      Text
                                                                      {
                                                                          anchors.centerIn: parent
                                                                          text: "-1.58%"
                                                                          color: "#D80E1F"
                                                                      }
                                                                  }


                                                              }


                                                          }
                                                          Rectangle
                                                          {
                                                              Layout.preferredHeight: parent.height
                                                              Layout.preferredWidth: 130
                                                              border.width: 1
                                                              border.color: "lightgrey"
                                                              radius: 10
                                                              ColumnLayout
                                                              {
                                                                  anchors.fill: parent
                                                                  Image
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                                                                      Layout.topMargin: 30

                                                                      source: "qrc:/resources/apple.png"
                                                                      Layout.preferredWidth: 50
                                                                      Layout.preferredHeight: 50
                                                                      Layout.bottomMargin: 20
                                                                  }

                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "AAPL"
                                                                      color: "black"
                                                                      font.bold: true
                                                                      font.pixelSize: 15

                                                                  }
                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "302.41"
                                                                      color: "black"

                                                                      font.pixelSize: 13

                                                                  }
                                                                  Item
                                                                  {
                                                                      Layout.fillHeight: true
                                                                  }
                                                                  Rectangle
                                                                  {
                                                                      Layout.preferredWidth: parent.width * 0.7
                                                                      Layout.preferredHeight: 30
                                                                      Layout.bottomMargin: 15
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      radius: 20
                                                                      color: "#F8D0D4"

                                                                      Text
                                                                      {
                                                                          anchors.centerIn: parent
                                                                          text: "-8.51%"
                                                                          color: "#D80E1F"
                                                                      }
                                                                  }


                                                              }


                                                          }

                                                          Rectangle
                                                          {
                                                              Layout.preferredHeight: parent.height
                                                              Layout.preferredWidth: 130
                                                              border.width: 1
                                                              border.color: "lightgrey"
                                                              radius: 10
                                                              ColumnLayout
                                                              {
                                                                  anchors.fill: parent
                                                                  Image
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                                                                      Layout.topMargin: 30

                                                                      source: "qrc:/resources/apple.png"
                                                                      Layout.preferredWidth: 50
                                                                      Layout.preferredHeight: 50
                                                                      Layout.bottomMargin: 20
                                                                  }

                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "AAPL"
                                                                      color: "black"
                                                                      font.bold: true
                                                                      font.pixelSize: 15

                                                                  }
                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "302.41"
                                                                      color: "black"

                                                                      font.pixelSize: 13

                                                                  }
                                                                  Item
                                                                  {
                                                                      Layout.fillHeight: true
                                                                  }
                                                                  Rectangle
                                                                  {
                                                                      Layout.preferredWidth: parent.width * 0.7
                                                                      Layout.preferredHeight: 30
                                                                      Layout.bottomMargin: 15
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      radius: 20
                                                                      color: "#F8D0D4"

                                                                      Text
                                                                      {
                                                                          anchors.centerIn: parent
                                                                          text: "-8.51%"
                                                                          color: "#D80E1F"
                                                                      }
                                                                  }


                                                              }


                                                          }
                                                          Rectangle
                                                          {
                                                              Layout.preferredHeight: parent.height
                                                              Layout.preferredWidth: 130
                                                              border.width: 1
                                                              border.color: "lightgrey"
                                                              radius: 10
                                                              ColumnLayout
                                                              {
                                                                  anchors.fill: parent
                                                                  Image
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                                                                      Layout.topMargin: 30

                                                                      source: "qrc:/resources/apple.png"
                                                                      Layout.preferredWidth: 50
                                                                      Layout.preferredHeight: 50
                                                                      Layout.bottomMargin: 20
                                                                  }

                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "AAPL"
                                                                      color: "black"
                                                                      font.bold: true
                                                                      font.pixelSize: 15

                                                                  }
                                                                  Text
                                                                  {
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      text: "302.41"
                                                                      color: "black"

                                                                      font.pixelSize: 13

                                                                  }
                                                                  Item
                                                                  {
                                                                      Layout.fillHeight: true
                                                                  }
                                                                  Rectangle
                                                                  {
                                                                      Layout.preferredWidth: parent.width * 0.7
                                                                      Layout.preferredHeight: 30
                                                                      Layout.bottomMargin: 15
                                                                      Layout.alignment: Qt.AlignHCenter
                                                                      radius: 20
                                                                      color: "#F8D0D4"

                                                                      Text
                                                                      {
                                                                          anchors.centerIn: parent
                                                                          text: "-8.51%"
                                                                          color: "#D80E1F"
                                                                      }
                                                                  }


                                                              }


                                                          }




                           }
                       }


                           Text {
                               font.pixelSize: 20
                               font.bold: true
                               Layout.topMargin: 30
                               text: root.language == "EN" ? qsTr("Favourites") : qsTr("Харесани")
                           }

                           Flickable {
                               Layout.fillWidth:true
                               Layout.preferredHeight: 130
                               contentWidth: rowLayout2.width // Ensure content width is set
                               clip: true // Clips overflowing content

                               Row {
                                   id: rowLayout2
                                   spacing: 10
                                   height: parent.height

                                   Rectangle {
                                       width: 170
                                       height: parent.height
                                       radius: 20
                                       gradient: Gradient {
                                           GradientStop { position: 0.0; color: "#FCEBEB" }
                                           GradientStop { position: 1.0; color: "#FEF7F8" }
                                       }
                                       Column {
                                           anchors.fill: parent
                                           anchors.margins: 20

                                           Text { text: "SPX"; font.pixelSize: 23; font.bold: true }
                                           Text { text: "-8.51%"; color: "#D80E1F"; font.bold: true }
                                           Text { text: "5967.00" }
                                       }
                                   }

                                   Rectangle {
                                       width: 170
                                       height: parent.height
                                       radius: 20
                                       gradient: Gradient {
                                           GradientStop { position: 0.0; color: "#EBF6F0" }
                                           GradientStop { position: 1.0; color: "#F6FBF9" }
                                       }
                                       Column {
                                           anchors.fill: parent
                                           anchors.margins: 20

                                           Text { text: "AAPL"; font.pixelSize: 23; font.bold: true }
                                           Text { text: "+0.44%"; color: "#018740"; font.bold: true }
                                           Text { text: "248.19" }
                                       }
                                   }

                                   Rectangle {
                                       width: 170
                                       height: parent.height
                                       radius: 20
                                       gradient: Gradient {
                                           GradientStop { position: 0.0; color: "#FCEBEB" }
                                           GradientStop { position: 1.0; color: "#FEF7F8" }
                                       }
                                       Column {
                                           anchors.fill: parent
                                           anchors.margins: 20

                                           Text { text: "AMZN"; font.pixelSize: 23; font.bold: true }
                                           Text { text: "-0.95%"; color: "#D80E1F"; font.bold: true }
                                           Text { text: "210.68" }
                                       }
                                   }

                                   Rectangle {
                                       width: 170
                                       height: parent.height
                                       radius: 20
                                       gradient: Gradient {
                                           GradientStop { position: 0.0; color: "#FCEBEB" }
                                           GradientStop { position: 1.0; color: "#FEF7F8" }
                                       }
                                       Column {
                                           anchors.fill: parent
                                           anchors.margins: 20

                                           Text { text: "GOOGL"; font.pixelSize: 23; font.bold: true }
                                           Text { text: "-1.09%"; color: "#D80E1F"; font.bold: true }
                                           Text { text: "177.30" }
                                       }
                                   }
                               }

                               // Optional Scrollbar
                               ScrollBar.horizontal: ScrollBar {
                                   policy: ScrollBar.AsNeeded
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

    NavbarMobile
    {
        isPhone: root.isPhone
        username: root.username
        fullName: root.fullName
        homeImage.source: "qrc:/resources/homeNavbarInactive.svg"
        tradingImage.source: "qrc:/resources/tradingActive.svg"

    }
}

