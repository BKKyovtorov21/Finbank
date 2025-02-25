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

    property bool isTablet: width <= 900
    property bool isPhone: width <= 620

        property var usernameRef
       property var balance
       property var income
       property var expenses
       property var cardInfo
       property var fullName
       property var pfp





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
                source: !rootdashboard.isTablet ? "qrc:/resources/logo1.png" : "qrc:/resources/pfp.jpg"
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
                    text: rootdashboard.fullName
                }

                Text {
                    x: 112
                    y: 39
                    width: 69
                    height: 16
                    anchors.top: fullname.bottom
                    anchors.topMargin: 10
                    anchors.left: fullname.left
                    text: "@" + rootdashboard.usernameRef
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


                    id: walletPage
                    text: qsTr("Wallet")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5


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
            Text
            {
                    id: settingsPage
                    text: qsTr("Settings")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5


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
                                source: "qrc:/resources/income.svg"
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
                                source: "qrc:/resources/expenses.svg"
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
                    border.width: 1
                    border.color: "#727272"
                    radius: 10

                    ChartView {
                        id: bar
                        anchors.fill: parent
                        animationOptions: ChartView.SeriesAnimations
                        BarSeries {
                            id: mySeries

                            axisX: BarCategoryAxis {
                                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
                                gridVisible: false
                            }

                            axisY: ValuesAxis {
                                labelFormat: "$%.0f" // Format the labels to include '$' before each value
                                min: 0
                                max: 1200 // Adjust as needed for your data
                            }

                            // BarSet for "Earnings"
                            BarSet {
                                label: "Earnings"
                                values: [800, 850, 900, 950, 1000, 1100] // Example values for each month
                            }

                            // BarSet for "Spendings"
                            BarSet {
                                label: "Spendings"
                                values: [560, 600, 650, 700, 750, 800]
                            }
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
                    border.width: 1
                    border.color: "#727272"
                    radius: 10

                    ColumnLayout
                    {
                        anchors.fill: parent

                        ChartView {
                            id: pie
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            PieSeries {
                                name: "PieSeries"

                                PieSlice {
                                    id: incomePie
                                    value: 0 // Start at 0 to animate "filling"
                                    label: "Income"
                                }

                                PieSlice {
                                    id: expensesPie
                                    value: 0 // Start at 0 to animate "filling"
                                    label: "Expenses"
                                }
                            }
                        }

                        // Sequential animation for "filling" effect
                        SequentialAnimation {
                            id: pie1Animation
                            running: false // Start automatically
                            loops: 1 // Run once

                            NumberAnimation {
                                target: incomePie
                                property: "value"
                                from: 0
                                to: 13.5 // Final value for "Income" slice
                                duration: 1500 // Duration in milliseconds
                                easing.type: Easing.InOutQuad
                            }

                            NumberAnimation {
                                target: expensesPie
                                property: "value"
                                from: 0
                                to: 10.9 // Final value for "Expenses" slice
                                duration: 1500 // Duration in milliseconds
                                easing.type: Easing.InOutQuad
                            }
                        }

                        ChartView {
                            id: pie1
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            PieSeries {
                                name: "PieSeries"

                                PieSlice {
                                    id: stocksPie
                                    value: 0 // Start at 0 to animate "filling"
                                    label: "Stocks"
                                }

                                PieSlice {
                                    id: cryptoPie
                                    value: 0 // Start at 0 to animate "filling"
                                    label: "Crypto"
                                }

                                PieSlice {
                                    id: transferPie
                                    value: 0 // Start at 0 to animate "filling"
                                    label: "Transfers"
                                }
                            }
                        }

                        // Sequential animation for "filling" effect
                        SequentialAnimation {
                            id: pie2Animation

                            running: false // Start automatically
                            loops: 1 // Run once

                            NumberAnimation {
                                target: stocksPie
                                property: "value"
                                from: 0
                                to: 13.5 // Final value for "Stocks" slice
                                duration: 1500 // Duration in milliseconds
                                easing.type: Easing.InOutQuad
                            }

                            NumberAnimation {
                                target: cryptoPie
                                property: "value"
                                from: 0
                                to: 10.9 // Final value for "Crypto" slice
                                duration: 1500 // Duration in milliseconds
                                easing.type: Easing.InOutQuad
                            }

                            NumberAnimation {
                                target: transferPie
                                property: "value"
                                from: 0
                                to: 8.6 // Final value for "Transfers" slice
                                duration: 1500 // Duration in milliseconds
                                easing.type: Easing.InOutQuad
                            }
                        }

                        Timeline {
                            id: timeline
                            animations: [
                                TimelineAnimation {
                                    id: timelineAnimation
                                    running: true
                                    loops: 1
                                    duration: 1000
                                    to: 1000
                                    from: 0
                                }
                            ]
                            startFrame: 0
                            endFrame: 1000
                            enabled: true
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
                source: "qrc:/resources/mingcute--notification-line.svg"
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
            Text{
                text: "$17,298.20"
                font.pixelSize: 40
                Layout.leftMargin: 40

                font.letterSpacing: 2
            }
            Image{
                source:"qrc:/resources/eye.svg"
                Layout.leftMargin: 5
                Layout.topMargin: 2
            }
        }
        }
        RowLayout {
            Layout.leftMargin: 20
            Layout.topMargin: 40
            spacing: 20

            // "Cards" Text
            Text {
                text: "Cards"
                font.pixelSize: 15
                font.bold: true
                color: "#144618"
            }
                Rectangle {
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
                    source: "qrc:/resources/minimalistbg1.png"


                    clip: true
                    Text {
                        id: cardNumbers

                        text: "**** 2515"
                        font.pixelSize: rootdashboard.isPhone ? 15 : 20
                        font.bold: true
                        color: "white" // White text for contrast
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 30
                    }

                    Image
                    {
                        anchors.right: parent.right
                        anchors.rightMargin: -10
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 13

                        source: "qrc:/resources/visa.png"
                        width: 80
                        height: 50
                    }
                    Image
                    {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.rightMargin: 10
                        source: "qrc:/resources/bulgariaflag.png"
                        width: 25
                        height: 25
                        smooth: true
                    }
                    Text
                    {

                        anchors.left: parent.left
                        anchors.top: cardNumbers.bottom
                        anchors.topMargin: 2
                        anchors.leftMargin: 12
                        text: "BOYAN KYOVTOROV"
                        font.bold: true
                        color: "white"
                        font.pixelSize: rootdashboard.isPhone ? 10 : 15
                        font.letterSpacing: 2
                    }
                    }

                Image {
                    visible: !rootdashboard.isPhone
                    Layout.preferredWidth: rootdashboard.isPhone ? 200 : (rootdashboard.isTablet ? 230 : 230)
                    Layout.preferredHeight: rootdashboard.isPhone ? 100 : 150
                    source: "qrc:/resources/minimalistbg2.png"


                    clip: true
                    Text {
                        id: cardNumbers2
                        text: "**** 3411"
                        font.pixelSize: 15
                        font.bold: true
                        color: "white" // White text for contrast
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 30
                    }

                    Image
                    {
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                            anchors.bottomMargin: 20
                        source: "qrc:/resources/mastercard_logo.png"
                        width: 80
                        height: 50
                    }
                    Image
                    {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.rightMargin: 10
                        source: "qrc:/resources/usaflag.png"
                        width: 25
                        height: 25
                        smooth: true
                    }
                    Text
                    {
                        anchors.left: parent.left
                        anchors.top: cardNumbers2.bottom
                        anchors.topMargin: 0
                        anchors.leftMargin: 10
                        text: "VICHO VICHEV"
                        font.bold: true
                        color: "white"
                        font.pixelSize: 10
                        font.letterSpacing: 2
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

                Image
                {
                    id:receive
                    width: 35
                    height: 35
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: rootdashboard.isPhone ? 10 :30
                    source: "qrc:/resources/receive.svg"
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

                Image
                {
                    id:send
                    width: 35
                    height: 35
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: rootdashboard.isPhone ? 10 :30
                    source: "qrc:/resources/send.svg"
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
                            source: "qrc:/resources/billa.png"
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
                            source: "qrc:/resources/booking.webp"
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
                            source: "qrc:/resources/spotify.png"
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
}

