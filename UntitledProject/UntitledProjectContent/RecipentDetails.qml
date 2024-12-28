import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Window {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    property bool isTablet: width <= 900
    property bool isPhone: width <= 500
    minimumWidth: 400
    minimumHeight: 800

    property string username
    property string fullName

    property string recipentFullname: "Boyan Kiovtorov"
    property string recipentEmail: "boyankiovtorov@gmail.com"
    property string recipentPfp: "https://lh3.googleusercontent.com/a/ACg8ocIa1jbyu-TgykKd00j16jb4N8H-tzeI4GCBsMI8BJ5OSbssUA=s96-c"


    property string sendingCurrency: "USD"
    property string recipentCurrency: "CAD"
    property real convertedAmount
    property real exchangeRate
    property bool sending: false

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
                    text: qsTr("Personal account")

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
                    text: qsTr("Dashboard")
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

                        placeholderText: qsTr("Search")
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
                    text: qsTr("Chat")
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
                    spacing: 16
                    Layout.preferredWidth: 150
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignTop
                    Layout.topMargin: 100

                    // Sidebar tabs
                    RowLayout
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.leftMargin: 10
                        Image
                        {
                            source: "qrc:/resources/selectiveLine.svg"
                        }
                        Text { text: "Select Recipient" }

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
                        Text { text: "Amount" }

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
                        Text { text: "Details Recipent" }

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
                        Text { text: "Transfer Type" }

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
                        Text { text: "Overview" }

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
                                text: "Send money"
                                color: "grey"
                                font.pixelSize: 15
                                horizontalAlignment: Text.AlignHCenter
                            }
                            Text
                            {
                                Layout.fillWidth: true
                                text: "2|5 Enter amount"
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
                            Layout.topMargin: 50
                            horizontalAlignment: root.isTablet? Qt.AlignLeft :Qt.AlignHCenter
                            Layout.fillWidth: true
                            font.pixelSize: root.isTablet ? 30 :40
                            font.bold: true
                            text: root.isPhone ? qsTr("Select recipent bank
destination") : qsTr("Select recipent bank destination")

                        }

                        Rectangle
                        {
                            id: recipentRectangle
                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20

                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter


                            Layout.topMargin: 30
                            color: "#F6F7F9"

                            Layout.leftMargin: root.isPhone ? 10 : 0



                        }

                        Item
                        {
                            Layout.preferredHeight: 10
                        }
                        Text
                        {
                            text: "Bank account"
                            Layout.preferredWidth: root.isPhone ? 470 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: 20
                            font.pixelSize: 20
                            font.bold: true
                            Layout.alignment: Qt.AlignHCenter

                        }
                        Rectangle
                        {

                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            Layout.topMargin: 10
                            Layout.leftMargin: root.isPhone ? 10 : 0
                            radius: 20
                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter


                            color: "transparent"
                            border.width: 1
                            border.color: "#F2F2F2"

                            RowLayout
                            {

                            anchors.fill: parent

                            Rectangle
                            {
                                Layout.preferredWidth:  40
                                Layout.preferredHeight:  40

                                radius: 40
                                color: "#F7F8FC"
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 15

                                Image
                                {
                                    source: "resources/bank2.svg"
                                    anchors.centerIn: parent
                                    width: 20
                                    height: 20
                                }
                            }

                            ColumnLayout
                            {
                             Layout.preferredWidth: parent.width
                             Layout.preferredHeight: 30
                             Layout.leftMargin: 50
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

                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20

                            color: "transparent"
                            border.width: 1
                            border.color: "#F2F2F2"
                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter
                            Layout.leftMargin: root.isPhone ? 10 : 0


                            RowLayout
                            {

                            Layout.alignment: Qt.AlignHCenter
                            anchors.fill: parent

                            Rectangle
                            {
                                width: 40
                                height: 40

                                radius: 40
                                color: "#F7F8FC"
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 15

                                Image
                                {
                                    source: "resources/bank2.svg"
                                    anchors.centerIn: parent
                                    width: 20
                                    height: 20
                                }
                            }

                            ColumnLayout
                            {
                             Layout.preferredWidth: parent.width
                             Layout.preferredHeight: 30
                             Layout.leftMargin: 50
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

                            Layout.preferredWidth: root.isPhone ? 380 : (root.isTablet ? 530 : 650)
                            Layout.preferredHeight: root.isPhone ? 65 : (root.isTablet ? 75 : 85)
                            radius: 20

                            color: "transparent"
                            border.width: 1
                            border.color: "#F2F2F2"
                            Layout.alignment: root.isPhone ? Qt.AlignLeft : Qt.AlignHCenter
                            Layout.leftMargin: root.isPhone ? 10 : 0


                            RowLayout
                            {

                            Layout.alignment: Qt.AlignHCenter
                            anchors.fill: parent

                            Rectangle
                            {
                                width: 40
                                height: 40

                                radius: 40
                                color: "#F7F8FC"
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 15

                                Image
                                {
                                    source: "resources/bank2.svg"
                                    anchors.centerIn: parent
                                    width: 20
                                    height: 20
                                }
                            }

                            ColumnLayout
                            {
                             Layout.preferredWidth: parent.width
                             Layout.preferredHeight: 30
                             Layout.leftMargin: 50
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
                        loader.source = "Dashboard.qml"
                        loader.item.usernameRef = root.username
                        loader.item.fullName = root.fullName
                        root.visible = false;
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
                        text: "Continue"
                        color: "white"
                    }
                    onClicked: {


                                }
                }


            }

    }
}
