import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Rectangle {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    property bool isTablet: width <= 900
    property bool isPhone: width <= 500

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
                source: !root.isTablet ? "resources/logo1.png" : "resources/pfp.jpg"
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
                source: "resources/RightArrows.svg"
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


                            source: "resources/search.svg"
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
                    source: "resources/chat.svg"
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
                    source: "resources/pfp.jpg"
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
                            source: "resources/tick.svg"
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
                            source: "resources/SelectiveLine.svg"
                        }
                        Text { text: "Amount"
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
                            source: "resources/notSelectiveLine.svg"
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
                            source: "resources/notSelectiveLine.svg"
                        }
                        Text { text: "Transfer Type"
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
                            source: "resources/notSelectiveLine.svg"
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
                            horizontalAlignment: root.isTablet? Qt.AlignLeft :Qt.AlignHCenter
                            Layout.fillWidth: true
                            font.pixelSize: root.isTablet ? 30 :40
                            font.bold: true
                            text: root.isTablet ? qsTr("How much do you want
to send") : "How much do you want to send"
                        }

                        RowLayout
                        {
                            Layout.fillWidth: true
                            Item
                            {
                                visible: !root.isPhone
                                Layout.fillWidth: true
                            }

                            Rectangle
                            {
                                Layout.preferredWidth: root.isTablet? 400 : 600
                                Layout.preferredHeight: 60

                                radius: 20
                                color: "#ECEEF4"
                                Rectangle
                                {
                                    id: internationalButton
                                    anchors.top: parent.top
                                    anchors.topMargin: 2
                                    width: parent.width / 2
                                    height: parent.height - 5
                                    color: "white"
                                    anchors.left: parent.left
                                    anchors.leftMargin: 2
                                    radius: 20
                                    Text
                                    {

                                        anchors.centerIn: parent
                                        text: "International"
                                        font.pixelSize: root.isTablet ? 20 : 30
                                    }

                                }
                                Text
                                {
                                    anchors.left: internationalButton.right
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.leftMargin: parent.width / 16
                                    font.pixelSize: root.isTablet ? 20 : 30
                                    text: "Same currency"
                                }

                            }
                            Item
                            {
                                visible: !root.isPhone
                                Layout.fillWidth: true
                            }
                        }

                        Text
                        {
                            text: qsTr("You will send")
                            color: "black"
                            font.pixelSize: 20
                            Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                        }
                        Rectangle
                        {
                            Layout.fillWidth: true
                            Layout.preferredHeight: root.isPhone ? 50 : (root.isTablet ? 60 : 70)
                            radius: 20
                            border.width: 1
                           Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                            Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100
                            TextField
                            {
                                id: currency
                                anchors.fill: parent
                                anchors.margins: 1
                                anchors.rightMargin: 100
                                background:Item{}

                                onTextChanged:
                                {
                                    let baseCurrency = "USD";
                                    let targetCurrency = "CAD";
                                    let amount = 5
                                    stockAPIClient.fetchExchangeRates(baseCurrency);

                                stockAPIClient.exchangeRatesUpdated.connect(function() {
                                    let result = stockAPIClient.convertCurrency(baseCurrency, targetCurrency, amount);
                                });

                                stockAPIClient.errorOccurred.connect(function(errorMessage) {
                                    console.error("Error fetching exchange rates:", errorMessage);
                                });

                                }
                            }

                            Popup {
                                id: currencyPopup
                                visible: false
                                width: 300
                                height: 300
                                clip: true


                                closePolicy: Popup.NoAutoClose
                                Column {
                                    anchors.fill: parent

                                    TextField {
                                        id: searchField3
                                        width: parent.width
                                        height: 30
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.leftMargin: 5
                                        anchors.rightMargin: 5
                                        placeholderText: "Search currency"

                                        onTextChanged: {
                                                        currencyList.filterModel(searchField3.text); // Filter model when text changes
                                                    }
                                    }

                                    ListView {
                                        id: currencyList
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.bottom: parent.bottom
                                        anchors.topMargin: 5
                                        height: parent.height - searchField3.height - 10
                                        clip: true // Ensure content stays within the ListView boundaries

                                        model: filteredModel

                                        delegate: Rectangle {
                                            width: parent.width
                                            height: 70
                                            z: 10

                                            Image {
                                                id: currencyImagePopup
                                                anchors.left: parent.left
                                                anchors.leftMargin: 5
                                                width: 40
                                                height: 40
                                                source: model.image
                                            }

                                            Text {
                                                id: currencyTextPopup
                                                anchors.left: currencyImagePopup.right
                                                anchors.leftMargin: 20
                                                anchors.verticalCenter: parent.verticalCenter
                                                anchors.verticalCenterOffset: -25
                                                text: model.text
                                            }

                                            Text {
                                                id:currencyTicker
                                                anchors.top: currencyTextPopup.bottom
                                                anchors.topMargin: 5
                                                anchors.left: currencyTextPopup.left
                                                color: "#BBBBC0"
                                                text: model.text
                                            }

                                            MouseArea {
                                                anchors.fill: parent
                                                onClicked: {
                                                    currencyPopup.visible = false;
                                                    if(root.sending){
                                                        root.sendingCurrency = currencyTicker.text

                                                    }
                                                    else
                                                    {
                                                        root.e
                                                    }
                                                }
                                            }
                                        }

                                        ListModel {
                                                id: currencyModel
                                                ListElement { image: "resources/usd.png"; text: "USD" }
                                                ListElement { image: "resources/cad.png"; text: "CAD" }
                                                ListElement { image: "resources/jpy.png"; text: "JPY" }
                                                ListElement { image: "resources/usd.png"; text: "More" }
                                                ListElement { image: "resources/usd.png"; text: "More" }
                                            }

                                            // Filtered data model
                                            ListModel {
                                                id: filteredModel
                                            }

                                            // Filtering function
                                            function filterModel(query) {
                                                filteredModel.clear(); // Clear the current filtered model

                                                for (var i = 0; i < currencyModel.count; i++) {
                                                    var item = currencyModel.get(i);
                                                    if (item.text.toLowerCase().indexOf(query.toLowerCase()) !== -1) {
                                                        filteredModel.append(item); // Add matching items to filteredModel
                                                    }
                                                }
                                            }

                                            // Initialize the filtered model with all items
                                            Component.onCompleted: {
                                                filterModel(""); // Populate filteredModel with all items initially
                                            }

                                    }
                                }
                            }
                            Rectangle
                            {
                                id:sendingInfo
                                anchors.right: parent.right
                                height: parent.height
                                width: parent.width - currency.width
                                color: "transparent"
                                RowLayout
                                {
                                    anchors.fill: parent

                                Image
                                {
                                    id: currencyImage
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    source: "resources/usd.png"
                                    Layout.preferredWidth: 30
                                    Layout.preferredHeight: 30
                                }
                                Text
                                {
                                    Layout.rightMargin: 20
                                    text: "USD"
                                    font.pixelSize: 20
                                }
                                }

                                MouseArea
                                {
                                    anchors.fill: parent
                                    onClicked:
                                    {
                                        root.sending = true
                                        currencyPopup.visible = true
                                        currencyPopup.x = sendingInfo.x - sendingInfo.width * 2
                                        currencyPopup.y = sendingInfo.y + 70
                                    }
                                }
                            }
                        }
                        Text
                        {
                            text: "Recipent will get"
                            Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                            font.pixelSize: 20
                        }

                        Rectangle
                        {
                            Layout.fillWidth: true
                            Layout.preferredHeight: root.isPhone ? 50 : (root.isTablet ? 60 : 70)
                            radius: 20
                            border.width: 1
                           Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                            Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100
                            TextField
                            {
                                id: currency2
                                anchors.fill: parent
                                anchors.margins: 1
                                anchors.rightMargin: 100
                                background:Item{}
                            }
                            Rectangle
                            {
                                id: receivingInfo
                                anchors.right: parent.right
                                height: parent.height
                                width: parent.width - currency2.width
                                color: "transparent"
                                RowLayout
                                {
                                    anchors.fill: parent

                                Image
                                {
                                    id: currencyImage2
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                    source: "resources/usd.png"
                                    Layout.preferredWidth: 30
                                    Layout.preferredHeight: 30
                                }
                                Text
                                {

                                    Layout.rightMargin: 20
                                    text: "USD"
                                    font.pixelSize: 20
                                }
                                }
                                MouseArea
                                {
                                    anchors.fill: parent
                                    onClicked:
                                    {
                                        root.sending = false
                                        currencyPopup.visible = true
                                        currencyPopup.x = receivingInfo.x - receivingInfo.width * 2
                                        currencyPopup.y = receivingInfo.y + 200
                                    }
                                }
                            }
                        }
                        Item
                        {
                            Layout.preferredHeight: 40
                        }




                                RowLayout
                                {

                                    Layout.preferredHeight: 20

                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: "Finbank + fees"
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: "$ 5 USD"
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
                                    }

                                }
                                RowLayout
                                {

                                    Layout.preferredHeight: 20
                                    Layout.bottomMargin: 30

                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: "You will pay"
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: "$ 5 USD"
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
                                    }

                                }
                                RowLayout
                                {

                                    Layout.preferredHeight: 20
                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: "Total amount will be converted"
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: "$ 5 USD"
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
                                    }

                                }
                                RowLayout
                                {

                                    Layout.preferredHeight: 20

                                   Layout.leftMargin: !root.isTablet ? 150 : root.isPhone ? 10 : 50
                                    Layout.rightMargin: !root.isTablet ? 200 : root.isPhone ? 10 : 100

                                    Text
                                    {
                                        Layout.fillWidth: true
                                        Layout.alignment: Qt.AlignLeft
                                        text: "Guaranteed Rate (12h)"
                                        color: "grey"
                                        opacity: 0.8
                                        font.pixelSize: root.isPhone ? 15 : 20
                                    }
                                    Text
                                    {
                                        Layout.alignment: Qt.AlignRight
                                        text: "$ 5 USD"
                                        color: "black"
                                        font.pixelSize: root.isPhone ? 15 : 20
                                        font.bold: true
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
