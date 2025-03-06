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
    property string firstName
    property string lastName
    property var pfp
    property string recipentFullname: "Boyan Kiovtorov"
    property string recipentEmail: "boyankiovtorov@gmail.com"
    property string recipentPfp: "https://lh3.googleusercontent.com/a/ACg8ocIa1jbyu-TgykKd00j16jb4N8H-tzeI4GCBsMI8BJ5OSbssUA=s96-c"

    property string sendingCurrency
    property string recipentCurrency
    property bool sending: false
    property var stackViewRef

    Loader
    {
        id: loader
        source: ""
    }
    Dialog {
        id: sentDialog
        modal: true
        dim: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent
        width: 400
        height: 400

        background: Rectangle {
            color: "#142000" // Dark green background
            radius: 12
        }

        contentItem: Column {
            spacing: 5
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            // Confetti Ribbon Image
            AnimatedImage {
                source: "qrc:/resources/done.gif" // Replace with the actual GIF file
                width: 200
                height: 200
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
            }

            // "ALL SENT" Text
            Text {
                text: "ALL SENT"
                font.bold: true
                font.pixelSize: 24
                color: "#A7E063" // Light green text
                anchors.horizontalCenter: parent.horizontalCenter
            }

            // Description text
            Text {
                text: "Your money's there, just like that."
                font.pixelSize: 14
                color: "#C0D9AF"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            // "Done" Button
            Button {
                text: "Done"
                width: parent.width - 80
                height: 40
                anchors.horizontalCenter: parent.horizontalCenter
                background: Rectangle {
                    color: "#A7E063" // Light green
                    radius: 20
                }
                onClicked:
                {
                    sentDialog.close()
                    contentLoader.source = "Dashboard.qml"

                }

            }
        }
    }

    Component.onCompleted:
    {
        var userComponent = Qt.createComponent("FoundUser.qml");
        if (userComponent.status === Component.Ready) {
            var userInstance = userComponent.createObject(recipentRectangle, {
                fullName: root.recipentFullname,
                email: root.recipentEmail,
                pfp: root.recipentPfp,
                "isPhone": true,
                y: root.isPhone ? -24 : -10
            });

        }
    }

    ColumnLayout
    {
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
        RowLayout {
                Layout.fillWidth: true
                spacing: 10

                ColumnLayout {
                    visible: !root.isTablet
                    spacing: 25
                    Layout.preferredWidth: 180
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
                            source: "qrc:/resources/tick.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Select recipient") : qsTr("Избери получател")
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
                            source: "qrc:/resources/tick.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Аmоunt") : qsTr("Стойност")
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
                            source: "qrc:/resources/tick.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Details recipient") : qsTr("Данни на получателя")
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
                            source: "qrc:/resources/tick.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Transfer type") : qsTr("Тип превод")
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
                            source: "qrc:/resources/selectiveLine.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Начална страница")
                        font.pixelSize: 20
                        font.bold: true
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
                                text: root.language == "EN" ? qsTr("5|5 Dashboard") : qsTr("5|5 Начална страница")
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
                                    width: parent.width / 5 * 5
                                    height: 3
                                    color: "#016DFC"
                                }
                            }

                        }



                        Text
                        {

                            horizontalAlignment: Qt.AlignHCenter
                            Layout.fillWidth: true
                            font.pixelSize: root.isPhone ? 25 : (root.isTablet ? 30 : 40)
                            font.bold: true
                            Layout.topMargin: root.isTablet ? 0 : (root.isPhone ? 0 : 30)
                            Layout.bottomMargin: root.isTablet ? 0 : (root.isPhone ? 0 : 50)
                            text: root.language == "EN" ? qsTr("Review details of your transfer") : qsTr("Преглед на данните за превода")
                        }

                        Rectangle
                        {
                            id: recipentRectangle
                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20

                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter



                            color: "#FFFFFF"

                            Layout.leftMargin: root.isPhone ? 10 : 0



                        }

                        RowLayout
                        {
                            Layout.topMargin: 10
                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {

                                text: root.language == "EN" ? qsTr("Trasnfer details") : qsTr("Детайли за превод")
                                font.bold: true
                                font.pixelSize: 20
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 200 : (root.isTablet ? 335 : 475)

                            }

                            Text
                            {

                                text: root.language == "EN" ? qsTr("Edit") : qsTr("Редактирай")
                                color: "#6D9CDF"
                                font.pixelSize: 17
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        Rectangle
                        {
                            Layout.topMargin: -20
                            Layout.preferredWidth: root.isPhone ? 400 : (root.isTablet ? 525 : 660)

                            Layout.alignment: Qt.AlignHCenter

                            Layout.preferredHeight: 1
                            color: "#B2B2B2"

                        }
                        ColumnLayout{
                            Layout.topMargin: -10
                            spacing: 10
                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {

                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: root.language == "EN" ? qsTr("You send") : qsTr("Ти прати")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 199 : (root.isTablet ? 349 : 474)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "$1.000 USD"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: root.language == "EN" ? qsTr("Finbank fees") : qsTr("Finbank такси")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 200 : (root.isTablet ? 355 : 480)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "$5 USD"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.fillWidth: true
                            }
                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: root.language == "EN" ? qsTr("Payment method fees") : qsTr("Такси за плащане")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 140 : (root.isTablet ? 285 : 408)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "$5 USD"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: root.language == "EN" ? qsTr("You will pay") : qsTr("Ти ще платиш")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 143 : (root.isTablet ? 305 : 435)

                            }

                            Text
                            {
                                text: "$1,010.00 USD"
                                font.bold: true
                                font.pixelSize: 20
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        Rectangle {
                            id: overviewRectangle
                            Layout.preferredWidth: root.isPhone ? 370 : (root.isTablet ? 540 : 670)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20
                            Layout.alignment: Qt.AlignHCenter
                            Layout.topMargin: 10
                            color: "#F6F7F9"
                            Layout.leftMargin: root.isPhone ? 10 : 0

                            ColumnLayout {
                                Item {
                                    Layout.topMargin: root.isPhone ? 5 : (root.isTablet ? 10 : 15)
                                }
                                Text {
                                    Layout.leftMargin: 15
                                    text: root.language == "EN" ? qsTr("Boyan will get") : qsTr("Боян ще получи")
                                    font.pixelSize: 17
                                }
                                Text {
                                    Layout.leftMargin: 15
                                    text: root.language == "EN" ? qsTr("Conversion rate 1CAD = 11.205,44IDR") : qsTr("1CAD = 11.205,44IDR")
                                    color: "lightgray"
                                }
                                Item {
                                    Layout.leftMargin: 30
                                }
                            }

                            Text {
                                text: "$1,435.6 CAD"
                                font.pixelSize: 17
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.right: parent.right
                                anchors.rightMargin: 15
                            }
                        }
                        }
                        RowLayout
                        {
                            Layout.topMargin: 15
                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {

                                text: root.language == "EN" ? qsTr("Recipient details") : qsTr("Детайли на получателя")
                                font.bold: true
                                font.pixelSize: 20
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 180 : (root.isTablet ? 335 : 460)

                            }

                            Text
                            {

                                text: root.language == "EN" ? qsTr("Edit") : qsTr("Редактирай")
                                color: "#6D9CDF"
                                font.pixelSize: 17
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        Rectangle
                        {
                            Layout.topMargin: -10
                            Layout.preferredWidth: root.isPhone ? 400 : (root.isTablet ? 525 : 660)

                            Layout.alignment: Qt.AlignHCenter

                            Layout.preferredHeight: 1
                            color: "#B2B2B2"

                        }
                        ColumnLayout
                        {
                        spacing: 10

                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "Email"
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 120 : (root.isTablet ? 273 : 395)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "boyankiovtorov@gmail.com"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: root.language == "EN" ? qsTr("Account Holder") : qsTr("Притежател на акаунта")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 150 : (root.isTablet ? 300 : 425)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "Boyan Kiovtorov"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "Routing number"
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 170 : (root.isTablet ? 323 : 445)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "**** 4238"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }
                        }
                        RowLayout
                        {

                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.rightMargin: 0
                                Layout.fillWidth: true
                            }
                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: root.language == "EN" ? qsTr("Bank name") : qsTr("Име на банката")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 100 : (root.isTablet ? 248 : 375)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "Bulgarian National Bank"
                            }
                            Item
                            {
                                Layout.fillWidth: true
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
                        text: root.language == "EN" ? qsTr("Back") : qsTr("Връщане")
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
                        contentLoader.source = "TransferType.qml"
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
                        sentDialog.open();
                    }
                }


            }

    }
}
