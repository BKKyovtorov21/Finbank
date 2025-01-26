import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Timeline
Window {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height

    minimumWidth: 400
    minimumHeight: 800
    property bool isTablet: width <= 900
    property bool isPhone: width <= 500

    property string fullName
    property string username
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
            var transaction = isReceiving ? "Receiving" : "Sending";
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
            Layout.alignment: Qt.AlignTop
            spacing: 8 // Adjust spacing between icon and TextField
            Image {
                id: name
                source: "qrc:/resources/logo1.png"
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
                    width: 69
                    height: 16
                    anchors.top: fullname.bottom
                    anchors.topMargin: 10
                    anchors.left: fullname.left
                    text: "@" + root.username
                    anchors.verticalCenter: userpfp.verticalCenter
                }
            }

        }
        Item
        {
            Layout.preferredHeight: 40
        }

        RowLayout
        {
            Layout.leftMargin: 30
            Button
            {
                Layout.preferredHeight: 30
                Layout.preferredWidth: 30
            background:Rectangle
            {
                radius: 25
                border.width: 1
                border.color: "#D4D4D4"

                Image
                {
                    anchors.centerIn: parent
                    source: "qrc:/resources/left.svg"
                }
                Text
                {
                    anchors.left: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Back")
                }
            }
            onClicked:
            {
                loader.source = "Dashboard.qml"
                loader.item.usernameRef = root.username
                loader.item.fullName = root.fullName
                root.visible = false
            }
            }
            Item
            {
                Layout.fillWidth: true
            }
            Button
            {
                background: Text
                {
                    text: qsTr("Overview");
                }
            }
            Button
            {
                background: Text
                {
                    text: qsTr("Wallet");
                }
            }
            Button
            {
                background: Text
                {
                    text: qsTr("Transactions");
                }
            }
            Button
            {
                background: Text
                {
                    text: qsTr("Trading");
                }
            }
            Button
            {
                background: Text
                {
                    text: qsTr("Settings");
                }
            }
            Item
            {
                Layout.preferredWidth: 5
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
            Text
            {
                text: qsTr("Total balances")
            }
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
                    text: qsTr("Send")
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
                onClicked:
                {
                    loader.source = "SelectRecipent.qml"
                    loader.item.username = root.username
                    loader.item.fullName = root.fullName
                    root.visible = false;
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
                    text: qsTr("Request")
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
                    text: qsTr("Convert")
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
        RowLayout
        {
            Image
            {
                source: "qrc:/resources/usd.png"
            }
            Text
            {
                text: qsTr("1000.00 USD")
            }
        }
        RowLayout
        {
            Layout.leftMargin: 60
            Text
            {
                text: qsTr("1 USD = 1.78 BGN, as of today ")
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
            placeholderText: qsTr("Search")
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
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.left: parent.left
                anchors.leftMargin: 5
            }

        }
        Text
        {
            Layout.topMargin: 20
            text: qsTr("Today, 5 December")
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
                text: "1 USD = 1,78 BGN, as of today"
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
                    ListElement {source: "qrc:/resources/rightArrow2.svg"; text: "Send";rotation: -90; method1: true}
                    ListElement {source: "qrc:/resources/rightArrow2.svg"; text: "Request"; rotation: 90}
                    ListElement {source: "qrc:/resources/convert.svg"; text: "Convert"; rotation: 0}
                    ListElement {source: "qrc:/resources/more.svg"; text: "More"; rotation: 0}
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
                        MouseArea
                        {
                            anchors.fill: parent
                            onClicked:
                            {
                                bottomDrawer.open();
                            }
                        }
                    }

                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: options.bottom
                        anchors.topMargin: 5
                        text: model.text
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
                            text: "Transactions"
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
                                    text: "Filter"
                                    font.pixelSize: 20
                                }
                            }
                        }
                        Text
                        {
                            text: "Today 7 December"
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
                                        }
                                    }
                                }
                            }
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
                                                        font.pixelSize: 25
                                                        Layout.preferredHeight: 30
                                                        Layout.leftMargin: 30
                                                        Layout.topMargin: 15
                                                        font.bold: true
                                                        text: qsTr("Where would you send
the money?")
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
                                                            text: "New Recipent"
                                                            font.bold: true
                                                            font.pixelSize: 18
                                                        }
                                                        Text
                                                        {
                                                            width: parent.width - 100
                                                            anchors.left: method1.left
                                                            anchors.top: method1.top
                                                            anchors.topMargin: 30
                                                            text: "Send money to people whose contact you don't have"
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
                                                            text: "Contact"
                                                            font.bold: true
                                                            font.pixelSize: 18
                                                        }
                                                        Text
                                                        {
                                                            width: parent.width - 100
                                                            anchors.left: method2.left
                                                            anchors.top: method2.top
                                                            anchors.topMargin: 30
                                                            text: "Send money to one of the contact lists I have"
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
                                                            text: "My Self"
                                                            font.bold: true
                                                            font.pixelSize: 18
                                                        }
                                                        Text
                                                        {
                                                            width: parent.width - 100
                                                            anchors.left: method3.left
                                                            anchors.top: method3.top
                                                            anchors.topMargin: 30
                                                            text: "Withdraw the balance of money to my local bank account"
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

                                                        onClicked:
                                                        {
                                                            loader.source = "SelectRecipent.qml"
                                                            loader.item.username = root.username
                                                            loader.item.fullName = root.fullName
                                                            root.visible = false;
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
