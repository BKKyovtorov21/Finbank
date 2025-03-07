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
    property var stackViewRef
    property string language: "BG"

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
                    text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Начална страница")
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
                        Text { text: root.language == "EN" ? qsTr("Transfer Type") : qsTr("Тип превод")
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
                        Text { text: "Обобщителна страница";                        font.pixelSize: 20
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
                                text: root.language == "EN" ? qsTr("4|5 Transfer Type") : qsTr("4|5 Тип превод")
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
                            text: root.language == "EN" ? qsTr("Choose your transfer type") : qsTr("Изберeте вашия тип превод")
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
                                text: root.language == "EN" ? qsTr("Finbank+ transfer type") : qsTr("Finbank+ тип превод")
                                font.pixelSize: 17

                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                text: root.language == "EN" ? qsTr("Total fee: $0 USD") : qsTr("Taкса: $0 USD")
                                color: "#666666"
                                font.pixelSize: 17

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
                            RowLayout
                            {
                                anchors.fill: parent
                                spacing : 10

                                    Rectangle
                                    {
                                     Layout.leftMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 15)
                                     Layout.preferredWidth: 40
                                     Layout.preferredHeight: 40
                                     Layout.alignment: Qt.AlignVCenter
                                     radius: 40
                                     color: "#EDEFEC"
                                     Image
                                     {
                                         anchors.centerIn: parent
                                         source: "qrc:/resources/wallet.svg"
                                     }
                                    }
                                    ColumnLayout{
                                        Layout.topMargin: root.isPhone ? 10 : 30
                                        Layout.preferredHeight: parent.height
                                        Layout.preferredWidth: parent
                                    Text {

                                        text: root.language == "EN" ? qsTr("Finbank+ transfer types") : qsTr("Finbank+ тип превод")
                                        color: "black"
                                        font.pixelSize: 17

                                    }
                                    Text
                                    {
                                        Layout.fillHeight:true
                                        font.pixelSize:17
                                        wrapMode: Text.WordWrap
                                        Layout.fillWidth: true
                                        text: root.language == "EN" ? qsTr("Use money in your Finbank+ account to pay for your transfer instantly. Should arrive in seconds.") : qsTr("Използвайте пари във вашата Finbank сметка, за да платите за превода си незабавно. Трябва да пристигне за секунди.")

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
                                text: root.language == "EN" ? qsTr("Fast and easy transfer") : qsTr("Лесен и бърз превод")
                                font.pixelSize: 17

                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                text: root.language == "EN" ? qsTr("Тотаl fees: 5 USD") : qsTr("Такса: 5 USD")
                                color: "#666666"
                                font.pixelSize: 17

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
                            RowLayout
                            {
                                anchors.fill: parent
                                spacing : 10


                                    Layout.leftMargin:  15
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 10

                                    Rectangle
                                    {
                                        Layout.leftMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                     Layout.preferredWidth: 40
                                     Layout.preferredHeight: 40
                                     radius: 40
                                     color: "#EDEFEC"
                                     Image
                                     {
                                         anchors.centerIn: parent
                                         source: "qrc:/resources/card.svg"
                                     }
                                    }
                                    ColumnLayout{
                                        Layout.topMargin: root.isPhone ? 10 : 30
                                    Text {

                                        text: root.language == "EN" ? qsTr("Debit card") : qsTr("Дебитна карта")
                                        font.pixelSize: 17

                                    }
                                    Text
                                    {
                                        Layout.preferredHeight: 50
                                        wrapMode: Text.WordWrap
                                        Layout.fillWidth: true
                                        text: root.language == "EN" ? qsTr("Send from your Visa or MasterCard. Should arrive in seconds.") : qsTr("Изпратете от вашия Visa или MasterCard. Пристига за секунди.")
                                        font.pixelSize: 17

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
                                text: root.language == "EN" ? qsTr("Low cost transfer") : qsTr("Ниско разходен превод")
                                font.pixelSize: 17

                            }
                            Item
                            {
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                text: root.language == "EN" ? qsTr("Тотаl fee: $5 USD") : qsTr("Такса: $5 USD")
                                color: "#666666"
                                font.pixelSize: 17
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

                            RowLayout
                            {
                                anchors.fill: parent
                                spacing : 10



                                    Rectangle
                                    {
                                    Layout.leftMargin: root.isTablet ? 10 : (root.isPhone ? 0 : 12)
                                     Layout.preferredWidth: 40
                                     Layout.preferredHeight: 40
                                     radius: 40
                                     color: "#EDEFEC"
                                     Image
                                     {
                                         anchors.centerIn: parent
                                         source: "qrc:/resources/bank.svg"
                                         anchors.verticalCenterOffset: -1

                                     }
                                    }
                                    ColumnLayout{
                                        Layout.topMargin: root.isPhone ? 10 : 30
                                    Text {

                                        text: root.language == "EN" ? qsTr("Transfer your money from your bank account") : qsTr("Преведи пари от Вашия банков акаунт")
                                        font.pixelSize: 17

                                    }
                                    Text
                                    {
                                        Layout.preferredHeight: 50
                                        wrapMode: Text.WordWrap
                                        Layout.fillWidth: true
                                        text: root.language == "EN" ? qsTr("Transfer the money using you bank account balance. Should arrive in seconds.") : qsTr("Преведете парите, като използвате баланса на банковата си сметка. Пристига до секунди")
                                        font.pixelSize: 17

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
                    onClicked: {
                        contentLoader.setSource("RecipentDescription.qml", {
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
                        contentLoader.setSource("Overview.qml", {
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
