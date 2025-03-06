import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Item {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    property bool isTablet: width <= 900
    property bool isPhone: width <= 500

    property string username
    property string fullName

    property string recipentFullName
    property string recipentPfp
    property string recipentEmail

    property string sendingCurrency: "USD"
    property string recipentCurrency: "GBP"
    property real convertedAmount
    property real exchangeRate
    property bool sending: false
    property string language

    Component.onCompleted:
    {
        console.log(root.recipentFullName)
        console.log(root.recipentPfp)
    }

    Dialog {
        id: currencyPopup
        modal: true
        dim: false
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        width: 250
        height: 300

        background: Rectangle {
            color: "white"
            radius: 10
            border.color: "#DDDDDD"
            border.width: 1
        }

        contentItem: Column {
            spacing: 10
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            padding: 16

            // Search Bar
            TextField {
                id: searchField
                width: parent.width - 20
                placeholderText: "Type currency or country"
                leftPadding: 10
                color: "black"
                background: Rectangle {
                    color: "#F5F5F5"
                    radius: 10
                    border.color: "#CCCCCC"
                    border.width: 1
                }
            }

            // Currency List
            ListView {
                id: currencyList
                width: parent.width
                height: 300
                model: ListModel {
                    ListElement { flag: "qrc:/resources/CAD.svg"; name: "Canadian Dollar"; code: "CAD" }
                    ListElement { flag: "qrc:/resources/GBP.svg"; name: "Great Britain Pound"; code: "GBP" }
                    ListElement { flag: "qrc:/resources/IDR.svg"; name: "Indonesian Rupiah"; code: "IDR" }
                    ListElement { flag: "qrc:/resources/JPY.svg"; name: "Japanese Yen"; code: "JPY" }
                    ListElement { flag: "qrc:/resources/USD.svg"; name: "United States Dollar"; code: "USD" }
                }
                delegate: Item {
                    width: parent.width
                    height: 50
                    Row {
                        spacing: 10
                        anchors.verticalCenter: parent.verticalCenter
                        padding: 10

                        Image {
                            source: model.flag
                            fillMode: Image.PreserveAspectFit
                        }
                        Column {
                            Text {
                                text: model.name
                                font.pixelSize: 16
                                color: "black"
                            }
                            Text {
                                id: code
                                text: model.code
                                font.pixelSize: 12
                                color: "gray"
                            }
                        }
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            currencyPopup.visible = false;
                            console.log(code.text)
                            if(root.sending){
                                root.sendingCurrency = code.text
                                stockAPIClient.fetchExchangeRates(sendingCurrencyRef.text);
                            }
                            else
                            {
                                root.recipentCurrency = code.text
                                stockAPIClient.fetchExchangeRates(recipentCurrency.text);
                            }
                        }

                    }
                }
            }
        }
    }

    Connections {
        target: stockAPIClient

        function onExchangeRatesUpdated(exchangeRates) {
            console.log("Exchange rates updated:", exchangeRates);
            // Update the UI with the fetched exchange rates
            for (var currency in exchangeRates) {
                console.log("Currency:", currency, "Rate:", exchangeRates[currency]);
            }
        }

        function onErrorOccurred(message) {
            console.log("Error occurred:", message);
        }

        function onGetExchangeRate(rate) {
            root.exchangeRate = rate;
            // Update the UI or perform other actions with the rate
        }
    }

    ColumnLayout
    {
        anchors.fill: parent
        RowLayout
        {
            spacing: 8 // Adjust spacing between icon and TextField
            visible: !root.isTablet
            Image {
                id: name
                source: !root.isTablet ? "qrc:/resources/logo1.png" : "qrc:/resources/pfp.jpg"
            }
            Rectangle
            {
                id: account

                Layout.preferredWidth:177
                Layout.preferredHeight: 56
                color: "#fafafa"
                radius: 10
                border.color: "#727272"
                border.width: 0.1

                Text
                {
                    anchors.centerIn: parent
                    color: "#2f2f2f"
                    font.pixelSize: 18
                    text: root.language == "EN" ? qsTr("Personal Account") : qsTr("Личен акаунт")

                }
            }

            Image {
                id: element2

                Layout.preferredHeight: 20
                Layout.preferredWidth: 20
                source: "qrc:/resources/RightArrows.svg"
                antialiasing: true
            }
            Rectangle
            {

                Layout.preferredWidth: 128
                Layout.preferredHeight: 56
                color: "#fafafa"
                radius: 10
                border.color: "#727272"
                border.width: 0.1
                Text {
                    text: root.language == "EN" ? qsTr("Transactions") : qsTr("Преводи")
                    anchors.centerIn: parent
                    color: "#196e1a"
                    font.pixelSize: 18
                }
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

                Image {
                    id: element5
                    fillMode: Image.PreserveAspectFit

                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 15
                    source: "qrc:/resources/chat.svg"
                    anchors.leftMargin: 5
                }
                Text {
                    id: chatText
                    text: root.language == "EN" ? qsTr("Chat") : qsTr("Чат")
                    font.pixelSize: 15
                    anchors.centerIn: parent
                    anchors.horizontalCenterOffset: 10 // Adjust to move text to the right
                }
                Layout.preferredWidth: 80
                Layout.preferredHeight: 50
                color: "#fafafa"

                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        chatDrawer.open()
                    }
                }
            }

            Rectangle
            {

                Layout.preferredWidth: 200
                Layout.preferredHeight: 50

                Image {
                    id: userpfp
                    x: 14
                    source: "qrc:/resources/pfp.jpg"
                    width:70
                    height:70
                    anchors.top: parent.top
                    anchors.topMargin: 4
                }
                Text
                {
                    id: fullname
                    width:96
                    height: 16
                    anchors.left: parent.right
                    anchors.leftMargin: -96
                    anchors.top: parent.top
                    anchors.topMargin: 17
                    text: "Boyan Kyovtorov"
                }

                Text {
                    x: 112
                    y: 39
                    width: 69
                    height: 16
                    anchors.top: fullname.bottom
                    anchors.topMargin: 10
                    anchors.left: fullname.left
                    text: "@kyovtorov"
                }
            }

        }
        RowLayout {
                Layout.fillWidth: true
                spacing: 10

                ColumnLayout {
                    visible: !root.isTablet
                    spacing: 25
                    Layout.preferredWidth: 200
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignTop
                    Layout.topMargin: 280

                    // Sidebar tabs
                    RowLayout
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.leftMargin: 10
                        Image
                        {
                            source: "qrc:/resources//tick.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Select Recipient") : qsTr("Избери получател")
                        font.pixelSize: 20
                        }

                    }
                    RowLayout
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.leftMargin: 10
                        Image
                        {
                            source: "qrc:/resources//selectiveLine.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Аmount") : qsTr("Сума")
                        font.pixelSize: 20
                        font.bold: true
                        }

                    }
                    RowLayout
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.leftMargin: 10
                        Image
                        {
                            source: "qrc:/resources//notSelectiveLine.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Details Recipient") : qsTr("Детайли на получателя")
                        font.pixelSize: 20
                        }

                    }
                    RowLayout
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.leftMargin: 10
                        Image
                        {
                            source: "qrc:/resources/notSelectiveLine.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Тransfer Type") : qsTr("Тип превод")
                        font.pixelSize: 20
                        }

                    }
                    RowLayout
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.leftMargin: 10
                        Image
                        {
                            source: "qrc:/resources/notSelectiveLine.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Начална страница")
                        font.pixelSize: 20
                        }

                    }


                }

                // Main content
                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.bottomMargin: 20
                    color: "transparent"


                    ColumnLayout {
                        spacing: 16
                        anchors.fill: parent
                        ColumnLayout
                        {
                            visible: root.isTablet | root.isPhone
                            Layout.fillWidth: true
                            Text
                            {
                                Layout.fillWidth: true
                                text: root.language == "EN" ? qsTr("Send money") : qsTr("Изпрати пари")
                                color: "grey"
                                font.pixelSize: 15
                                horizontalAlignment: Text.AlignHCenter
                            }
                            Text
                            {
                                Layout.fillWidth: true
                                text: root.language == "EN" ? qsTr("2|5 Enter amount") : qsTr("2|5 Сума")
                                horizontalAlignment: Text.AlignHCenter
                                font.pixelSize: 15
                                font.bold: true
                            }
                            Rectangle
                            {
                                Layout.fillWidth: true
                                Layout.preferredHeight: 3
                                color: "lightgrey"
                                Rectangle
                                {
                                    width: parent.width / 5 * 2
                                    height: 3
                                    color: "#016DFC"
                                }
                            }

                        }



                        Text
                        {
                            horizontalAlignment: Qt.AlignHCenter
                            Layout.fillWidth: true
                            font.pixelSize: root.isTablet ? 30 :40
                            font.bold: true
                            wrapMode: Text.WordWrap
                            text: root.language == "EN" ? qsTr("How much do you want to send") : qsTr("Колко би желал да изпратиш")
                        }

                        RowLayout
                        {
                            Layout.fillWidth: true
                            Item
                            {
                                visible: !root.isPhone
                                Layout.fillWidth: true
                            }

                            Rectangle
                            {
                                Layout.preferredWidth: root.isTablet? 400 : 600
                                Layout.preferredHeight: 60

                                radius: 20
                                color: "#ECEEF4"
                                Rectangle
                                {
                                    id: internationalButton
                                    anchors.top: parent.top
                                    anchors.topMargin: 2
                                    width: parent.width / 2
                                    height: parent.height - 5
                                    color: "white"
                                    anchors.left: parent.left
                                    anchors.leftMargin: 2
                                    radius: 20
                                    Text
                                    {

                                        anchors.centerIn: parent
                                        text: root.language == "EN" ? qsTr("International") : qsTr("Международен")
                                        font.pixelSize: root.isTablet ? 20 : 25
                                    }

                                }
                                Text
                                {
                                    anchors.left: internationalButton.right
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.leftMargin: parent.width / 9
                                    font.pixelSize: root.isTablet ? 20 : 25
                                    text: root.language == "EN" ? qsTr("Same currency") : qsTr("Същата валута")
                                }

                            }
                            Item
                            {
                                visible: !root.isPhone
                                Layout.fillWidth: true
                            }
                        }

                        Text
                        {
                            text: root.language == "EN" ? qsTr("You will send") : qsTr("Ще изпратиш")
                            color: "black"
                            font.pixelSize: 20
                            Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                        }
                        Rectangle
                        {
                            Layout.fillWidth: true
                            Layout.preferredHeight: root.isPhone ? 50 : (root.isTablet ? 60 : 70)
                            radius: 20
                            border.width: 1
                           Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                            Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100
                            TextField
                            {
                                id: currency
                                anchors.fill: parent
                                anchors.margins: 1
                                anchors.rightMargin: 100
                                background:Item{}
                                font.pixelSize: 25
                                color: "black"
                                onTextChanged:
                                {

                                    let amount = currency.text
                                    stockAPIClient.fetchExchangeRates(sendingCurrencyRef.text);
                                stockAPIClient.exchangeRatesUpdated.connect(function() {
                                    root.convertedAmount = stockAPIClient.convertCurrency(root.sendingCurrency, root.recipentCurrency, amount);
                                });

                                stockAPIClient.errorOccurred.connect(function(errorMessage) {
                                    console.error("Error fetching exchange rates:", errorMessage);
                                });

                                }
                            }


                            Rectangle
                            {
                                id:sendingInfo
                                anchors.right: parent.right
                                height: parent.height
                                width: parent.width - currency.width
                                color: "transparent"
                                RowLayout
                                {
                                    anchors.fill: parent

                                Image
                                {
                                    id: currencyImage
                                    property string resourceRef: "qrc:/resources/" + root.sendingCurrency + ".svg"

                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    source: resourceRef
                                    Layout.preferredWidth: 30
                                    Layout.preferredHeight: 30
                                    Component.onCompleted:
                                    {
                                        console.log(resourceRef)
                                    }
                                }
                                Text
                                {
                                    id: sendingCurrencyRef
                                    Layout.rightMargin: 20
                                    text: root.sendingCurrency
                                    font.pixelSize: 20
                                }
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        root.sending = true;
                                        currencyPopup.visible = true;

                                        // Position it directly below the currency TextField
                                        currencyPopup.x = currency.mapToItem(root, currency.width - 150, 0).x;
                                        currencyPopup.y = currency.mapToItem(root, 0, currency.height).y + 5; // Small gap
                                    }
                                }

                            }
                        }
                        Text
                        {
                            text: root.language == "EN" ? qsTr("Recipient will get") : qsTr("Получателят ще получи")
                            Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                            font.pixelSize: 20
                        }

                        Rectangle
                        {
                            Layout.fillWidth: true
                            Layout.preferredHeight: root.isPhone ? 50 : (root.isTablet ? 60 : 70)
                            radius: 20
                            border.width: 1
                           Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                            Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100
                            Text
                            {
                                id: currency2
                                width: parent.width - 100

                                anchors.right: parent.right
                                anchors.rightMargin: 80
                                anchors.verticalCenter: parent.verticalCenter

                                font.pixelSize: 25
                                text: root.convertedAmount
                            }
                            Rectangle
                            {
                                id: receivingInfo
                                anchors.right: parent.right
                                height: parent.height
                                width: parent.width - currency2.width
                                color: "transparent"
                                RowLayout
                                {
                                    anchors.fill: parent

                                Image
                                {
                                    property string resourceRef: "qrc:/resources/" + root.recipentCurrency + ".svg"
                                    id: currencyImage2
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    source: resourceRef
                                    Layout.preferredWidth: 30
                                    Layout.preferredHeight: 30
                                }
                                Text
                                {
                                    id: recipentCurrency
                                    text: root.recipentCurrency
                                    font.pixelSize: 20

                                }
                                }
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        root.sending = false;
                                        currencyPopup.visible = true;

                                        // Position it directly below the currency TextField
                                        currencyPopup.x = currency.mapToItem(root, currency2.width - 150, 0).x;
                                        currencyPopup.y = currency.mapToItem(root, 0, currency2.height).y + 170; // Small gap
                                    }
                                }
                            }
                        }
                        Item
                        {
                            Layout.preferredHeight: 40
                        }




                                RowLayout
                                {

                                    Layout.preferredHeight: 20

                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: root.language == "EN" ? qsTr("Finbank+ fees") : qsTr("Finbank+ такси")
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: "$ 5USD"
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
                                    }

                                }
                                RowLayout
                                {

                                    Layout.preferredHeight: 20
                                    Layout.bottomMargin: 30

                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: root.language == "EN" ? qsTr("You will pay") : qsTr("Ще платиш")
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: (Number(currency.text) + 5) + " " + root.sendingCurrency
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
                                    }

                                }
                                RowLayout
                                {

                                    Layout.preferredHeight: 20
                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: root.language == "EN" ? qsTr("Total amount will be converted") : qsTr("Цялата сума ще бъде обменена")
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: (Number(currency.text) + 5) + " " + root.sendingCurrency
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
                                    }

                                }
                                RowLayout
                                {

                                    Layout.preferredHeight: 20

                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: root.language == "EN" ? qsTr("Guaranteed Rate (12h)") : qsTr("Гарантирана ставка(12h)")
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: root.exchangeRate
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
                                    }

                                }
                        Item
                        {
                            Layout.fillHeight: true
                        }
                    }
                }
            }

            // Navigation buttons
            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight
                Layout.rightMargin: root.isPhone ? 20 : 60
                Layout.bottomMargin: 30

                spacing: 16
                Button {
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: 140
                    Text
                    {
                        anchors.centerIn: parent
                        text: root.language == "EN" ? qsTr("Back") : qsTr("Върни се")
                        color: "black"
                    }

                    Layout.alignment: Qt.AlignRight
                    background: Rectangle
                    {
                        color: "transparent"
                        border.width: 1
                        radius: 20
                    }
                    onClicked:
                    {
                        contentLoader.setSource("SelectRecipent.qml", {
                                            username: root.username,
                                            fullName: root.fullName
                                        })
                    }
                }
                Button {
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: 140
                    Layout.alignment: Qt.AlignLeft

                    background:
                        Rectangle
                        {
                            color: "#1C1F31"
                            radius: 20
                        }
                    Text
                    {
                        anchors.centerIn: parent
                        text: root.language == "EN" ? qsTr("Continue") : qsTr("Продължи")
                        color: "white"
                    }
                    onClicked: {
                        contentLoader.setSource("RecipentDescription.qml", {
                                            username: root.username,
                                            fullName: root.fullName
                                        })
                            }
                }


            }

    }
}
