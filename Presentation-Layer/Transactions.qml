import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Timeline
Item {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height


    property bool isTablet: width <= 900
    property bool isPhone: width <= 500

    property string firstName
    property string lastName
    property string username
    property string language: "EN"
    property var pfp
    property int dynamicWidth: 1600
    Loader
    {
        id: loader
        source: ""
    }

    Component.onCompleted: {
        createtransaction.showTransactions("BG12FINB98765432109876");
    }

    ListModel {
        id: transactionModel
    }

    Drawer
    {
        id: bottomDrawer
                width: parent.width
                height: 550
                edge: Qt.BottomEdge
                Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "white"

                            ColumnLayout
                            {
                                anchors.fill: parent
                                Text
                                {
                                    font.pixelSize: 20
                                    Layout.preferredHeight: 30
                                    Layout.leftMargin: 30
                                    Layout.topMargin: 15
                                    font.bold: true
                                    text: root.language == "EN" ? qsTr("Where would you send the money?") : qsTr("Къде би искал да изпратиш парите?")

                                }

                                Rectangle
                                {
                                    id:newContactRect
                                    border.width: 1
                                    Layout.fillWidth: true
                                    Layout.rightMargin: 25
                                    Layout.leftMargin: 25
                                    Layout.topMargin: 40

                                    Layout.preferredHeight: 80
                                    radius:20
                                    MouseArea
                                    {
                                        anchors.fill: parent
                                        onClicked:
                                        {
                                            timelineAnimation.running = true
                                        }
                                    }
                                    Rectangle
                                    {
                                        width: 50
                                        height: 50
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.left: parent.left
                                        anchors.leftMargin: 10
                                        color: "grey"
                                        opacity: 0.5
                                        radius: 30
                                        Image
                                        {
                                            anchors.centerIn: parent
                                            source: "qrc:/resources/contact.svg"

                                        }

                                    }
                                    Text
                                    {
                                        id:method1
                                        anchors.left: parent.left
                                        anchors.leftMargin: 70
                                        anchors.top: parent.top
                                        anchors.topMargin: 5
                                        text: root.language == "EN" ? qsTr("New Recipient") : qsTr("Нов получател")

                                        font.bold: true
                                        font.pixelSize: 18
                                    }
                                    Text
                                    {
                                        width: parent.width - 100
                                        anchors.left: method1.left
                                        anchors.top: method1.top
                                        anchors.topMargin: 30
                                        text: root.language == "EN" ? qsTr("Send money to people whose contact you don't have") : qsTr("Изпрати без да им имаш номера")

                                        wrapMode: Text.Wrap
                                        opacity: 0.5

                                        font.pixelSize: 18
                                    }

                                }
                                Rectangle
                                {
                                    border.width: 1
                                    Layout.fillWidth: true
                                    Layout.rightMargin: 25
                                    Layout.leftMargin: 25
                                    Layout.preferredHeight: 80
                                    radius:20
                                    Rectangle
                                    {
                                        width: 50
                                        height: 50
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.left: parent.left
                                        anchors.leftMargin: 10
                                        color: "grey"
                                        opacity: 0.5
                                        radius: 30
                                        Image
                                        {
                                            anchors.centerIn: parent
                                            source: "qrc:/resources/contact.svg"

                                        }

                                    }
                                    Text
                                    {
                                        id:method2
                                        anchors.left: parent.left
                                        anchors.leftMargin: 70
                                        anchors.top: parent.top
                                        anchors.topMargin: 5
                                        text: root.language == "EN" ? qsTr("Contact") : qsTr("Контакт")

                                        font.bold: true
                                        font.pixelSize: 18
                                    }
                                    Text
                                    {
                                        width: parent.width - 100
                                        anchors.left: method2.left
                                        anchors.top: method2.top
                                        anchors.topMargin: 30
                                        text: root.language == "EN" ? qsTr("Send money to one of the contact lists I have") : qsTr("Изпрати на тези в листа ти")

                                        wrapMode: Text.Wrap
                                        opacity: 0.5

                                        font.pixelSize: 18
                                    }
                                }
                                Rectangle
                                {
                                    border.width: 1
                                    Layout.fillWidth: true
                                    Layout.rightMargin: 25
                                    Layout.leftMargin: 25
                                    Layout.preferredHeight: 80

                                    radius:20
                                    Rectangle
                                    {
                                        width: 50
                                        height: 50
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.left: parent.left
                                        anchors.leftMargin: 10
                                        color: "grey"
                                        opacity: 0.5
                                        radius: 30
                                        Image
                                        {
                                            id: icon3
                                            anchors.centerIn: parent
                                            source: "qrc:/resources/contact.svg"
                                        }

                                    }
                                    Text
                                    {
                                        id:method3
                                        anchors.left: parent.left
                                        anchors.leftMargin: 70
                                        anchors.top: parent.top
                                        anchors.topMargin: 5
                                        text: root.language == "EN" ? qsTr("Withdraw") : qsTr("Изтегляне")
                                        font.bold: true
                                        font.pixelSize: 18
                                    }
                                    Text
                                    {
                                        width: parent.width - 100
                                        anchors.left: method3.left
                                        anchors.top: method3.top
                                        anchors.topMargin: 30
                                        text: root.language == "EN" ? qsTr("Withdraw the balance of money to my local bank account") : qsTr("Изтегли пари от банката си")

                                        wrapMode: Text.Wrap
                                        opacity: 0.5

                                        font.pixelSize: 18
                                    }
                                }

                                Button
                                {
                                    Layout.topMargin: 30
                                    Layout.bottomMargin: 30
                                    Layout.preferredHeight: 60
                                    Layout.fillWidth: true
                                    Layout.rightMargin: 5
                                    Layout.leftMargin: 5
                                    background: Rectangle
                                    {
                                        id: continueButton
                                        color: "#B7C2CA"
                                        radius: 20
                                        Text
                                        {
                                            anchors.centerIn: parent
                                            text: "Continue"
                                            color: "white"
                                        }

                                    }

                                    onClicked: {
                                        contentLoader.setSource("SelectRecipent.qml", {
                                                            username: root.username,
                                                            fullName: root .fullName
                                                        })
                                    }
                                }

                            }
                        }
    }
    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: false
                loops: 1
                duration: 200
                to: 200
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 200
        enabled: true
        KeyframeGroup {
            target: newContactRect
            property: "border.color"
            Keyframe {
                value: "#66cd8b"
                frame: 200
            }
        }
        KeyframeGroup
        {
            target: continueButton
            property: "color"
            Keyframe
            {
                value: "#1A2035"
                frame: 200
            }
        }
    }
    Connections {
        target: createtransaction
        function onTransactionFound(fullname, receivingValue, receivingCurrency, isReceiving) {
            var transaction = isReceiving ? root.language == "EN" ? qsTr("Receiving") : qsTr("Получаване") : root.language == "EN" ? qsTr("Sending") : qsTr("Изпращане");
            transactionModel.append({
                recipent: fullname,
                value: isReceiving ? "+" + receivingValue + " " + receivingCurrency : "-" + receivingValue + " " + receivingCurrency,
                transactionType: transaction,
                ellipseColor: isReceiving ? "qrc:/resources/ellipseGreen.png" : "qrc:/resources/ellipse_6.png",
                arrow: isReceiving ? "qrc:/resources/receiving.svg" : "qrc:/resources/sending.svg",
                status: isReceiving ? "Received" : "Sent"
            });
        }
    }
    //desktop view
    ColumnLayout
    {
        visible: !root.isTablet
        anchors.fill: parent
        RowLayout
        {
            spacing: 8 // Adjust spacing between icon and TextField
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
                    text: root.language == "EN" ? qsTr("Personal account") : qsTr("Личен акаунт")

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
                    text: root.language == "EN" ? qsTr("Transactions") : qsTr("Транзакции")
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
                    source: root.pfp
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
                    text: root.firstName + " " + root.lastName
                }

                Text {
                    x: 112
                    y: 39
                    width: 69
                    height: 16
                    anchors.top: fullname.bottom
                    anchors.topMargin: 10
                    anchors.left: fullname.left
                    text: "@" + root.username
                }
            }

        }
        Item
        {
            Layout.preferredHeight: 40
        }

        RowLayout
        {
            spacing: 10
            Layout.topMargin: 40

            Text {
                text:root.language == "EN" ? qsTr("Good afternoon, Boyan") : qsTr("Добър ден, Боян!")
                font.pixelSize: !root.isTablet ? 35 : 20
                font.bold: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop // Combine alignment flags
                Layout.leftMargin: 15
            }


            Item
            {

                Layout.fillWidth: true
            }

            Text
            {
                    id: overviewPage
                    text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Начална страница")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:{
                            contentLoader.setSource("Dashboard.qml", {
                                                username: root.username,
                                                fullName: root .fullName,
                                                language: root.language,
                                                firstName: root.firstName,
                                                lastName: root.lastName,
                                                pfp: root.pfp
                                            })
                        }
                    }
            }
            Text
            {


                    id: transactions
                    text: root.language == "EN" ? qsTr("Transactions") : qsTr("Транзакции")
                    color: "#367C21"
                    font.pixelSize: 15

                    font.bold: true
            }
            Text
            {


                    id: walletPage
                    text: root.language == "EN" ? qsTr("Wallet") : qsTr("Портфейл")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: {
                            onClicked:{
                                contentLoader.setSource("Wallet.qml", {
                                                    username: root.username,
                                                    fullName: root .fullName,
                                                    language: root.language,
                                                    firstName: root.firstName,
                                                    lastName: root.lastName,
                                                    pfp: root.pfp
                                                })
                            }
                        }
                    }


            }
            Text
            {


                    id: tradingPageButton
                    text: root.language == "EN" ? qsTr("Invest") : qsTr("Инвестирай")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:{
                        contentLoader.setSource("TradingDashboard.qml", {
                                            username: root.username,
                                            fullName: root .fullName,
                                            language: root.language,
                                            firstName: root.firstName,
                                            lastName: root.lastName,
                                            pfp: root.pfp
                                        })
                    }
                }
            }
            Text
            {
                    id: settingsPage
                    text:root.language == "EN" ? qsTr("Settings") : qsTr("Настройки")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5
                    Layout.rightMargin: 30


            }
        }
        Item
        {
            Layout.preferredHeight: 40
        }
        ColumnLayout
        {
            Layout.leftMargin: 70
        RowLayout
        {
            Layout.rightMargin: 30

            Item
            {
                Layout.fillWidth: true
            }

            Button
            {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 40
                background: Rectangle
                {
                    color: "#1C1F31"
                    radius: 15
                }
                Text
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenterOffset: 8
                    text: root.language == "EN" ? qsTr("Send") : qsTr("Изпрати")
                    color: "white"
                    font.pixelSize: 18

                }
                Image
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -30
                    source: "qrc:/resources/rightArrow2.svg"
                    width: 15
                    height: 15
                    rotation: -90
                }
                onClicked:{
                    contentLoader.setSource("SelectRecipent.qml", {
                                        username: root.username,
                                        fullName: root .fullName,
                                        language: root.language,
                                        firstName: root.firstName,
                                        lastName: root.lastName,
                                        pfp: root.pfp
                                    })
                }
            }
            Button
            {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 40
                background: Rectangle
                {
                    color: "#1C1F31"
                    radius: 15
                }
                Text
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenterOffset: 10
                    text: root.language == "EN" ? qsTr("Request") : qsTr("Заяви")
                    color: "white"
                    font.pixelSize: 18

                }
                Image
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -30
                    source: "qrc:/resources/rightArrow2.svg"
                    width: 15
                    height: 15
                    rotation: 90
                }
                onClicked:
                {

                }
            }
            Button
            {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 40
                background: Rectangle
                {
                    color: "#1C1F31"
                    radius: 15
                }
                Text
                {
                    width: 34
                    height: 26
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 1
                    anchors.horizontalCenterOffset: 0
                    text: root.language == "EN" ? qsTr("Convert") : qsTr("Обмени")
                    color: "white"
                    font.pixelSize: 18
                }
                Image
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -30
                    source: "qrc:/resources/convert.svg"
                    width: 15
                    height: 15
                }
            }
            Button
            {
                Layout.preferredWidth: 45
                Layout.preferredHeight: 45
                background: Rectangle
                {
                    color: "#1C1F31"
                    radius: 40
                }
                Text
                {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: -15
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: qsTr("...")
                    color: "white"
                    font.pixelSize: 50
                }
            }
        }


        Item
        {
            Layout.preferredHeight: 10
        }

        Text
        {
            text: "Transactions"
            font.pixelSize: 30
        }

        TextField {
            id: searchField2

            Layout.preferredWidth: 400 // Make it expand to fill the remaining space
            Layout.preferredHeight: 40
            placeholderText: root.language == "EN" ? qsTr("Search") : qsTr("Търсене")
            placeholderTextColor: "grey"
            font.pixelSize: 20
            color: "black"

            leftPadding: 30 // Adds space around the text, adjusting the padding as needed
            topPadding: 7

            background: Rectangle
            {
                color: "transparent"
                border.width: 1
                border.color: "#727272B2"
                radius: 10
            }

            Image {
                id: searchIcon2
                fillMode: Image.PreserveAspectFit
                source: "qrc:/resources/search.svg"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 5
            }

        }
        Text
        {
            Layout.topMargin: 20
            text:root.language == "EN" ? qsTr("Tоday, 7 March") : qsTr("Днес, 7 Март")
            color: "#2F2F2F"
            opacity: 0.5
        }


    }
        ScrollView {

            id:scrollView
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.leftMargin: 60

            ColumnLayout {
                id: transactionListLayout
                anchors.fill: parent
                Repeater {
                    model: transactionModel
                    delegate: SingleTransactionDetail {
                        width: scrollView.width
                        recipent: model.recipent
                        value: model.value
                        transactionType: model.transactionType
                        ellipseColor: model.ellipseColor
                        arrow: model.arrow
                    }
                }
            }
        }

    }
    //view for tablet and phone
    RowLayout
    {
        id: tabletView
        visible: root.isTablet
        anchors.fill: parent
        ColumnLayout
        {
            id:navbar
            Layout.preferredWidth: 100
            Layout.fillHeight: true
            visible: !root.isPhone
            spacing: 10

            Item
            {
                Layout.preferredHeight:15
            }
            Image
            {
                source: "qrc:/resources/pfp.jpg"
                Layout.preferredWidth: 50
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle
            {
                Layout.preferredWidth:50
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                radius:10

                Image
                {

                    source: "qrc:/resources/home.svg"
                    anchors.centerIn:parent
                    fillMode: Image.PreserveAspectFit

                }
            }
            Rectangle
            {
                Layout.preferredWidth:50
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                color: "transparent"
                Image
                {

                    source: "qrc:/resources/analytics.svg"
                    anchors.centerIn:parent
                    fillMode: Image.PreserveAspectFit

                }
            }
            Rectangle
            {
                Layout.preferredWidth:50
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                color: "transparent"
                Image
                {
                    fillMode: Image.PreserveAspectFit


                    source: "qrc:/resources/transfers.svg"
                    anchors.centerIn:parent
                }
            }
            Item
            {
                Layout.fillHeight: true
            }
        }
        ColumnLayout
        {
            Layout.preferredWidth: 500
            Layout.topMargin: 100
            Layout.fillHeight: true
            Image
            {
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:/resources/usd.png"
            }
            Text
            {
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 30
                font.bold: true
                text: "1.567 USD"
            }
            Text
            {
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 20
                text: "1 USD = 1,78 BGN"
            }


            ListView {
                Layout.topMargin: 20
                Layout.bottomMargin: 20
                width: contentWidth // Ensure ListView wraps its content
                Layout.preferredHeight: 60
                Layout.alignment: Qt.AlignHCenter
                orientation: ListView.Horizontal
                spacing: !root.isPhone ? 30 : 15

                model: ListModel {
                    ListElement { source: "qrc:/resources/rightArrow2.svg"; enText: "Send"; otherText: "Изпрати"; rotation: -90; method1: true }
                    ListElement { source: "qrc:/resources/rightArrow2.svg"; enText: "Request"; otherText: "Заяви"; rotation: 90 }
                    ListElement { source: "qrc:/resources/convert.svg"; enText: "Convert"; otherText: "Oбмени"; rotation: 0 }
                    ListElement { source: "qrc:/resources/more.svg"; enText: "More"; otherText: "Oще"; rotation: 0 }
                }

                delegate: Item {
                    width: 70
                    height: 70

                    Rectangle {
                        id: options
                        width: !root.isPhone ? 40 : 30
                        height: !root.isPhone ? 40 : 30
                        color: "#1C1F31"
                        radius: 25
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 5

                        Image {
                            anchors.centerIn: parent
                            source: model.source
                            rotation: model.rotation
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                bottomDrawer.open();
                            }
                        }
                    }

                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: options.bottom
                        anchors.topMargin: 5
                        text: root.language == "EN" ? qsTr(model.enText) : qsTr(model.otherText)
                        font.pixelSize: 12
                        color: "black"
                    }
                }
            }


            ColumnLayout
            {
                Layout.alignment: Qt.AlignHCenter
                Text {
                            text: "Goals 1000/2000 USD"
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignHCenter
                        }

                        Rectangle {
                            Layout.preferredWidth: 300
                            Layout.preferredHeight: 7
                            radius: 10
                            color: "lightgray"

                            Rectangle {
                                width: parent.width * 0.5 // 50% progress (1000/2000)
                                height: parent.height
                                radius: 10
                                color: "green"
                            }
                        }
            }

                Rectangle
                {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.topMargin: 20
                    color: "white"
                    radius:20
                    ColumnLayout
                    {
                        anchors.fill: parent
                        Text
                        {
                            text: root.language == "EN" ? qsTr("Тransactions") : qsTr("Транзакции")

                            font.pixelSize: 25
                            font.bold:true
                        }
                        RowLayout
                        {
                            TextField {
                                background: Rectangle
                                {
                                    color: "white"
                                    border.width: 1
                                    border.color: "#727272"
                                    radius: 10
                                }
                                Image {
                                    id: searchIcon3
                                    fillMode: Image.PreserveAspectFit

                                    source: "qrc:/resources/search.svg"
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.left: parent.left
                                    anchors.leftMargin: 5

                                }
                                id: searchField3

                                Layout.fillWidth: true
                                Layout.preferredHeight: 45
                                Layout.alignment: Qt.AlignHCenter
                                placeholderTextColor: "grey"
                                font.pixelSize: 18
                                color: "black"
                                leftPadding: 30 // Adds space around the text, adjusting the padding as needed
                            }
                            Rectangle
                            {
                                Layout.preferredWidth: 100
                                Layout.preferredHeight: 45
                                Layout.leftMargin: 10
                                Layout.rightMargin: 30
                                border.width: 1
                                radius: 10
                                Image
                                {
                                    anchors.left: parent.left
                                    anchors.leftMargin: 10
                                    anchors.verticalCenter: parent.verticalCenter
                                    source: "qrc:/resources/filter.svg"
                                }
                                Text
                                {
                                    anchors.left: parent.left
                                    anchors.leftMargin: 40
                                    anchors.verticalCenter: parent.verticalCenter
                                    text: root.language == "EN" ? qsTr("Filter") : qsTr("Филтрирай")

                                    font.pixelSize: 20
                                }
                            }
                        }
                        Text
                        {
                            text: root.language == "EN" ? qsTr("Тransactions") : qsTr("Транзакции")

                        }
                        ColumnLayout
                        {
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.rightMargin: 20
                            ScrollView {

                                id:scrollView2
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                ColumnLayout {
                                    id: transactionListLayout2
                                    anchors.fill: parent

                                    Repeater {
                                        model: transactionModel
                                        delegate: SingleTransactionDetail {
                                            width: scrollView2.width
                                            recipent: model.recipent
                                            value: model.value
                                            transactionType: model.transactionType
                                            ellipseColor: model.ellipseColor
                                            arrow: model.arrow
                                            language: root.language
                                        }
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
        username: root.username
        fullName: root.fullName
        transactionImage.source: "qrc:/resources/transactionActive.svg"
        homeImage.source: "qrc:/resources/homeNavbarInactive.svg"
        tradingImage.source: "qrc:/resources/trading.svg"
    }
}
