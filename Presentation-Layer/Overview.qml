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

    property string recipentFullname: "Boyan Kiovtorov"
    property string recipentEmail: "boyankiovtorov@gmail.com"
    property string recipentPfp: "https://lh3.googleusercontent.com/a/ACg8ocIa1jbyu-TgykKd00j16jb4N8H-tzeI4GCBsMI8BJ5OSbssUA=s96-c"

    property string sendingCurrency
    property string recipentCurrency
    property bool sending: false
    property var stackViewRef
    property string language: "EN"

    Loader
    {
        id: loader
        source: ""
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
            visible: !root.isTablet
            spacing: 8 // Adjust spacing between icon and TextField
            Image {
                id: name
                source: !root.isTablet ? "qrc:/resources/logo1.png" : "qrc:/qrc:/resources/pfp.jpg"
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
                    text: rootdashboard.language == "EN" ? qsTr("Personal account") : qsTr("Персонален акаунт")

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
                    text: rootdashboard.language == "EN" ? qsTr("Dashboard") : qsTr("Табло за управление")
                    anchors.centerIn: parent
                    color: "#196e1a"
                    font.pixelSize: 18
                }
            }

            Item {
                Layout.fillWidth: true
                Layout.preferredHeight: 30

                RowLayout {

                    anchors.fill: parent // Ensures the layout fills the space
                    anchors.verticalCenterOffset: 50


                    TextField {
                        background: Rectangle
                        {
                            color: "#4dececec"
                        }

                        Image {
                            id: searchIcon
                            fillMode: Image.PreserveAspectFit


                            source: "qrc:/resources/search.svg"
                            anchors.top: parent.top
                            anchors.topMargin: 5
                            anchors.left: parent.left
                            anchors.leftMargin: 5
                        }
                        id: searchField

                        Layout.alignment: Qt.AlignVCenter
                        Layout.fillWidth: true // Make it expand to fill the remaining space

                        placeholderText: rootdashboard.language == "EN" ? qsTr("Search") : qsTr("Търсене")
                        placeholderTextColor: "grey"
                        font.pixelSize: 18
                        color: "black"

                        leftPadding: 30 // Adds space around the text, adjusting the padding as needed
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
                    text: rootdashboard.language == "EN" ? qsTr("Chat") : qsTr("Чат")
                    font.pixelSize: 15
                    anchors.centerIn: parent
                    anchors.horizontalCenterOffset: 10 // Adjust to move text to the right
                }
                Layout.preferredWidth: 80
                Layout.preferredHeight: 50
                color: "#fafafa"
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
                    text: root.fullName
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
                        Text { text: rootdashboard.language == "EN" ? qsTr("Select recipient") : qsTr("Избери получател")
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
                        Text { text: rootdashboard.language == "EN" ? qsTr("Amount") : qsTr("Сума")
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
                        Text { text: rootdashboard.language == "EN" ? qsTr("Details recipient") : qsTr("Детайли на получателя")
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
                        Text { text:rootdashboard.language == "EN" ? qsTr("Transfer type") : qsTr("Вид превод")
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
                        Text { text: rootdashboard.language == "EN" ? qsTr("Overview") : qsTr("Преглед")
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
                                text: rootdashboard.language == "EN" ? qsTr("Send money") : qsTr("Изпрати пари")
                                color: "grey"
                                font.pixelSize: 15
                                horizontalAlignment: Text.AlignHCenter
                            }
                            Text
                            {
                                Layout.fillWidth: true
                                text: rootdashboard.language == "EN" ? qsTr("5|5 Оverview") : qsTr("5|5 Преглед")
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
                            text: rootdashboard.language == "EN" ? qsTr("Review details of your transfer") : qsTr("Преглед на детайли за превода")
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

                                text: rootdashboard.language == "EN" ? qsTr("Transfer details") : qsTr("Детайл за превод")
                                font.bold: true
                                font.pixelSize: 20
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 200 : (root.isTablet ? 335 : 475)

                            }

                            Text
                            {

                                text: rootdashboard.language == "EN" ? qsTr("Еdit") : qsTr("Редактирай")
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
                                text: "You send"
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
                                text: "Finbank fees"
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
                                text: "Payment method fees"
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
                                text: rootdashboard.language == "EN" ? qsTr("You will pay") : qsTr("Ще платиш")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 143 : (root.isTablet ? 305 : 435)

                            }

                            Text
                            {
                                text: "$1.010 USD"
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
                                    text: rootdashboard.language == "EN" ? qsTr("Boyan will get") : qsTr("Боян ще получи ")
                                    font.pixelSize: 17
                                }
                                Text {
                                    Layout.leftMargin: 15
                                    text: "Conversion rate 1CAD = 11.205,44IDR"
                                    color: "lightgray"
                                }
                                Item {
                                    Layout.leftMargin: 30
                                }
                            }

                            Text {
                                text: "$1,361.61 CAD"
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

                                text: rootdashboard.language == "EN" ? qsTr("Recipient details") : qsTr("Детайли за получателя")
                                font.bold: true
                                font.pixelSize: 20
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 180 : (root.isTablet ? 335 : 460)

                            }

                            Text
                            {

                                text: rootdashboard.language == "EN" ? qsTr("Еdit") : qsTr("Редактирай")
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
                                text: "bkyovtorov07@gmail.com"
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
                                text: rootdashboard.language == "EN" ? qsTr("Account Holder") : qsTr("Собственик на профила")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 150 : (root.isTablet ? 300 : 425)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "Boyan Kyovtorov"
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
                                text: rootdashboard.language == "EN" ? qsTr("Bank name") : qsTr("Име на банката")
                            }
                            Item
                            {
                                Layout.preferredWidth: root.isPhone ? 100 : (root.isTablet ? 248 : 375)

                            }

                            Text
                            {
                                font.pixelSize: root.isPhone ? 15 :(root.isTablet ? 17 : 18)
                                text: "DSK bank"
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
                        text: "Back"
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
                        text: rootdashboard.language == "EN" ? qsTr("Continue") : qsTr("Продължи")
                        color: "white"
                    }
                    onClicked: {
                        contentLoader.source = "Dashboard.qml"
                    }
                }


            }

    }
}
