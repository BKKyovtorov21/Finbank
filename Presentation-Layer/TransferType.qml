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

    property string sendingCurrency
    property string recipentCurrency
    property bool sending: false

    Loader
    {
        id: loader
        source: ""
    }


    Connections {
                target: stockAPIClient

                onExchangeRatesUpdated: {
                    console.log("Exchange rates updated:", exchangeRates);
                    // Here you can update the UI with the fetched exchange rates
                }

                onErrorOccurred: {
                    console.log("Error occurred:", errorMessage);
                    // You can show an error message or perform other actions
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
                    spacing: 25
                    Layout.preferredWidth: 280
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
                        Text { text: "Select Recipient"
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
                        Text { text: "Amount"
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
                        Text { text: "Details Recipent"
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
                        Text { text: "Transfer Type"
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
                        Text { text: "Overview"
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
                                text: "4|5 Transfer Type"
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
                                    width: parent.width / 5 * 4
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
                            Layout.topMargin: root.isTablet ? 0 : (root.isPhone ? 0 : 30)
                            Layout.bottomMargin: root.isTablet ? 0 : (root.isPhone ? 0 : 50)
                            text: "Choose your transfer type"
                        }

                        RowLayout
                        {
                            Layout.topMargin: 15
                            Layout.fillWidth: true
                            Layout.preferredHeight: 10
                            Item
                            {
                                Layout.preferredWidth: !root.isTablet ? 100 : 0
                            }
                            Text
                            {
                                text: "Finbank+ transfer type"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                text: "Total fee: $0 USD"
                                color: "#666666"
                            }
                            Item
                            {
                                Layout.preferredWidth: !root.isTablet ? 100 : 0
                            }
                        }
                        Rectangle
                        {
                            Layout.preferredWidth: root.isTablet ? parent.width : parent.width - 200

                            Layout.alignment: !root.isTablet ? Qt.AlignHCenter : Qt.AlignLeft

                            Layout.preferredHeight: 1
                            color: "#B2B2B2"

                        }

                        Rectangle
                        {
                            id: rectangle1
                            Layout.preferredWidth: root.isTablet ? parent.width : parent.width - 200

                            Layout.alignment: !root.isTablet ? Qt.AlignHCenter : Qt.AlignLeft

                            Layout.preferredHeight: 100
                            radius: 20

                            border.width: 1
                            border.color: "white"

                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked: animation1.start();
                            }

                            SequentialAnimation {
                                        id: animation1
                                        loops: 1
                                        running: false // Start this manually
                                        PropertyAnimation {
                                            target: rectangle1
                                            property: "border.color"
                                            from: "white"
                                            to: "#2ea46d"
                                            duration: 1000
                                        }

                                    }
                            ColumnLayout
                            {
                                anchors.fill: parent
                                spacing : -30

                                RowLayout
                                {
                                    Layout.leftMargin:  15
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 10

                                    Rectangle
                                    {
                                     Layout.rightMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                     Layout.preferredWidth: 40
                                     Layout.preferredHeight: 40
                                     radius: 40
                                     color: "lightgrey"
                                     Image
                                     {
                                         anchors.centerIn: parent
                                         source: "qrc:/resources//wallet.svg"
                                     }
                                    }
                                    ColumnLayout{
                                        Layout.topMargin: 30
                                    Text {

                                        text: qsTr("Finbank+ transfer types")

                                    }
                                    Text
                                    {
                                        Layout.preferredHeight: 50
                                        wrapMode: Text.WordWrap
                                        Layout.fillWidth: true
                                        text: qsTr("Use money in your Finbank+ account to pay for your transfer instantly. Should arrive in seconds.")

                                    }
                                    }
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
                                Layout.preferredWidth: !root.isTablet ? 100 : 0
                            }
                            Text
                            {
                                text: "Fast and easy transfer"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                text: "Total fee: $0 USD"
                                color: "#666666"
                            }
                            Item
                            {
                                Layout.preferredWidth: !root.isTablet ? 100 : 0
                            }
                        }
                        Rectangle
                        {
                            Layout.preferredWidth: root.isTablet ? parent.width : parent.width - 200

                            Layout.alignment: !root.isTablet ? Qt.AlignHCenter : Qt.AlignLeft

                            Layout.preferredHeight: 1
                            color: "#B2B2B2"

                        }

                        Rectangle
                        {
                            id: rectangle2
                            Layout.preferredWidth: root.isTablet ? parent.width : parent.width - 200

                            Layout.alignment: !root.isTablet ? Qt.AlignHCenter : Qt.AlignLeft

                            Layout.preferredHeight: 100

                            border.width: 1
                            border.color: "white"
                            radius: 20

                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked: animation2.start();
                            }

                            SequentialAnimation {
                                        id: animation2
                                        loops: 1
                                        running: false // Start this manually
                                        PropertyAnimation {
                                            target: rectangle2
                                            property: "border.color"
                                            from: "white"
                                            to: "#2ea46d"
                                            duration: 1000
                                        }

                                    }
                            ColumnLayout
                            {
                                anchors.fill: parent
                                spacing : -30

                                RowLayout
                                {
                                    Layout.leftMargin:  15
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 10

                                    Rectangle
                                    {
                                        Layout.rightMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                     Layout.preferredWidth: 40
                                     Layout.preferredHeight: 40
                                     radius: 40
                                     color: "lightgrey"
                                     Image
                                     {
                                         anchors.centerIn: parent
                                         source: "qrc:/resources//debitCard.svg"
                                     }
                                    }
                                    ColumnLayout{
                                        Layout.topMargin: 30
                                    Text {

                                        text: qsTr("Debit card")

                                    }
                                    Text
                                    {
                                        Layout.preferredHeight: 50
                                        wrapMode: Text.WordWrap
                                        Layout.fillWidth: true
                                        text: qsTr("Send from your Visa or Mastercad. Should arrive in seconds.")

                                    }
                                    }
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
                                Layout.preferredWidth: !root.isTablet ? 100 : 0
                            }
                            Text
                            {
                                text: "Low cost transfer"
                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                text: "Total fee: $0 USD"
                                color: "#666666"
                            }
                            Item
                            {
                                Layout.preferredWidth: !root.isTablet ? 100 : 0
                            }
                        }
                        Rectangle
                        {
                            Layout.preferredWidth: root.isTablet ? parent.width : parent.width - 200

                            Layout.alignment: !root.isTablet ? Qt.AlignHCenter : Qt.AlignLeft

                            Layout.preferredHeight: 1
                            color: "#B2B2B2"

                        }

                        Rectangle
                        {
                            id: rectangle3
                            Layout.preferredWidth: root.isTablet ? parent.width : parent.width - 200

                            Layout.alignment: !root.isTablet ? Qt.AlignHCenter : Qt.AlignLeft

                            Layout.preferredHeight: 100

                            border.width: 1
                            border.color: "white"
                            radius: 20

                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked: animation3.start();
                            }

                            SequentialAnimation {
                                        id: animation3
                                        loops: 1
                                        running: false // Start this manually
                                        PropertyAnimation {
                                            target: rectangle3
                                            property: "border.color"
                                            from: "white"
                                            to: "#2ea46d"
                                            duration: 1000
                                        }

                                    }

                            ColumnLayout
                            {
                                anchors.fill: parent
                                spacing : -30

                                RowLayout
                                {
                                    Layout.leftMargin:  15
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 10

                                    Rectangle
                                    {
                                    Layout.rightMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                     Layout.preferredWidth: 40
                                     Layout.preferredHeight: 40
                                     radius: 40
                                     color: "lightgrey"
                                     Image
                                     {
                                         anchors.centerIn: parent
                                         source: "qrc:/resources//bank2.svg"
                                     }
                                    }
                                    ColumnLayout{
                                        Layout.topMargin: 30
                                    Text {

                                        text: qsTr("Transfer your money from your bank account")

                                    }
                                    Text
                                    {
                                        Layout.preferredHeight: 50
                                        wrapMode: Text.WordWrap
                                        Layout.fillWidth: true
                                        text: qsTr("Transfer the money using you bank account balance. Should arrive in seconds.")

                                    }
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
                        var component = Qt.createComponent("Overview.qml");
                                if (component.status === Component.Ready) {
                                    var window = component.createObject(null, { "username": root.username, "fullName": root.fullName}); // Pass the variable here
                                    window.visible = true;
                                    root.close();
                                } else {
                                    console.log("Error loading SignIn.qml: " + component.errorString());
                                }
                    }
                }


            }

    }
}
