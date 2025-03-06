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
    property string language: "EN" // Default language

    property string recipentFullname: "Boyan Kiovtorov"
    property string recipentEmail: "boyankiovtorov@gmail.com"
    property string recipentPfp: "https://lh3.googleusercontent.com/a/ACg8ocIa1jbyu-TgykKd00j16jb4N8H-tzeI4GCBsMI8BJ5OSbssUA=s96-c"

    property string sendingCurrency: "USD"
    property string recipentCurrency: "CAD"
    property var stackViewRef
    property real convertedAmount
    property real exchangeRate
    property bool sending: false
    property string language: "EN"

    Loader { id: loader; source: "" }

    ColumnLayout {
        anchors.fill: parent
        RowLayout {
            visible: !root.isTablet
            spacing: 8
            Image { id: name; source: !root.isTablet ? "qrc:/resources/logo1.png" : "qrc:/resources/pfp.jpg" }
            Rectangle {
                id: account
                Layout.preferredWidth: 177
                Layout.preferredHeight: 56
                color: "#fafafa"
                radius: 10
                border.color: "#727272"
                border.width: 0.1
                Text {
                    anchors.centerIn: parent
                    color: "#2f2f2f"
                    font.pixelSize: 18
                    text: root.language == "EN" ? qsTr("Personal account") : qsTr("Личен акаунт")
                }
            }
            Rectangle {
                Layout.preferredWidth: 128
                Layout.preferredHeight: 56
                color: "#fafafa"
                radius: 10
                border.color: "#727272"
                border.width: 0.1
                Text {
                    text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Табло")
                    anchors.centerIn: parent
                    color: "#196e1a"
                    font.pixelSize: 18
                }
            }
            TextField {
                id: searchField
                Layout.fillWidth: true
                placeholderText: root.language == "EN" ? qsTr("Search") : qsTr("Търсене")
                placeholderTextColor: "grey"
                font.pixelSize: 18
                color: "black"
            }
            Rectangle {
                Image { id: element5; source: "qrc:/resources/chat.svg" }
                Text {
                    id: chatText
                    text: root.language == "EN" ? qsTr("Chat") : qsTr("Чат")
                    font.pixelSize: 15
                    anchors.centerIn: parent
                }
                Layout.preferredWidth: 80
                Layout.preferredHeight: 50
                color: "#fafafa"
            }
        }
        ColumnLayout {
            visible: !root.isTablet
            spacing: 25
            Layout.preferredWidth: 200
            Layout.fillHeight: true
            Layout.topMargin: 280
            RowLayout {
                Layout.fillWidth: true
                Image { source: "qrc:/resources/tick.svg" }
                Text {
                    text: root.language == "EN" ? qsTr("Select Recipient") : qsTr("Избор на получател")
                    font.pixelSize: 20
                }
            }
            RowLayout {
                Layout.fillWidth: true
                Image { source: "qrc:/resources/tick.svg" }
                Text {
                    text: root.language == "EN" ? qsTr("Amount") : qsTr("Сума")
                    font.pixelSize: 20
                }
            }
            RowLayout {
                Layout.fillWidth: true
                Image { source: "qrc:/resources/selectiveLine.svg" }
                Text {
                    text: root.language == "EN" ? qsTr("Details Recipient") : qsTr("Данни за получателя")
                    font.pixelSize: 20
                    font.bold: true
                }
            }
            RowLayout {
                Layout.fillWidth: true
                Image { source: "qrc:/resources/notSelectiveLine.svg" }
                Text {
                    text: root.language == "EN" ? qsTr("Transfer Type") : qsTr("Вид на превода")
                    font.pixelSize: 20
                }
            }
            RowLayout {
                Layout.fillWidth: true
                Image { source: "qrc:/resources/notSelectiveLine.svg" }
                Text {
                    text: root.language == "EN" ? qsTr("Overview") : qsTr("Преглед")
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
                                text: "Send money"
                                color: "grey"
                                font.pixelSize: 15
                                horizontalAlignment: Text.AlignHCenter
                            }
                            Text
                            {
                                Layout.fillWidth: true
                                text: "3|5 Recipent Details"
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
                            Layout.fillWidth: true
                            font.pixelSize: root.isTablet ? 30 :40
                            font.bold: true
                            text: qsTr("Select recipent bank destination")
                            wrapMode: Text.WordWrap

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
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 15

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
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 15

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
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 15

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
                        text: "Continue"
                        color: "white"
                    }
                    onClicked: {
                        contentLoader.setSource("TransferType.qml", {
                                            username: root.username,
                                            fullName: root.fullName
                                        })

                            }
                }


            }

    }

