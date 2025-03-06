import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Timeline
import QtCharts
Item {
    id: rootdashboard
    property var stackViewRef
    width: Screen.width
    height: Screen.height
    visible: true
    property bool test: width <= 1300
    property bool test2: width <= 1100
    property bool isTablet: width <= 1000
    property bool isPhone: width <= 620

        property var usernameRef
       property var balance
       property var income
       property var expenses
       property var cardInfo
       property var fullName
       property var pfp
    property bool textfieldActive


    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            textField.focus = false
        }
    }


    Component.onCompleted: {

        balanceAnimation.running = true
        incomeAnimation.running = true
        expenseAnimation.running = true
        pie1Animation.running = true
        pie2Animation.running = true

                balance = dashboard.getDbVariable(rootdashboard.usernameRef, "balance");
                income = dashboard.getDbVariable(rootdashboard.usernameRef, "income");
                expenses = dashboard.getDbVariable(rootdashboard.usernameRef, "expenses");
                rootdashboard.cardInfo = dashboard.getDbVariable(rootdashboard.usernameRef, "cardNumber");
                rootdashboard.firstName = dashboard.getDbVariable(rootdashboard.usernameRef, "first_name");
                rootdashboard.lastName = dashboard.getDbVariable(rootdashboard.usernameRef, "last_name");
                rootdashboard.pfp = dashboard.getDbVariable(rootdashboard.usernameRef, "pfp");



        }
    ColumnLayout
    {
        visible: !rootdashboard.isTablet
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
                source: !rootdashboard.isTablet ? "resources/logo1.png" : "resources/pfp.jpg"
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

            Item
            {
                Layout.fillWidth: true
            }
            Rectangle {
                id: searchRowRect
Layout.preferredWidth: rootdashboard.test2 ? 250 : (rootdashboard.test ? 300 : 550)
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
                        source: "resources/search.svg"
                        Layout.preferredWidth: 20
                        Layout.preferredHeight: 20
                        Layout.alignment: Qt.AlignVCenter
                        Layout.leftMargin: 10
                    }

                    Text {
                        Layout.alignment: Qt.AlignVCenter
                        text: "Search"
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
                                source: "resources/command.svg"
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
                    text: "Boyan Kyovtorov"
                }

                Text {
                    x: 112
                    y: 39
                    width: 69
                    height: 16
                    anchors.top: fullname.bottom
                    anchors.topMargin: 10
                    anchors.left: fullname.left
                    text: "@kyovtorov"
                }
            }

        }

        RowLayout
        {
            spacing: 10
            Layout.topMargin: 40

            Text {
                text: qsTr("Good afternoon, Boyan")
                font.pixelSize: !rootdashboard.isTablet ? 35 : 15
                font.bold: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop // Combine alignment flags
                Layout.leftMargin: 15
            }


            Item
            {

                Layout.fillWidth: true
            }

            Text
            {

                    id: overviewPage
                    text: qsTr("Overview")
                    color: "#367C21"
                    font.pixelSize: 15
                    font.bold: true


            }

            Text
            {


                    id: transactions
                    text: qsTr("Transactions")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:{
                        if (rootdashboard.stackViewRef) {
                                    rootdashboard.stackViewRef.push(Qt.resolvedUrl("Transactions.qml"), {
                                        username: rootdashboard.usernameRef,
                                        fullName: rootdashboard.fullName,
                                        stackViewRef: rootdashboard.stackViewRef
                                    });
                                }
                        else {
                            console.error("stackViewRef is undefined in SignIn.qml");
                        }
                    }
                }
            }
            Text
            {


                    id: tradingPageButton
                    text: qsTr("Trading")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5
                    Layout.rightMargin: 20


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:{
                        if (rootdashboard.stackViewRef) {
                                    rootdashboard.stackViewRef.push(Qt.resolvedUrl("TradingDashboard.qml"), {
                                        username: rootdashboard.usernameRef,
                                        fullName: rootdashboard.fullName,
                                        stackViewRef: rootdashboard.stackViewRef
                                    });
                                }
                        else {
                            console.error("stackViewRef is undefined in SignIn.qml");
                        }
                    }
                }
            }
        }
        RowLayout
        {

            Text
            {
               text: qsTr("This is your finance report")
               Layout.alignment: Qt.AlignTop | Qt.AlignLeft
               Layout.topMargin: 10
               Layout.leftMargin: 20
               font.pixelSize: 20
               color: "#2F2F2F"
               opacity: 0.7

            }
        }
        GridLayout {
                columns: 4
                columnSpacing: 10

                Layout.fillWidth: true
                Layout.fillHeight: true

                // First rectangle
                Rectangle {
                    Layout.column: 0
                    border.width: 1
                    border.color: "#727272"
                    Layout.preferredHeight: 186
                    Layout.preferredWidth: 420
                    Layout.leftMargin: 10

                    radius: 10

                    Text {

                        color: "#b3000000"
                        text: qsTr("My balance")
                        font.pointSize: 16
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                    }
                    ColumnLayout
                    {
                        id:sd
                        anchors.fill: parent
                    RowLayout {
                        id: textRow
                        Layout.fillWidth: true
                        Layout.preferredHeight: 48
                        Layout.alignment: Qt.AlignHCenter
                        Layout.topMargin: 40

                        Text {
                            property real balanceValue: rootdashboard.balance
                            visible: !rootdashboard.isPhone
                            id: balance
                            color: "black"
                            text: "$" + balanceValue.toFixed(2)
                            font.pixelSize: 40
                            Layout.alignment: Qt.AlignLeft
                            SequentialAnimation on balanceValue {
                                id: balanceAnimation
                                NumberAnimation {
                                    running: false
                                    loops: 1
                                    from: 0.0
                                    to: 8753.31
                                    duration: 3000
                                }
                            }


                        }

                        Text {

                            id: percent
                            text: qsTr("+6.7%")
                            color: "#249226"
                            font.pixelSize: 20
                            Layout.alignment: Qt.AlignRight
                        }
                        Text {
                               text: qsTr("Compared to last month")
                               font.pixelSize: 15
                               color: "#2f2f2f" // Optional for styling
                               Layout.leftMargin: 10
                        }
                    }


                        Text {
                            Layout.fillWidth: true
                            Layout.preferredHeight: 20
                            Layout.rightMargin: 10
                            Layout.leftMargin: 20
                            id: fdfd
                            text: qsTr("**** **** ****  2472")
                            Layout.alignment: Qt.AlignBottom
                            font.pixelSize: 20

                        }


                    RowLayout
                    {
                        Layout.leftMargin: 5
                        spacing: 15
                        Layout.fillHeight: true
                        Layout.fillWidth: true


                        Button
                        {
                            Layout.fillWidth: true
                            Layout.preferredHeight: 37
                            background: Rectangle {
                                id: rectangle_28

                                color: "#367c21"
                                radius: 8
                                anchors.left: parent.left
                                anchors.top: parent.top
                            }
                            MouseArea
                            {
                                anchors.fill: parent
                                onClicked:{
                                    if (rootdashboard.stackViewRef) {
                                                rootdashboard.stackViewRef.push(Qt.resolvedUrl("Transactions.qml"), {
                                                    username: rootdashboard.usernameRef,
                                                    fullName: rootdashboard.fullName,
                                                    stackViewRef: rootdashboard.stackViewRef
                                                });
                                            }
                                    else {
                                        console.error("stackViewRef is undefined in SignIn.qml");
                                    }
                                }
                            }
                            Text {
                                id: send_money

                                color: "#ececec"
                                text: qsTr("Send money")
                                font.pixelSize: 22
                                anchors.centerIn: parent
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                            }
                        }

                        Button
                        {
                            Layout.fillWidth: true
                            Layout.preferredHeight: 37
                            background: Rectangle {
                                id: rectangle_29

                                color: "#33d9d9d9"
                                radius: 8
                                border.color: "#727272"
                                border.width: 0.3
                                anchors.left: parent.left
                                anchors.top: parent.top
                            }

                            Text {
                                id: request_money

                                color: "#367c21"
                                text: qsTr("Request money")
                                anchors.left: parent.left
                                anchors.top: parent.top
                                anchors.leftMargin: 22
                                anchors.topMargin: 5
                                font.pixelSize: 22
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                            }
                        }
                    }
                    Item
                    {
                        Layout.fillHeight: true
                    }
                }

                }

                // Second rectangle
                Rectangle {

                    Layout.column: 1
                    border.width: 1
                    border.color: "#727272"
                    Layout.preferredHeight: 186
                    Layout.fillWidth: true
                    radius: 10

                    Item {
                        id: group_5
                        x: 22
                        y: 11
                        width: 40
                        height: 40
                        Rectangle {
                            id: ellipse_7
                            width: 40
                            height: 40
                            anchors.left: parent.left
                            anchors.top: parent.top
                            radius: 25
                            color: "#d9d9d9"

                            antialiasing: true
                        }

                        Rectangle {
                            id: ellipse_6
                            width: 36
                            height: 36
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 2
                            anchors.topMargin: 2
                            radius: 50
                            color: "#ffffff"

                            antialiasing: true
                        }

                        Item {
                            id: group1
                            x: 5
                            y: 5

                            width: parent.width - 10
                            height: parent.height - 10
                            Image {
                                id: element18
                                anchors.centerIn: parent
                                source: "resources/income.svg"
                                antialiasing: true
                                fillMode: Image.PreserveAspectFit

                            }


                        }
                    }

                    Text {
                        id: monthly_Income
                        width: parent.width
                        height: 23
                        color: "#000000"
                        text: qsTr("Monthly Income")
                        anchors.top: parent.top
                        anchors.topMargin: 63
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                    }
                    Text {
                        property real incomeValue: dashboardwindowDesktop.incomeValue
                        id: income
                        width: parent.width
                        color: "#000000"
                        text: "$" + incomeValue.toFixed(2)
                        anchors.top: parent.top
                        anchors.topMargin: 92
                        font.pixelSize: width > 1000 ? 32 : 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Normal

                        SequentialAnimation on incomeValue {
                            id: incomeAnimation
                            NumberAnimation {
                                running: false
                                loops: 1
                                from: 0.0
                                to: 2403.84
                                duration: 2000
                            }
                        }
                    }

                    Text {
                        id: element13
                        width: 55
                        height: 26
                        color: "#249226"
                        text: qsTr("+6,7%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 14
                        anchors.topMargin: 144
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.Normal
                    }

                    Text {
                        id: compared_to_last_month1
                        width: 141
                        height: 17
                        color: "#b22f2f2f"
                        text: qsTr("Compared to last month")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 74
                        anchors.topMargin: 145
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Normal
                    }
                }

                // Third rectangle
                Rectangle {


                    Layout.column: 2
                    border.width: 1
                    border.color: "#727272"
                    Layout.preferredHeight: 186
                    Layout.fillWidth: true

                    radius: 10

                    Text {
                        id: element17
                        width: 52
                        height: 26
                        color: "#d6453e"
                        text: qsTr("-8,6%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 15
                        anchors.topMargin: 144
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.Normal
                    }

                    Text {
                        id: compared_to_last_month2
                        width: 141
                        height: 17
                        color: "#b22f2f2f"
                        text: qsTr("Compared to last month")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 74
                        anchors.topMargin: 145
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Normal
                    }

                    Item {
                        id: group_7
                        x: 22
                        y: 11
                        width: 40
                        height: 40
                        Rectangle {
                            id: ellipse_5
                            width: 40
                            height: 40
                            anchors.left: parent.left
                            anchors.top: parent.top
                            radius: 25
                            color: "#d9d9d9"

                            antialiasing: true
                        }

                        Rectangle {
                            id: ellipse_8
                            width: 36
                            height: 36
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 2
                            anchors.topMargin: 2
                            radius: 50
                            color: "#ffffff"

                            antialiasing: true
                        }

                        Item {
                            id: group3
                            x: 5
                            y: 5

                            width: parent.width - 10
                            height: parent.height - 10
                            Image {
                                id: element12
                                anchors.centerIn: parent
                                source: "resources/expenses.svg"
                                antialiasing: true
                                fillMode: Image.PreserveAspectFit

                            }


                        }
                    }

                    Text {
                        id: monthly_Expenses
                        width: parent.width
                        height: 23
                        color: "#000000"

                        text: qsTr("Monthly Expenses")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.topMargin: 63
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                    }

                    Text {
                        property real expensesValue: dashboardwindowDesktop.expensesValue
                        id: expenses
                        width: parent.width

                        color: "#000000"
                        text: "$" + expensesValue.toFixed(2)
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 8
                        anchors.topMargin: 92
                        font.pixelSize: width > 1000 ? 32 : 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Normal

                        SequentialAnimation on expensesValue {
                            id:expenseAnimation
                            NumberAnimation {
                                running: false
                                from: 0.0
                                to: 157
                                duration: 2000
                            }
                        }
                    }
                }

                // Rectangle spanning below the first three
                Rectangle {
                    Layout.row: 1
                    Layout.column: 0
                    Layout.columnSpan: 3
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    radius: 10


                    ChartView {


                        id: chart
                        title: "Money Flow"
                        anchors.fill: parent
                        legend.alignment: Qt.AlignTop
                        backgroundColor: "transparent"
                        antialiasing: true


                        // Custom Background Stripes
                        Rectangle {
                            anchors.fill: parent
                            color: "transparent"
                            opacity: 0.1
                            Canvas {
                                anchors.fill: parent
                                onPaint: {
                                    var ctx = getContext("2d");
                                    ctx.strokeStyle = "white";
                                    ctx.lineWidth = 1;
                                    for (var i = -height; i < width; i += 20) {
                                        ctx.beginPath();
                                        ctx.moveTo(i, 0);
                                        ctx.lineTo(i + height, height);
                                        ctx.stroke();
                                    }
                                }
                            }
                        }

                        StackedBarSeries {
                            id: mySeries
                            barWidth: 0.8  // Adjust width for rounded effect
                            axisX: BarCategoryAxis {
                                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
                            }
                            axisY: ValuesAxis { min: 0; max: 20000 }

                            // Income (Dark Green)
                            BarSet {
                                label: "Income"
                                color: "#0D4428"  // Dark green
                                values: [12000, 8000, 9500, 10200, 8700, 15600, 14000, 13200, 8900, 11000, 12500, 13800]
                            }

                            // Expense (Light Green)
                            BarSet {
                                label: "Expense"
                                color: "#C3F281"  // Light green
                                values: [4000, 3000, 4200, 3600, 3100, 5600, 4800, 5000, 3500, 3900, 4200, 4700]
                            }
                        }

                        // Overlay to create rounded bars
                        Repeater {
                            model: 12  // For each month
                            Rectangle {
                                width: chart.width / 14
                                height: (mySeries.barSets[0].values[index] + mySeries.barSets[1].values[index]) / 20000 * chart.height
                                radius: width / 2
                                color: "#0D4428"
                                opacity: 0.9
                                anchors.horizontalCenter: chart.left
                                y: chart.height - height
                            }
                        }

                        // Tooltip for Hover
                        Rectangle {
                            id: tooltip
                            visible: false
                            width: 120
                            height: 50
                            radius: 8
                            color: "black"
                            opacity: 0.85
                            Text {
                                id: tooltipText
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onPositionChanged: {
                                var index = Math.floor(mouseX / (chart.width / 12)); // Find the hovered month
                                tooltipText.text = "Income: $" + mySeries.barSets[0].values[index] + "\nExpense: $" + mySeries.barSets[1].values[index];
                                tooltip.x = mouseX - tooltip.width / 2;
                                tooltip.y = mouseY - 60;
                                tooltip.visible = true;
                            }
                            onExited: tooltip.visible = false
                        }
                    }

                }

                // Side rectangle
                Rectangle {
                    Layout.row: 0
                    Layout.rowSpan: 2
                    Layout.column: 3
                    Layout.fillHeight: true
                    Layout.fillWidth: true

ColumnLayout
{
    anchors.fill: parent

    Rectangle {
        Layout.preferredHeight: parent.height * 0.4
        Layout.preferredWidth: parent.width
        border.width: 1
        radius: 20
        border.color: "#E7E6E9"

        ColumnLayout {
            anchors.fill: parent

            Text {
                text: "My Card"
                font.pixelSize: 20
                Layout.leftMargin: 10
                Layout.topMargin: 10
            }

            Flickable {
                id: flickable
                Layout.preferredHeight: rootdashboard.test2 ? 95 : (rootdashboard.test ? 110 : 140)
                Layout.preferredWidth: parent.width
                contentWidth: (cardRepeater.count + 1) * (cardWidth + spacing) + spacing // +1 for the "Add Card" button
                flickableDirection: Flickable.HorizontalFlick
                clip: true
                Layout.leftMargin: 30

                property int cardWidth: rootdashboard.test2 ? 150 : (rootdashboard.test ? 190 : 250)
                property int cardHeight: rootdashboard.test2 ? 95 : (rootdashboard.test ? 110 : 140)
                property int spacing: 10

                ListModel {
                    id: cardModel
                    ListElement { cardImage: "resources/minimalistbg1.png"; cardNumber: "5435 2735 0037 0015"; cardHolder: "BOYAN KYOVTOROV"; logo: "resources/visa.svg" }
                    ListElement { cardImage: "resources/minimalistbg2.png"; cardNumber: "1234 5678 9101 1121"; cardHolder: "ALEXANDER PETROV"; logo: "resources/mastercard.svg" }
                }

                Row {
                    spacing: flickable.spacing

                    Repeater {
                        id: cardRepeater
                        model: cardModel
                        delegate: Item {
                            width: flickable.cardWidth
                            height: flickable.cardHeight

                            Image {
                                width: parent.width
                                height: parent.height
                                source: model.cardImage
                                fillMode: Image.Stretch

                                ColumnLayout {
                                    anchors.fill: parent

                                    Item { Layout.fillHeight: true }

                                    Text {
                                        text: model.cardNumber
                                        font.letterSpacing: 2
                                        color: "white"
                                        Layout.leftMargin: rootdashboard.test2 ? 5 : 10
                                        font.pixelSize: rootdashboard.test2 ? 9 : 14
                                        Layout.bottomMargin: 5
                                    }

                                    RowLayout {
                                        Layout.preferredWidth: parent.width
                                        Text {
                                            text: model.cardHolder
                                            color: "white"
                                            Layout.leftMargin: 10
                                            font.pixelSize: 14
                                            Layout.bottomMargin: 5
                                        }

                                        Image {
                                            visible: !rootdashboard.test2
                                            Layout.alignment: Qt.AlignRight
                                            source: model.logo
                                            Layout.rightMargin: 15
                                            Layout.bottomMargin: 5
                                        }
                                    }
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        flickable.contentX = x - (flickable.width - flickable.cardWidth) / 2
                                    }
                                }
                            }
                        }
                    }

                    // "Add Card" Button
                    Rectangle {
                        width: flickable.cardWidth
                        height: flickable.cardHeight
                        color: "#EDEFF1"
                        radius: 10
                        border.color: "#CCCCCC"

                        Text {
                            text: "+"
                            font.pixelSize: 40
                            font.bold: true
                            color: "#888888"
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                console.log("Add New Card Clicked!")
                                // You can add functionality here to open a form or add a new card dynamically
                            }
                        }
                    }
                }
            }

            Text {
                text: "Spending Limit"
                Layout.leftMargin: 15
                color: "#3F4149"
            }

            RowLayout {
                Text {
                    text: "$4,654.00"
                    Layout.leftMargin: 15
                    font.pixelSize: rootdashboard.test2 ? 14 : 20
                    font.bold: true
                }
                Text {
                    text: "used from 12,645.00"
                    font.pixelSize: 8
                    color: "grey"
                }
            }

            RowLayout {
                Layout.preferredWidth: parent.width
                Layout.leftMargin: 15
                Rectangle {
                    Layout.preferredWidth: parent.width * 0.3
                    Layout.preferredHeight: 5
                    color: "#0E754E"
                    radius: 5
                }
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 5
                    Layout.rightMargin: 15
                    color: "#EDEFF1"
                    radius: 5
                }
            }

            Item {
                Layout.fillHeight: true
            }
        }
    }
                    Rectangle
                    {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        border.width: 1
                        radius: 20
                        border.color: "#E7E6E9"

                    ColumnLayout
                    {
                        anchors.fill: parent


                            Text
                            {
                                text: "All Expenses"
                                font.pixelSize: 20
                                font.bold: true
                                Layout.leftMargin: 15
                                Layout.topMargin: 15
                            }

                        Text
                        {
                            text: "Total"
                            font.bold: true
                            color: "#92949E"
                            Layout.leftMargin: 15
                            Layout.topMargin: 10
                            font.pixelSize: 20
                        }

                        Text
                        {
                            text: "$24,645"
                            font.bold: true
                            font.pixelSize: 30
                            font.letterSpacing: 1
                            Layout.leftMargin: 20

                        }

                        RowLayout
                        {
                            Layout.leftMargin: 10
                            Layout.preferredWidth: parent.width
                            Text
                            {
                                text: "Daily"
                            }
                            Text
                            {
                                text: "Weekly"
                            }
                            Text
                            {
                                text: "Monthly"
                            }
                        }
                        RowLayout
                        {
                            Layout.leftMargin: 10
                            Layout.preferredWidth: parent.width
                            Text
                            {
                                text: "$1,345"
                            }
                            Text
                            {
                                text: "$7,136"
                            }
                            Text
                            {
                                text: "$14,927"
                            }
                        }
                        RowLayout
                        {
                            Layout.preferredWidth: parent.width - 20
                            Layout.preferredHeight: 50
                            Layout.leftMargin: 10
                            Layout.rightMargin: 10

                            spacing: 0
                            Rectangle
                            {
                              Layout.preferredWidth: parent.width * 0.45
                              Layout.preferredHeight: 50
                              color: "#FD7115"
                              radius: 5
                            }
                            Rectangle
                            {
                              Layout.preferredWidth: parent.width * 0.25
                              Layout.preferredHeight: 50
                              color: "#FBB525"
                              radius: 5
                            }
                            Rectangle
                            {
                              Layout.preferredWidth: parent.width * 0.10
                              Layout.preferredHeight: 50
                              color: "#E7A622"
                              radius: 5
                            }
                            Rectangle
                            {
                              Layout.preferredWidth: parent.width * 0.20
                              Layout.preferredHeight: 50
                              color: "#19C786"
                              radius: 5
                            }
                        }

                        Item
                        {
                            Layout.preferredHeight: 40
                        }

                        RowLayout
                        {
                            Layout.preferredWidth: parent.width
                            Layout.preferredHeight: 30
                            Layout.leftMargin: 15

                            Rectangle
                            {
                                Layout.preferredHeight: 15
                                Layout.preferredWidth: 15
                                color: '#FD7115'
                                radius: 3
                            }
                            Text
                            {
                                text: "Food & Health"
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                Layout.alignment: Qt.AlignRight
                                text: "7,320"
                                Layout.rightMargin: 10
                            }
                        }

                        RowLayout
                        {
                            Layout.preferredWidth: parent.width
                            Layout.preferredHeight: 30
                            Layout.leftMargin: 15

                            Rectangle
                            {
                                Layout.preferredHeight: 15
                                Layout.preferredWidth: 15
                                color: '#FBB525'
                                radius: 3
                            }
                            Text
                            {
                                text: "Entertainments"
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                Layout.alignment: Qt.AlignRight
                                text: "4,875"
                                Layout.rightMargin: 10
                            }
                        }
                        RowLayout
                        {
                            Layout.preferredWidth: parent.width
                            Layout.preferredHeight: 30
                            Layout.leftMargin: 15

                            Rectangle
                            {
                                Layout.preferredHeight: 15
                                Layout.preferredWidth: 15
                                color: '#E7A622'
                                radius: 3
                            }
                            Text
                            {
                                text: "Shopping"
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                Layout.alignment: Qt.AlignRight
                                text: "6,150"
                                Layout.rightMargin: 10
                            }
                        }
                        RowLayout
                        {
                            Layout.preferredWidth: parent.width
                            Layout.preferredHeight: 30
                            Layout.leftMargin: 15

                            Rectangle
                            {
                                Layout.preferredHeight: 15
                                Layout.preferredWidth: 15
                                color: '#19C786'
                                radius: 3
                            }
                            Text
                            {
                                text: "Investment"
                                Layout.fillWidth: true
                            }

                            Text
                            {
                                Layout.alignment: Qt.AlignRight
                                text: "6,300"
                                Layout.rightMargin: 10
                            }
                        }


                        Item
                        {
                            Layout.fillHeight: true
                        }
                    }
                    }

                    }
                }
            }
    }

    Rectangle
    {
        visible: rootdashboard.isTablet
        anchors.fill: parent
        color: "#FCFBFC"
    }

    ColumnLayout
    {
        visible: rootdashboard.isTablet
        anchors.fill: parent
        RowLayout{
            Layout.topMargin: 30
            Layout.preferredWidth: parent.width
            Layout.leftMargin: 40
            ColumnLayout
            {
                Text{
                text: "Hi, Boyan"
                font.pixelSize: 30
                }
                Text{
                    text:"Welcome back!"
                    font.pixelSize: 20
                    color: "#C6C6C6"
                }
            }

            Image{
                Layout.alignment: Qt.AlignRight
                id: notification
                Layout.preferredHeight: 30
                Layout.preferredWidth: 30
                source: "resources/mingcute--notification-line.svg"
            }
            Rectangle {
                width: 16
                height: 16
                radius: width / 2
                color: "red"
                Layout.leftMargin: -20
                Layout.topMargin: -20
                anchors.margins: 15
                Text {
                    text: "6"
                    color: "white"
                    font.pixelSize: 12
                    anchors.centerIn: parent
                    }
                }
        }
        ColumnLayout
        {
            Layout.preferredHeight: 100
            Layout.preferredWidth: parent.width
        Text {
            Layout.topMargin: 40
            Layout.leftMargin: 40
            font.pixelSize: 20
            color: "#C6C6C6"
            font.bold: true
            text: "Wallet Balance"
        }
        RowLayout{
            Layout.preferredWidth: parent.width
            Text{
                text: "$17,298.20"
                font.pixelSize: 40
                Layout.leftMargin: 40

                font.letterSpacing: 2
            }
            Image{
                source:"resources/eye.svg"
                Layout.leftMargin: 5
                Layout.topMargin: 2
            }
            Item {
                Layout.fillWidth: true
            }

            Text
            {

                    text: qsTr("Overview")
                    color: "#367C21"
                    font.pixelSize: 15
                    font.bold: true


            }

            Text
            {


                    text: qsTr("Transactions")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:{
                        if (rootdashboard.stackViewRef) {
                                    rootdashboard.stackViewRef.push(Qt.resolvedUrl("Transactions.qml"), {
                                        username: rootdashboard.usernameRef,
                                        fullName: rootdashboard.fullName,
                                        stackViewRef: rootdashboard.stackViewRef
                                    });
                                }
                        else {
                            console.error("stackViewRef is undefined in SignIn.qml");
                        }
                    }
                }
            }
            Text
            {

                    text: qsTr("Trading")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5
                    Layout.rightMargin: 20


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:{
                        if (rootdashboard.stackViewRef) {
                                    rootdashboard.stackViewRef.push(Qt.resolvedUrl("TradingDashboard.qml"), {
                                        username: rootdashboard.usernameRef,
                                        fullName: rootdashboard.fullName,
                                        stackViewRef: rootdashboard.stackViewRef
                                    });
                                }
                        else {
                            console.error("stackViewRef is undefined in SignIn.qml");
                        }
                    }
                }
            }
        }
        }
        RowLayout {
            Layout.leftMargin: 20
            Layout.topMargin: 40
            spacing: 20


            Text {
                text: "Cards"
                font.pixelSize: 15
                font.bold: true
                color: "#144618"
            }
                Rectangle {
                    // TO DO aj naprawi go neshtatnik
                    width: 50
                    height: 50
                    radius: 25
                    color: "lightgreen"
                    Rectangle {
                        width: 25
                        height: 25
                        radius: 12.5
                        color: "darkgreen"
                        anchors.centerIn: parent
                        Text {

                            text: "+"
                            font.pixelSize: 20
                            color: "white"
                            font.bold: true
                            anchors.centerIn: parent
                            anchors.verticalCenterOffset: -1.8
                            anchors.horizontalCenterOffset: -0.2
                        }
                    }
                }


            // Credit Cards

            RowLayout {
                spacing: 20 // Space between credit cards
                Image {
                    Layout.preferredWidth: 230
                    Layout.preferredHeight: rootdashboard.isPhone ? 120 : 150
                    source: "resources/minimalistbg1.png"


                    clip: true

                    ColumnLayout
                    {
                        anchors.fill: parent
                        spacing: -100
                        Image
                        {
                            Layout.alignment: Qt.AlignRight | Qt.AlignTop

                            source: "resources/bgn.png"
                            Layout.preferredWidth: 30
                            Layout.preferredHeight: 30
                            Layout.rightMargin: 10
                            Layout.topMargin: 10

                        }

                        Text {
                            id: cardNumbers

                            text: "**** 2515"
                            font.pixelSize: rootdashboard.isPhone ? 15 : 20
                            font.bold: true
                            color: "white" // White text for contrast
                            Layout.leftMargin: 10

                        }
                        RowLayout
                        {
                            Layout.preferredWidth: parent.width
                            Layout.alignment: Qt.AlignBottom
                            Layout.bottomMargin: 10
                            Text
                            {

                                text: "BOYAN KYOVTOROV"
                                font.bold: true
                                color: "white"
                                font.pixelSize: 10
                                font.letterSpacing: 2
                                Layout.leftMargin: 10
                            }

                            Image
                            {
                                Layout.alignment: Qt.AlignRight | Qt.AlignBottom

                                source: "resources/visa.svg"

                                Layout.rightMargin: 10


                            }
                        }

                    }


                    }

                Image {
                    visible: !rootdashboard.isPhone
                    Layout.preferredWidth: 230
                    Layout.preferredHeight: rootdashboard.isPhone ? 120 : 150
                    source: "resources/minimalistbg2.png"


                    clip: true
                    ColumnLayout
                    {
                        anchors.fill: parent
                        spacing: -100
                        Image
                        {
                            Layout.alignment: Qt.AlignRight | Qt.AlignTop

                            source: "resources/usd.png"
                            Layout.preferredWidth: 30
                            Layout.preferredHeight: 30
                            Layout.rightMargin: 10
                            Layout.topMargin: 10

                        }

                        Text {

                            text: "**** 2515"
                            font.pixelSize: rootdashboard.isPhone ? 15 : 20
                            font.bold: true
                            color: "white" // White text for contrast
                            Layout.leftMargin: 10

                        }
                        RowLayout
                        {
                            Layout.preferredWidth: parent.width
                            Layout.alignment: Qt.AlignBottom
                            Layout.bottomMargin: 10
                            Text
                            {

                                text: "VICHO VICHEV"
                                font.bold: true
                                color: "white"
                                font.pixelSize: 10
                                font.letterSpacing: 2
                                Layout.leftMargin: 10
                            }

                            Image
                            {
                                Layout.alignment: Qt.AlignRight | Qt.AlignBottom

                                source: "resources/mastercard.svg"

                                Layout.rightMargin: 10


                            }
                        }

                    }
                    }
            }


        }

        RowLayout
        {
            Layout.topMargin: 40
            Layout.alignment: Qt.AlignHCenter
            Rectangle
            {
                Layout.preferredHeight: rootdashboard.isPhone ? 60 : 70
                Layout.preferredWidth: rootdashboard.isPhone ? 120 : 180
                Layout.leftMargin: width > 650 ? 40 : 8
                color: "#144618"
                radius: 30
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:{
                        if (rootdashboard.stackViewRef) {
                                    rootdashboard.stackViewRef.push(Qt.resolvedUrl("Transactions.qml"), {
                                        username: rootdashboard.usernameRef,
                                        fullName: rootdashboard.fullName,
                                        stackViewRef: rootdashboard.stackViewRef
                                    });
                                }
                        else {
                            console.error("stackViewRef is undefined in SignIn.qml");
                        }
                    }
                }
                Image
                {
                    id:receive
                    width: 35
                    height: 35
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: rootdashboard.isPhone ? 10 :30
                    source: "resources/receive.svg"
                }
                Text
                {
                    anchors.left: receive.right
                    anchors.leftMargin: rootdashboard.isPhone ? 15 : 25
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Send"
                    font.pixelSize: rootdashboard.isPhone ? 18 : 25
                    color: "#AEE780"
                }
            }


            Rectangle
            {
                Layout.preferredHeight: rootdashboard.isPhone ? 60 : 70
                Layout.preferredWidth: rootdashboard.isPhone ? 130 : 180
                color: "#AEE780"
                radius: 30
               // TO DO:
                 //   aj naprawi go neshtastnik
                Image
                {
                    id:send
                    width: 35
                    height: 35
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: rootdashboard.isPhone ? 10 :30
                    source: "resources/send.svg"
                }
                Text
                {
                    anchors.left: send.right
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    text: "Receive"
                    font.pixelSize: rootdashboard.isPhone ? 18 : 25
                    color: "#144618"
                }
            }

            Rectangle
            {
                Layout.preferredHeight: rootdashboard.isPhone ? 60 : 70
                Layout.preferredWidth: rootdashboard.isPhone ? 130 : 180
                color: "transparent"
                border.width: 2
                border.color: "#144618"
                radius: 30
                // TO DO aj naprawi go neshtatnik
                Text
                {
                    text: "+"
                    id: add
                    font.pixelSize: 30
                    anchors.left: parent.left
                    anchors.leftMargin: rootdashboard.isPhone ? 10 : 20
                    color: "#144618"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: -2
                }

                Text
                {

                    anchors.left: add.right
                    anchors.leftMargin: 5
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: 0
                    text: "Add money"
                    color: "#144618"
                    font.pixelSize: rootdashboard.isPhone ? 15 : 25

                }
            }
        }
        Rectangle
        {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"
            Layout.margins: 10
            radius: 10
            ColumnLayout
            {
                anchors.fill: parent
                RowLayout
                {
                    Layout.preferredWidth: parent.width - 20
                    Layout.preferredHeight: 10
                    Layout.topMargin: 20
                    Layout.leftMargin: 20

                    Text
                    {
                        text: "Recent Activity"
                        font.pixelSize: 20
                    }

                    Text
                    {
                        text: "See Details"
                        font.pixelSize: 20
                        Layout.alignment: Qt.AlignRight
                    }

                }

                Rectangle
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 80
                    Layout.margins: 5

                    RowLayout
                    {
                        anchors.fill: parent

                        Image
                        {
                            Layout.leftMargin: 5
                            source: "resources/billa.png"
                            Layout.preferredHeight: 50
                            Layout.preferredWidth: 50
                        }

                        ColumnLayout
                        {
                            Text
                            {
                               text: "Billa 526 04"
                               font.pixelSize: 16
                               font.bold: true
                            }
                            Text
                            {
                                text: "4 February, 20:47"
                                color: "lightgrey"
                            }
                        }
                        Item
                        {
                            Layout.fillWidth: true
                        }
                        Text
                        {
                            text: "26.04 BGN"
                            font.pixelSize: 16
                            font.bold: true
                            Layout.rightMargin: 10
                        }
                    }
                }
                Rectangle
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 80
                    Layout.margins: 5

                    RowLayout
                    {
                        anchors.fill: parent

                        Image
                        {
                            Layout.leftMargin: 5
                            source: "resources/booking.webp"
                            Layout.preferredHeight: 50
                            Layout.preferredWidth: 50
                        }

                        ColumnLayout
                        {
                            Text
                            {
                               text: "Hotel at Booking.com"
                               font.pixelSize: 16
                               font.bold: true
                            }
                            Text
                            {
                                text: "3 February, 21:22"
                                color: "lightgrey"
                            }
                        }
                        Item
                        {
                            Layout.fillWidth: true
                        }
                        Text
                        {
                            text: "26.04 BGN"
                            font.pixelSize: 16
                            font.bold: true
                            Layout.rightMargin: 10
                        }
                    }
                }
                Rectangle
                {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 80
                    Layout.margins: 5

                    RowLayout
                    {
                        anchors.fill: parent

                        Image
                        {
                            Layout.leftMargin: 5
                            source: "resources/spotify.png"
                            Layout.preferredHeight: 50
                            Layout.preferredWidth: 50
                        }

                        ColumnLayout
                        {
                            Text
                            {
                               text: "Spotify subscription"
                               font.pixelSize: 16
                               font.bold: true
                            }
                            Text
                            {
                                text: "1 February, 12:23"
                                color: "lightgrey"
                            }
                        }
                        Item
                        {
                            Layout.fillWidth: true
                        }
                        Text
                        {
                            text: "26.04 BGN"
                            font.pixelSize: 16
                            font.bold: true
                            Layout.rightMargin: 10
                        }
                    }
                }

                Item
                {
                    Layout.fillHeight: true
                }
            }
        }


        Drawer
        {
            id: chatDrawer
            implicitWidth:350
            implicitHeight: parent.height
            interactive: !rootdashboard.isTablet
            edge: Qt.RightEdge


            background: Rectangle
            {
                color: "#eee"


            }
            contentItem: LayoutItemProxy
            {
                target: expandedSidebar
            }
        }



        Item {
            id: spacer
            Layout.preferredHeight: 50

        }
    }
    Rectangle {
        id: expandedSidebar
        color: "#ddd"
        clip: true

        ColumnLayout {
            anchors.fill: parent

            Text
            {
                Layout.preferredWidth: parent.width
                text: "Chat"
                font.pixelSize: 20
                font.bold: true
            }

            Repeater {
                width: parent.width
                model: ListModel {
                    ListElement { menuText: "Personal" }
                    ListElement { menuText: "Business" }
                    ListElement { menuText: "Company" }
                    ListElement { menuText: "Help" }
                }

                delegate: Item {
                    width: parent.width
                    height: menurow.height

                    Row {
                        id: menurow
                        spacing: 0

                        Item {
                            width: 70
                            height: 50

                            Rectangle {
                                width: 10
                                height: parent.height
                                radius: width / 2
                                anchors.left: parent.left
                                anchors.leftMargin: -radius
                                color: "orange"
                            }

                            Rectangle {
                                width: 40
                                height: 40
                                radius: 8
                                anchors.centerIn: parent
                            }
                        }

                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            text: model.menuText // Use the menuText from the ListModel
                            font.pixelSize: 14
                            color: "#444"
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: selectedMenuIndex = index
                    }
                }
            }
            Item
            {
                Layout.fillHeight: true
            }
        }
    }

    NavbarMobile
    {
        isPhone: rootdashboard.isPhone
        usernameRef: rootdashboard.usernameRef
        fullName: rootdashboard.fullName
    }


}

