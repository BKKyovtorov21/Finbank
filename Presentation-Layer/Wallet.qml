import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCharts

pragma ComponentBehavior: Bound

Item {
    id: root
    property var stackViewRef
    width: Screen.width
    height: Screen.height
    visible: true
    property bool test: width <= 1300
    property bool test2: width <= 1100
    property bool isTablet: width <= 1000
    property bool isPhone: width <= 620

    property string username
    property var pfp
    property string firstName
    property string lastName
    property bool stackviewActive: false
    property bool textfieldActive
    property string language: "EN"


    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            textField.focus = false
        }
    }

    Dialog {
            id: pinDialog
            modal: true
            dim: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

            width: 320
            height: 220

            anchors.centerIn: parent
            background: Rectangle {
                color: "white"
                radius: 20 // Rounded corners
                border.color: "#DDDDDD"
                border.width: 1
            }

            contentItem: Column {
                spacing: 10
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter

                // Header with title and close button
                Row {
                    width: parent.width
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    padding: 16

                    Text {
                        text: root.language == "EN" ? qsTr("Here's your pin") : qsTr("Твоя ПИН")
                        font.bold: true
                        font.pixelSize: 18
                        color: "black"
                    }

                    Item {
                        width: 1
                        height: 1
                        Layout.fillWidth: true
                    }

                    Button {
                        text: "✕"
                        flat: true
                        onClicked: pinDialog.close()
                    }
                }

                // Centered PIN
                Text {
                    text: "7484"
                    font.bold: true
                    font.pixelSize: 28
                    color: "black"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                // Description text
                Text {
                    text: root.language == "EN" ? qsTr("Come back to the app if you forget it.") : qsTr("Върни се в приложението ако го забравиш.")
                    font.pixelSize: 14
                    color: "#555555"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                // Action Button
                Button {
                    text: root.language == "EN" ? qsTr("Done") : qsTr("Готово")
                    width: parent.width - 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    height: 40
                    background: Rectangle {
                        color: "#A7E063"
                        radius: 20
                    }
                    onClicked: pinDialog.close()
                }
            }
        }

    Dialog {
        id: cardDialog
        modal: true
        dim: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        width: 360
        height: 400

        anchors.centerIn: parent
        background: Rectangle {
            color: "white"
            radius: 20
            border.color: "#DDDDDD"
            border.width: 1
        }

        contentItem: Column {
            spacing: 12
            width: parent.width - 32
            anchors.horizontalCenter: parent.horizontalCenter
            padding: 16

            // Header with title and close button
            Row {
                width: parent.width
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    text: root.language == "EN" ? qsTr("Card details") : qsTr("Детайли на картата")
                    font.bold: true
                    font.pixelSize: 18
                    color: "black"
                }

                Item {
                    width: 1
                    height: 1
                    Layout.fillWidth: true
                }

                Button {
                    text: "✕"
                    flat: true
                    onClicked: cardDialog.close()
                }
            }

            // Cardholder name
            Column {
                spacing: 4
                Text { text: root.language == "EN" ? qsTr("Cardholder name") : qsTr("Собственик на картата"); font.pixelSize: 14; color: "#777" }
                Text { text: "VANYA D DELCHEVA"; font.pixelSize: 16; color: "black" }
            }

            // Card number
            Row {
                spacing: 10
                Column {
                    spacing: 4
                    Text { text: root.language == "EN" ? qsTr("Card number") : qsTr("Номер на картата"); font.pixelSize: 14; color: "#777" }
                    Text { text: "4569 3344 0248 8645"; font.pixelSize: 16; color: "black" }
                }
                Button {
                    text: root.language == "EN" ? qsTr("Copy") : qsTr("Копирай")
                    background: Rectangle { color: "#A7E063"; radius: 10 }
                }
            }

            // Expiry date
            Row {
                spacing: 10
                Column {
                    spacing: 4
                    Text { text: root.language == "EN" ? qsTr("Expiry date") : qsTr("Валидна до"); font.pixelSize: 14; color: "#777" }
                    Text { text: "01/30"; font.pixelSize: 16; color: "black" }
                }
                Button {
                    text: root.language == "EN" ? qsTr("Copy") : qsTr("Копирай")
                    background: Rectangle { color: "#A7E063"; radius: 10 }
                }
            }

            // Security code
            Row {
                spacing: 10
                Column {
                    spacing: 4
                    Text { text: root.language == "EN" ? qsTr("Security code") : qsTr("Код за сигурност"); font.pixelSize: 14; color: "#777" }
                    Text { text: "832"; font.pixelSize: 16; color: "black" }
                }
                Button {
                    text: root.language == "EN" ? qsTr("Copy") : qsTr("Копирай")
                    background: Rectangle { color: "#A7E063"; radius: 10 }
                }
            }

            // Billing address
            Column {
                spacing: 4
                Text { text: root.language == "EN" ? qsTr("Billing address") : qsTr("Адрес"); font.pixelSize: 14; color: "#777" }
                Text { text: "жк Възраждане 16 вх.2, Бургас, 8000, Bulgaria"; font.pixelSize: 16; color: "black" }
            }

            // Done Button
            Button {
                text: root.language == "EN" ? qsTr("Done") : qsTr("Готово")
                width: parent.width - 20
                anchors.horizontalCenter: parent.horizontalCenter
                height: 40
                background: Rectangle {
                    color: "#A7E063"
                    radius: 20
                }
                onClicked: cardDialog.close()
            }
        }
    }

    // Dialog {
    //        id: passwordDialog
    //        modal: true
    //        dim: true
    //        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

    //        anchors.centerIn: parent
    //        width: 360
    //        height: 320

    //        background: Rectangle {
    //            color: "white"
    //            radius: 20 // Rounded corners
    //            border.color: "#DDDDDD"
    //            border.width: 1
    //        }

    //        contentItem: Column {
    //            spacing: 16
    //            width: parent.width - 40
    //            anchors.horizontalCenter: parent.horizontalCenter
    //            padding: 16

    //            // Header with title and close button
    //            Row {
    //                width: parent.width
    //                spacing: 10

    //                Text {
    //                    text: "Here's your PIN"
    //                    font.bold: true
    //                    font.pixelSize: 18
    //                    color: "black"
    //                }

    //                Item {
    //                    width: 1
    //                    height: 1
    //                    Layout.fillWidth: true
    //                }

    //                Button {
    //                    text: "✕"
    //                    flat: true
    //                    onClicked: passwordDialog.close()
    //                }
    //            }

    //            // Title & Description
    //            Column {
    //                spacing: 6
    //                width: parent.width

    //                Text {
    //                    text: "Enter your password to show your card PIN"
    //                    font.bold: true
    //                    font.pixelSize: 16
    //                    color: "black"
    //                    wrapMode: Text.Wrap
    //                }

    //                Text {
    //                    text: "This is a security check to keep your account safe."
    //                    font.pixelSize: 14
    //                    color: "#555555"
    //                    wrapMode: Text.Wrap
    //                }
    //            }

    //            // Password Input Field with Eye Toggle
    //            Row {
    //                width: parent.width
    //                spacing: 8
    //                Rectangle {
    //                    width: parent.width - 50
    //                    height: 40
    //                    radius: 8
    //                    color: "#EEF2FF"

    //                    TextInput {
    //                        id: passwordField
    //                        width: parent.width - 10
    //                        anchors.verticalCenter: parent.verticalCenter
    //                        leftPadding: 10
    //                        echoMode: TextInput.Password
    //                    }
    //                }
    //            }

    //            // Done Button
    //            Button {
    //                text: "Done"
    //                width: parent.width
    //                height: 45
    //                background: Rectangle {
    //                    color: "#A7E063"
    //                    radius: 22
    //                }
    //                onClicked: passwordDialog.close()
    //            }

    //            // Forgot Password Link
    //            Text {
    //                text: "Forgot password?"
    //                font.underline: true               }
    //        }
    //    }

    Flickable
    {
        id: flickable
               anchors.fill: parent
               clip: true
               contentWidth: width
               contentHeight: height + 200


    ColumnLayout
    {
        visible: !root.isTablet
        //visible: false
        property real expensesValue
        property real incomeValue: 3000
        anchors.fill: parent
        id: dashboardwindowDesktop
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
                    text: root.language == "EN" ? qsTr("Wallet") : qsTr("Портфейл")
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

        RowLayout
        {
            spacing: 10
            Layout.topMargin: 50
            Text{
                text: "Cards"
                font.bold: true
                font.pixelSize: 35
                Layout.leftMargin: 100

            }
            Item
            {

                Layout.fillWidth: true
            }



            Item
            {

                Layout.preferredWidth: 350
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
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:{
                        contentLoader.setSource("Transactions.qml", {
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


                    id: walletPage
                    text: root.language == "EN" ? qsTr("Wallet") : qsTr("Портфейл")
                    color: "#367C21"
                    font.bold: true
                    font.pixelSize: 15

                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:{
                            contentLoader.setSource("Wallet.qml", {
                                                username: root.username,
                                                fullName: root .fullName
                                            })
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


                    text: root.language == "EN" ? qsTr("Settings") : qsTr("Настройки")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5
                    Layout.rightMargin: 20



            }
        }

        RowLayout{
            spacing: 10
            Layout.topMargin: 30
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout
            {
                Layout.fillHeight: true

                Rectangle
                {
                    visible: !root.stackviewActive

                    Layout.fillWidth: true
                    Layout.preferredHeight: 100
                    Layout.rightMargin: 50
                    Layout.leftMargin: 90
            RowLayout
            {
                anchors.fill: parent

            Text{
                text: root.language == "EN" ? qsTr("Your cards") : qsTr("Твоите карт")
                color: "gray"
                Layout.leftMargin: 20
                font.pixelSize: 17
                Layout.alignment: Qt.AlignBottom
            }


            Item
            {
                Layout.fillWidth: true
            }

            Rectangle{
                color: "#9FE870"
                Layout.preferredWidth: 70
                Layout.preferredHeight: 70
                radius: 70
                Image{
                    anchors.centerIn: parent
                    height: 30
                    width: 35
                    source: "qrc:/resources/limits.svg"
                }
            }
            Rectangle{
                color: "#9FE870"
                Layout.preferredWidth: 70
                Layout.preferredHeight: 70
                radius: 70
                Text {
                    text: "+"
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: -5
                    font.pixelSize: 40
                }

            }
        }
                }


            Rectangle
            {
                id: bigRect
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.leftMargin: 90
                Layout.rightMargin: 50
                color: "white"

                StackView
                {
                    id: stackview
                    anchors.fill: parent
                    //initialItem: firstPage
                    visible: false
                }
                Component {
                        id: firstPage
                        Page {
                            Rectangle {
                                anchors.fill: parent
                                color: "white"
                                ColumnLayout
                                {
                                    anchors.fill: parent
                                    anchors.leftMargin: 50

                                            Rectangle{
                                                Layout.preferredWidth: 50
                                                Layout.preferredHeight: 50
                                                radius: 50
                                                color: "#EDEFEC"
                                                Image{
                                                    source: "qrc:/resources/leftArrow.svg"
                                                    anchors.centerIn: parent
                                                }

                                                MouseArea
                                                {
                                                    anchors.fill: parent

                                                    onClicked:
                                                    {
                                                        stackview.visible = false
                                                        cardsLayout.visible = true
                                                        root.stackviewActive = false
                                                    }
                                                }
                                            }
                                        Text{
                                            text: root.language == "EN" ? qsTr("Digital card") : qsTr("Дигитална карта")
                                            font.bold: true
                                            font.pixelSize: 25
                                        }
                                        Text{
                                            text: "**** 4017"
                                            font.pixelSize: 16
                                            Layout.alignment: Qt.AlignLeft
                                        }

                                        Item{
                                        Layout.fillWidth: true
                                        }


                                    RowLayout{
                                        Layout.preferredWidth: parent.width
                                        spacing: 50

                                        Image{
                                            source: "qrc:/resources/minimalistbg1.png"
                                            Layout.preferredHeight: 250
                                            Layout.preferredWidth: 450

                                            Layout.alignment: Qt.AlignLeft

                                            ColumnLayout
                                            {
                                                anchors.fill: parent

                                                Image
                                                {
                                                Layout.alignment: Qt.AlignTop | Qt.AlignRight
                                                Layout.rightMargin:  20
                                                Layout.topMargin: 20
                                                    source: "qrc:/resources/logowide.svg"
                                                }
                                                Image
                                                {
                                                Layout.alignment: Qt.AlignBottom | Qt.AlignRight
                                                Layout.rightMargin:  20
                                                Layout.bottomMargin: 20
                                                    source: "qrc:/resources/visaWhite.svg"
                                                }
                                            }
                                        }
                                    ColumnLayout{
                                        Layout.preferredWidth: 70

                                    Rectangle{
                                        color: "#9FE870"
                                        Layout.preferredWidth: 70
                                        Layout.preferredHeight: 70
                                        radius: 70
                                        Image{
                                            anchors.centerIn: parent
                                            source: "qrc:/resources/pin.svg"

                                        }
                                        MouseArea
                                        {
                                            anchors.fill: parent
                                            onClicked:
                                            {
                                                pinDialog.open();
                                            }
                                        }
                                    }
                                    Text{
                                        text: root.language == "EN" ? qsTr("Show pin") : qsTr("Покажи ПИН")
                                        Layout.alignment: Qt.AlignHCenter
                                    }


                                    }
                                    ColumnLayout{
                                        Layout.preferredWidth: 70

                                    Rectangle{
                                        color: "#9FE870"
                                        Layout.preferredWidth: 70
                                        Layout.preferredHeight: 70
                                        radius: 70
                                        Image{
                                            anchors.centerIn: parent
                                            height: 30
                                            width: 35
                                            source: "qrc:/resources/card.svg"
                                        }

                                        MouseArea
                                        {
                                            anchors.fill: parent
                                            onClicked:
                                            {
                                                cardDialog.open();
                                            }
                                        }
                                    }
                                    Text{
                                        text: root.language == "EN" ? qsTr("Card details") : qsTr("Детайли на картата")
                                        Layout.alignment: Qt.AlignHCenter
                                    }
                                    }
                                    ColumnLayout{
                                        Layout.preferredWidth: 70

                                    Rectangle{
                                        color: "#9FE870"
                                        Layout.preferredWidth: 70
                                        Layout.preferredHeight: 70
                                        radius: 70
                                        Image{
                                            source: "qrc:/resources/freeze.svg"
                                            anchors.centerIn: parent
                                        }
                                    }
                                    Text{
                                        text: root.language == "EN" ? qsTr("Freeze card") : qsTr("Замрази картата")
                                        Layout.alignment: Qt.AlignHCenter
                                    }

                                    }
                                    Item
                                    {
                                        Layout.fillWidth: true
                                    }

                                    }

                                    Text
                                    {
                                        text: root.language == "EN" ? qsTr("Manage cards") : qsTr("Управление на карти")
                                        font.pixelSize: 20

                                    }
                                    Rectangle
                                    {
                                        Layout.preferredWidth: parent.width
                                        Layout.preferredHeight: 1
                                        color: "grey"


                                    }

                                    RowLayout
                                    {
                                        Layout.fillWidth: true
                                        Layout.topMargin: 30
                                        spacing: 20
                                        Rectangle
                                        {
                                            Layout.preferredHeight: 50
                                            Layout.preferredWidth: 50
                                            radius: 50
                                            color: "#EDEFEC"
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "qrc:/resources/menu3.svg"
                                            }
                                        }

                                        Text
                                        {
                                            text: root.language == "EN" ? qsTr("View recent card transactions") : qsTr("Скорошни транзакции")
                                            font.bold: true
                                            font.pixelSize: 18
                                        }

                                    }
                                    RowLayout
                                    {

                                        Layout.fillWidth: true
                                        Layout.topMargin: 20
                                        spacing: 20
                                        Rectangle
                                        {
                                            Layout.preferredHeight: 50
                                            Layout.preferredWidth: 50
                                            radius: 50
                                            color: "#EDEFEC"
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "qrc:/resources/settings2.svg"
                                            }
                                        }
                                        Text
                                        {
                                            text: root.language == "EN" ? qsTr("Card controls") : qsTr("Настройки на картата")
                                            font.bold: true
                                            font.pixelSize: 18
                                        }
                                    }
                                    RowLayout
                                    {

                                        Layout.fillWidth: true
                                        Layout.topMargin: 20
                                        spacing: 20
                                        Rectangle
                                        {
                                            Layout.preferredHeight: 50
                                            Layout.preferredWidth: 50
                                            radius: 50
                                            color: "#EDEFEC"
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "qrc:/resources/repeat.svg"
                                            }
                                        }
                                        Text
                                        {
                                            text: root.language == "EN" ? qsTr("Unblock PIN") : qsTr("Отблокирай ПИН")
                                            font.bold: true
                                            font.pixelSize: 18
                                        }
                                    }
                                    RowLayout
                                    {

                                        Layout.fillWidth: true
                                        Layout.topMargin: 20
                                        spacing: 20
                                        Rectangle
                                        {
                                            Layout.preferredHeight: 50
                                            Layout.preferredWidth: 50
                                            radius: 50
                                            color: "#EDEFEC"
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "qrc:/resources/edit2.svg"
                                            }
                                        }
                                        Text
                                        {
                                            text: root.language == "EN" ? qsTr("Edit Card") : qsTr("Редактирай картата")
                                            font.bold: true
                                            font.pixelSize: 18
                                        }
                                    }
                                    RowLayout
                                    {

                                        Layout.fillWidth: true
                                        Layout.topMargin: 20
                                        spacing: 20
                                        Rectangle
                                        {
                                            Layout.preferredHeight: 50
                                            Layout.preferredWidth: 50
                                            radius: 50
                                            color: "#EDEFEC"
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                source: "qrc:/resources/delete.svg"
                                            }
                                        }
                                        Text
                                        {
                                            text: root.language == "EN" ? qsTr("Delete card") : qsTr("Изтрий картата")
                                            font.bold: true
                                            font.pixelSize: 18
                                        }
                                    }

                                    Item{
                                    Layout.fillHeight: true
                                    }
                                }
                            }
                        }
                    }

                ColumnLayout
                {
                    id: cardsLayout
                    anchors.fill: parent
                    visible: true
                    Rectangle
                    {
                        Layout.topMargin: 30
                        Layout.leftMargin: 10
                        Layout.rightMargin: 10
                        color: "#EDEFEC"
                        Layout.fillWidth: true
                        Layout.preferredHeight: 70
                        radius: 10
                        ColumnLayout
                        {
                            anchors.fill: parent

                            RowLayout
                            {

                                Layout.leftMargin:  15
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: parent.height
                                Layout.alignment: Qt.AlignVCenter
                                Rectangle
                                {
                                 Layout.rightMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                 Layout.preferredWidth: 40
                                 Layout.preferredHeight: 40
                                 radius: 40
                                 color: "lightgrey"
                                 Image{
                                    source: "qrc:/resources/plus4.svg"
                                    anchors.centerIn: parent
                                 }
                                }
                                ColumnLayout{
                                    Layout.preferredWidth: parent.width
                                    Layout.preferredHeight: parent.height
                                    Layout.alignment: Qt.AlignVCenter
                                    spacing: -30

                                Text {

                                    text: root.language == "EN" ? qsTr("Order a new card") : qsTr("Поръчай нова карта")
                                    font.bold: true
                                    font.pixelSize: 15

                                }
                                Text
                                {
                                    wrapMode: Text.WordWrap
                                    Layout.fillWidth: true
                                    text: root.language == "EN" ? qsTr("Get another card for this account") : qsTr("Вземи нова карта за този акаунт.")

                                }
                                }
                                Image{
                                    source: "qrc:/resources/left.svg"
                                    rotation: -180
                                    Layout.rightMargin: 20
                                }
                            }


                        }
                    }

                    Rectangle
                    {
                        Layout.topMargin: 30
                        Layout.leftMargin: 10
                        Layout.rightMargin: 10
                        color: "white"
                        Layout.fillWidth: true
                        Layout.preferredHeight: 70
                        radius: 10
                        ColumnLayout
                        {
                            anchors.fill: parent
                            RowLayout
                            {
                                Layout.leftMargin:  15
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: parent.height
                                Layout.alignment: Qt.AlignVCenter
                                Image
                                {
                                 Layout.rightMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                 source: "qrc:/resources/smallcard.png"


                                }
                                ColumnLayout{
                                    Layout.preferredWidth: parent.width
                                    Layout.preferredHeight: parent.height
                                    Layout.alignment: Qt.AlignVCenter
                                    spacing: -30

                                Text {

                                    text: root.language == "EN" ? qsTr("Digital card **** 4812") : qsTr("Дигитална карта **** 4812")
                                    font.bold: true
                                    font.pixelSize: 15

                                }
                                Text
                                {
                                    wrapMode: Text.WordWrap
                                    Layout.fillWidth: true
                                    text: root.language == "EN" ? qsTr("Ready for use") : qsTr("Готова за използване")

                                }
                                }
                                Image{
                                    source: "qrc:/resources/left.svg"
                                    rotation: -180
                                    Layout.rightMargin: 20
                                }
                            }

                        }

                        MouseArea
                        {
                            anchors.fill: parent

                            onClicked:
                            {
                                root.stackviewActive = true
                                stackview.push(firstPage)
                                cardsLayout.visible = false
                                stackview.visible = true
                            }
                        }
                    }

                    Rectangle
                    {
                        Layout.topMargin: 30
                        Layout.leftMargin: 10
                        Layout.rightMargin: 10
                        color: "white"
                        Layout.fillWidth: true
                        Layout.preferredHeight: 70
                        radius: 10
                        ColumnLayout
                        {
                            anchors.fill: parent
                            RowLayout
                            {

                                Layout.leftMargin:  15
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: parent.height
                                Layout.alignment: Qt.AlignVCenter
                                Image
                                {
                                 Layout.rightMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                 source: "qrc:/resources/smallcard2.png"


                                }
                                ColumnLayout{
                                    Layout.preferredWidth: parent.width
                                    Layout.preferredHeight: parent.height
                                    Layout.alignment: Qt.AlignVCenter
                                    spacing: -30

                                Text {

                                    text: root.language == "EN" ? qsTr("Digital card **** 6431") : qsTr("Дигитална карта **** 6431")
                                    font.bold: true
                                    font.pixelSize: 15

                                }
                                Text
                                {
                                    wrapMode: Text.WordWrap
                                    Layout.fillWidth: true
                                    text: root.language == "EN" ? qsTr("Ready for use") : qsTr("Готова за използване")

                                }
                                }
                                Image{
                                    source: "qrc:/resources/left.svg"
                                    rotation: -180
                                    Layout.rightMargin: 20
                                }
                            }

                        }
                    }
                    Item {
                        Layout.fillHeight: true
                    }
                }
            }


        }

            Rectangle {
                visible: !root.stackviewActive
                Layout.fillHeight: true
                Layout.preferredWidth: parent.width * 0.3
                Layout.alignment: Qt.AlignRight
                color: "white"

                ChartView {
                    id: chart
                    title: "Chart"
                    anchors.fill: parent
                    legend.alignment: Qt.AlignBottom
                    antialiasing: true

                    property variant othersSlice: 0

                    PieSeries {
                        id: pieSeries
                        PieSlice { label: "Card 1"; value: 13.5; color: "#DA4747" }  // Custom color
                        PieSlice { label: "Card 2"; value: 10.9; color: "#9F2E2E" }      // Custom color
                        PieSlice { label: "Card 3"; value: 8.6; color: "#711818" }         // Custom color
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

    NavbarMobile
    {
        isPhone: root.isPhone
        username: root.username
        fullName: root.fullName
    }


}
