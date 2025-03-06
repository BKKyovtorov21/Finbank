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
    property string language: "EN"

    property string sendingCurrency: "USD"
    property string recipentCurrency: "CAD"
    property var stackViewRef
    property real convertedAmount
    property real exchangeRate
    property bool sending: false
    property string language

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
                        Text { text: root.language == "EN" ? qsTr("Amount") : qsTr("Сума")
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
                        Text { text: root.language == "EN" ? qsTr("Details Recipient") : qsTr("Детайли на получателя")
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
                            source: "qrc:/resources/notSelectiveLine.svg"
                        }
                        Text { text: root.language == "EN" ? qsTr("Тransfer type") : qsTr("Тип превод")
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
                            Layout.preferredWidth: parent.width
                            Text
                            {
                                Layout.preferredWidth: parent.width
                                text: root.language == "EN" ? qsTr("Send Money") : qsTr("Изпрати пари")
                                color: "grey"
                                font.pixelSize: 15
                                horizontalAlignment: Text.AlignHCenter
                            }
                            Text
                            {
                                Layout.preferredWidth: parent.width
                                text: root.language == "EN" ? qsTr("3|5 Recipent Details") : qsTr("3|5 Детайли на получателя")
                                horizontalAlignment: Text.AlignHCenter
                                font.pixelSize: 15
                                font.bold: true
                            }
                            Rectangle
                            {
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: 3
                                color: "lightgrey"
                                Rectangle
                                {
                                    width: parent.width / 5 * 3
                                    height: 3
                                    color: "#016DFC"
                                }
                            }

                        }



                        Text
                        {
                            Layout.topMargin: 50
                            horizontalAlignment: Qt.AlignHCenter
                            Layout.preferredWidth: parent.width
                            font.pixelSize: root.isTablet ? 20 :40
                            font.bold: true
                            text: root.language == "EN" ? qsTr("Select recipient bank destination") : qsTr("Избери банката на получателя")


                        }

                        Rectangle
                        {
                            id: recipentRectangle
                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20


                            Layout.topMargin: 30
                            color: "#F6F7F9"
                            Layout.alignment: Qt.AlignHCenter
                            Layout.leftMargin: root.isPhone ? 10 : 0



                        }

                        Item
                        {
                            Layout.preferredHeight: 10
                        }
                        Text
                        {
                            text: root.language == "EN" ? qsTr("Bank account") : qsTr("Банков профил")
                            Layout.preferredHeight: 20
                            font.pixelSize: 20
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter

                        }
                        Rectangle
                        {
                            id: rectangle

                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            Layout.topMargin: 10
                            Layout.leftMargin: root.isPhone ? 10 : 0
                            radius: 20
                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter


                            color: "transparent"
                            border.width: 1
                            border.color: "#F2F2F2"

                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked: animation1.start()
                            }
                            SequentialAnimation {
                                        id: animation1
                                        loops: 1
                                        running: false // Start this manually
                                        PropertyAnimation {
                                            target: rectangle
                                            property: "border.color"
                                            from: "#F2F2F2"
                                            to: "#2ea46d"
                                            duration: 1000
                                        }
                                    }
                            RowLayout
                            {
                                anchors.fill: parent


                            Rectangle
                            {
                                Layout.preferredWidth:  40
                                Layout.preferredHeight:  40

                                radius: 40
                                color: "#F7F8FC"
                                Layout.alignment: Qt.AlignVCenter
                                Layout.leftMargin: 15

                                Image
                                {
                                    source: "qrc:/resources/bank2.svg"
                                    anchors.centerIn: parent
                                    width: 20
                                    height: 20
                                }
                            }

                            ColumnLayout
                            {
                             Layout.preferredWidth: parent.width
                             Layout.preferredHeight: 30
                             Layout.leftMargin: 15
                             Layout.alignment: Qt.AlignLeft
                             Text
                             {
                                 text: "National bank of Bulgaria"
                                 font.bold: true
                                 font.pixelSize: 20
                             }
                             Text
                             {
                                 text: "**** 2345"
                                 color: "lightgrey"
                                 font.pixelSize: 15
                             }
                            }
                            }

                        }
                        Rectangle
                        {
                            id: rectangle2
                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20

                            color: "transparent"
                            border.width: 1
                            border.color: "#F2F2F2"
                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter
                            Layout.leftMargin: root.isPhone ? 10 : 0

                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked: animation2.start()
                            }

                            SequentialAnimation {
                                        id: animation2
                                        loops: 1
                                        running: false // Start this manually
                                        PropertyAnimation {
                                            target: rectangle2
                                            property: "border.color"
                                            from: "#F2F2F2"
                                            to: "#2ea46d"
                                            duration: 1000
                                        }
                                    }
                            RowLayout
                            {

                            Layout.alignment: Qt.AlignHCenter
                            anchors.fill: parent

                            Rectangle
                            {
                                Layout.preferredHeight: 40
                                Layout.preferredWidth: 40

                                radius: 40
                                color: "#F7F8FC"
                                Layout.alignment: Qt.AlignVCenter
                                Layout.leftMargin: 15

                                Image
                                {
                                    source: "qrc:/resources/bank2.svg"
                                    anchors.centerIn: parent
                                    width: 20
                                    height: 20
                                }
                            }

                            ColumnLayout
                            {
                             Layout.preferredWidth: parent.width
                             Layout.preferredHeight: 30
                             Layout.leftMargin: 15
                             Layout.alignment: Qt.AlignLeft
                             Text
                             {
                                 text: "UniCredit Bulbank"
                                 font.bold: true
                                 font.pixelSize: 20
                             }
                             Text
                             {
                                 text: "**** 2345"
                                 color: "lightgrey"
                                 font.pixelSize: 15
                             }
                            }
                            }

                        }
                        Rectangle
                        {
                            id: rectangle3
                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20

                            color: "transparent"
                            border.width: 1
                            border.color: "#F2F2F2"
                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter
                            Layout.leftMargin: root.isPhone ? 10 : 0

                            SequentialAnimation {
                                        id: animation3
                                        loops: 1
                                        running: false // Start this manually
                                        PropertyAnimation {
                                            target: rectangle3
                                            property: "border.color"
                                            from: "#F2F2F2"
                                            to: "#2ea46d"
                                            duration: 1000
                                        }
                                    }

                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked: animation3.start()
                            }


                            RowLayout
                            {

                            Layout.alignment: Qt.AlignHCenter
                            anchors.fill: parent

                            Rectangle
                            {
                                Layout.preferredHeight: 40
                                Layout.preferredWidth: 40

                                radius: 40
                                color: "#F7F8FC"
                                Layout.alignment: Qt.AlignVCenter
                                Layout.leftMargin: 15

                                Image
                                {
                                    source: "qrc:/resources/bank2.svg"
                                    anchors.centerIn: parent
                                    width: 20
                                    height: 20
                                }
                            }

                            ColumnLayout
                            {
                             Layout.preferredWidth: parent.width
                             Layout.preferredHeight: 30
                             Layout.leftMargin: 15
                             Layout.alignment: Qt.AlignLeft
                             Text
                             {
                                 text: "Banka DSK"
                                 font.bold: true
                                 font.pixelSize: 20
                             }
                             Text
                             {
                                 text: "**** 2345"
                                 color: "lightgrey"
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
                        contentLoader.setSource("SendMoney.qml", {
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
                    onClicked:{
                        contentLoader.setSource("TransferType.qml", {
                                            username: root.username,
                                            language: root.language,
                                            firstName: root.firstName,
                                            lastName: root.lastName,
                                            pfp: root.pfp
                                        })
                    }
                }


            }

    }
}
