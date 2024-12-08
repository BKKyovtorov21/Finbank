import QtQuick
import QtQuick.Controls
import QtCharts 2.8
import QtQuick.Layouts
import QtQuick.Timeline
import Qt5Compat.GraphicalEffects
Window {
    id: rootdashboard
    width: Screen.width
    height: Screen.height
    minimumWidth: 400
    visible: true
    property bool isTablet: width < 900
    property bool isPhone: width < 500

        property string usernameRef
       property real balance: 3000
       property real income: 3000
       property real expenses: 3000
       property string cardInfo: ""
       property string fullName
       property string pfp: ""

    onVisibleChanged:
    {
        balanceAnimation.running = true
        incomeAnimation.running = true
        expenseAnimation.running = true
        pie1Animation.running = true
        pie2Animation.running = true
        console.log("sds" + rootdashboard.usernameRef)
    }

    Component.onCompleted: {
        console.log("username: " + usernameRef)

            if (usernameRef !== "") {
                balance = dashboard.getDbVariable(usernameRef, "balance");
                income = dashboard.getDbVariable(usernameRef, "income");
                expenses = dashboard.getDbVariable(usernameRef, "expenses");
                cardInfo = dashboard.getDbVariable(usernameRef, "cardNumber");
                firstName = dashboard.getDbVariable(usernameRef, "first_name");
                lastName = dashboard.getDbVariable(usernameRef, "last_name");
                pfp = dashboard.getDbVariable(usernameRef, "pfp");
                userpfp.source = pfp;
            } else {
                console.log("Username is empty");
            }
        }

    Loader
    {
        id: loader
        source: ""
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

                        anchors.verticalCenter: parent.verticalCenter
                        anchors.verticalCenterOffset: -3 // Shift upwards by 5 pixels
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

            Button
            {
                background:Text {
                    id: overviewPage
                    text: qsTr("Overview")
                    color: "#367C21"
                    font.pixelSize: 15

                }
            }

            Button
            {

                background:Text {
                    id: walletPage
                    text: qsTr("Wallet")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
            }
            Button
            {

                background:Text {
                    id: transactions
                    text: qsTr("Transactions")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
                onClicked:
                {
                    loader.source = "Transactions.qml"
                    loader.item.username = rootdashboard.usernameRef
                    loader.item.fullName = rootdashboard.fullName
                    rootdashboard.visible = false
                }
            }
            Button
            {

                background:Text {
                    id: tradingPageButton
                    text: qsTr("Trading")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
                onClicked:
                {
                    loader.source = "TradingDashboard.qml"
                }
            }
            Button
            {

                background:Text {
                    id: settingsPage
                    text: qsTr("Settings")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

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
                        Layout.preferredWidth: parent.width
                        Layout.preferredHeight: 48
                        Layout.topMargin: 10
                        Layout.alignment: Qt.AlignHCenter


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
                            anchors.left: balance.right
                            anchors.leftMargin: 5
                        }
                        Text {
                               text: qsTr("Compared to last month")
                               font.pixelSize: 15
                               color: "#2f2f2f" // Optional for styling
                               Layout.leftMargin: 10
                        }
                    }

                    RowLayout
                    {
                        anchors.fill: parent
                        anchors.topMargin: 88
                        anchors.leftMargin: 20
                        Text {
                            id: fdfd
                            text: qsTr("**** **** ****  2472")
                            anchors.top: balance.bottom
                            font.pixelSize: 20

                        }
                    }

                    RowLayout
                    {
                        anchors.fill: parent
                        anchors.topMargin: 120
                        anchors.leftMargin: 10
                        spacing: 190
                        Button
                        {
                            background: Rectangle {
                                id: rectangle_28
                                width: 200
                                height: 37
                                color: "#367c21"
                                radius: 8
                                anchors.left: parent.left
                                anchors.top: parent.top
                            }

                            Text {
                                id: send_money
                                width: 125
                                height: 28
                                color: "#ececec"
                                text: qsTr("Send money")
                                anchors.centerIn: rectangle_28
                                font.pixelSize: 22
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                            }
                        }

                        Button
                        {
                            background: Rectangle {
                                id: rectangle_29
                                width: 200
                                height: 37
                                color: "#33d9d9d9"
                                radius: 8
                                border.color: "#727272"
                                border.width: 0.3
                                anchors.left: parent.left
                                anchors.top: parent.top
                            }

                            Text {
                                id: request_money
                                width: 156
                                height: 28
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
                        width: 138
                        height: 23
                        color: "#000000"
                        text: qsTr("Monthly Income")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 16
                        anchors.topMargin: 63
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                    }
                    Text {
                        property real incomeValue: dashboardwindowDesktop.incomeValue
                        id: income
                        width: 174
                        height: 40
                        color: "#000000"
                        text: "$" + incomeValue.toFixed(2)
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 14
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
                        width: 153
                        height: 23
                        color: "#000000"
                        text: qsTr("Monthly Expenses")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 15
                        anchors.topMargin: 63
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                    }

                    Text {
                        property real expensesValue: dashboardwindowDesktop.expensesValue
                        id: expenses
                        width: 174
                        height: 40
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
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: 200
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
                            width: parent.width
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

    RowLayout {
            id: layouttablet
            anchors.fill: parent
            visible: rootdashboard.isTablet  // Corrected to 'isTablet'
            //visible: true
            Rectangle {
                visible: !rootdashboard.isPhone

                color: "#F7F7F7"
                Layout.fillHeight: true
                Layout.preferredWidth: 70

                ColumnLayout
                {

                    anchors.fill: parent
                    spacing: 10
                    Item
                    {
                        height:30
                    }

                    Rectangle
                    {
                        width:50
                        height: 50
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
                        width:50
                        height: 50
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
                        width:50
                        height: 50
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
            }

            Rectangle {
                color: "#F7F7F7"
                Layout.fillWidth: true
                Layout.fillHeight: true

                Flickable {
                    id: flickable
                    anchors.fill: parent
                    contentWidth: parent.width
                    contentHeight: columnLayout.implicitHeight
                    clip: true

                    ColumnLayout {
                        id: columnLayout
                        width: parent.width
                        implicitHeight: 1500
                        spacing: 20
                    RowLayout
                    {
                        anchors.fill: parent
                        anchors.topMargin: 50
                        anchors.leftMargin: 35
                        Text {
                            visible: !isPhone
                            id:test
                            text: qsTr("Good evening, Boyan")
                            font.pixelSize: 20

                            font.bold: true
                        }

                        Item {
                            anchors.right: parent.right
                            anchors.rightMargin: 150
                            anchors.top: parent.top
                            anchors.topMargin: 10

                            width: 30
                            height: 30

                            // Circular arc
                            Rectangle {
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent
                                color: "#727272"
                                opacity: 0.3
                                radius:180
                                antialiasing: true
                            }

                            // Arrow centered in the circle
                            Item {
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent

                                Image
                                {
                                    anchors.centerIn: parent
                                    rotation: -180
                                    source: "qrc:/resources/rightArrow.svg"
                                    fillMode: Image.PreserveAspectFit

                                }
                            }
                            Text {

                                text: qsTr("Request")
                                anchors.top: parent.bottom
                                anchors.right: parent.right
                                anchors.rightMargin: -12
                            }
                        }

                        Item {
                            anchors.right: parent.right
                            anchors.rightMargin: 20
                            anchors.top: parent.top
                            anchors.topMargin: 10

                            width: 30
                            height: 30

                            // Circular arc
                            Rectangle {
                                id: circle2
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent
                                color: "#727272"

                                opacity: 0.3
                                antialiasing: true

                                radius: 180
                            }

                            // Arrow centered in the circle
                            Item {
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent

                                Image
                                {
                                    anchors.centerIn: parent
                                    fillMode: Image.PreserveAspectFit

                                    source: "qrc:/resources/analytics.svg"
                                }
                                Text {

                                    width: 55
                                    height: 16

                                    text: qsTr("Analytics")
                                    anchors.top: parent.bottom
                                    anchors.right: parent.right
                                    anchors.rightMargin: -15
                                    anchors.topMargin: 1
                                }
                            }

                        }
                        Item {
                            anchors.right: parent.right
                            anchors.rightMargin: 85
                            anchors.top: parent.top
                            anchors.topMargin: 10

                            width: 30
                            height: 30

                            // Circular arc
                            Rectangle {
                                id: circle5
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent
                                anchors.left: parent.left
                                anchors.leftMargin: 100
                                color: "#727272"

                                opacity: 0.3
                                antialiasing: true

                                radius: 180
                            }

                            // Arrow centered in the circle
                            Item {
                                width: parent.width
                                height: parent.height
                                anchors.left: parent.left

                                Image
                                {
                                    anchors.centerIn: parent
                                    fillMode: Image.PreserveAspectFit

                                    source: "qrc:/resources/rightArrow.svg"
                                }
                                Text {

                                    text: qsTr("Send")
                                    anchors.top: parent.bottom
                                    anchors.right: parent.right
                                    anchors.rightMargin: 2
                                }
                            }

                        }


                    }

                    TextField {
                        background: Rectangle
                        {
                            color: "white"
                            radius: 20
                        }
                        Image {
                            id: searchIcon2
                            fillMode: Image.PreserveAspectFit

                            source: "qrc:/resources/search.svg"
                            anchors.top: parent.top
                            anchors.topMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 5

                        }
                        id: searchField2

                        Layout.fillWidth: true
                        Layout.topMargin: !isPhone ? 170 : 4

                        Layout.alignment: Qt.AlignHCenter
                        Layout.rightMargin: !isPhone ? 50 : 200
                        Layout.leftMargin: 50


                        placeholderTextColor: "grey"
                        font.pixelSize: 18
                        color: "black"


                        leftPadding: 30 // Adds space around the text, adjusting the padding as needed
                    }

                    Rectangle
                    {
                        id: rectangle_1
                        Layout.topMargin: 40
                        Layout.alignment: Qt.AlignHCenter
                        Layout.rightMargin: 50
                        Layout.leftMargin: 50
                        Layout.fillWidth: true
                        height:400
                        radius: 20

                        Text
                        {
                            id: balanceTablet
                            anchors.top: parent.top
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            anchors.topMargin: 40
                            text: qsTr("$1222.22")
                            font.pixelSize: 30
                            font.bold: true
                        }
                        Text
                        {
                            anchors.top: balanceTablet.bottom
                            anchors.left: balanceTablet.left
                            width: 150
                            text: qsTr("Euro")
                            font.pixelSize: 20
                        }
                        Item {
                            anchors.left: balanceTablet.right
                            anchors.leftMargin: 29
                            anchors.top: balanceTablet.top
                            anchors.topMargin: 15

                            width: 5
                            height: 5

                            // Circular arc
                            Rectangle {
                                id: circle3
                                width: 32
                                height: 32

                                anchors.centerIn: parent
                                color: "#0074FF"
                                opacity: 0.3
                               radius:180
                            }

                            // Arrow centered in the circle
                            Item {

                                anchors.centerIn: parent

                                Image
                                {
                                    anchors.centerIn: parent
                                    source: "qrc:/resources/downArrow2.svg"
                                    fillMode: Image.PreserveAspectFit

                                }
                            }


                        }
                        Image {
                            id: currencyImage
                            anchors.right: parent.right
                            anchors.rightMargin: 50
                            anchors.top: parent.top
                            anchors.topMargin: 50
                            source: "../assets/eur.png"
                        }

                        Text {
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.topMargin: 15
                            anchors.leftMargin: 20
                            text: qsTr("Transactions")
                        }


                        RowLayout {
                            anchors.top: parent.top
                            anchors.topMargin: 120
                            implicitWidth: parent.width
                            implicitHeight: 50
                            anchors.horizontalCenter: parent.horizontalCenter

                            Item {
                                width: parent.width
                                height: 100
                                anchors.horizontalCenter: parent.horizontalCenter

                                ListView {
                                    width: contentWidth // Ensure ListView wraps its content
                                    height: 70
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    orientation: ListView.Horizontal
                                    spacing: !isPhone ? 30 : 15
                                    model: ListModel {
                                        ListElement {source: "qrc:/resources/plus.svg"; text: "Add"}
                                        ListElement {source: "qrc:/resources/shuffle.svg"; text: "Move"}
                                        ListElement {source: "qrc:/resources/bank.svg"; text: "Bank"}
                                        ListElement {source: "qrc:/resources/more.svg"; text: "More"}
                                    }
                                    delegate: Item {
                                        width: 70
                                        height: 70

                                        Rectangle {
                                            id: options
                                            width: !isPhone ? 40 : 30
                                            height: !isPhone ? 40 : 30
                                            color: "#5A5C6B"
                                            radius: 25
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            anchors.top: parent.top
                                            anchors.topMargin: 5

                                            Image {
                                                anchors.centerIn: parent
                                                source: model.source
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
                            }
                        }

                        ColumnLayout {
                            anchors.fill: parent
                            anchors.topMargin: 220

                            ListModel {
                                id: listmodeltransactions
                                ListElement { source: "qrc:/resources/billa.png"; store: "Billa"; date: "Yesterday"; price: "-0,99 BGN" }
                                ListElement { source: "qrc:/resources/apple.png"; store: "Apple"; date: "Yesterday"; price: "-2,50 BGN" }
                            }

                            // Rectangle wrapping ListView with border
                            Rectangle {
                                id: transactions2
                               anchors.fill: parent
                               anchors.leftMargin: 10
                               anchors.rightMargin: 10
                               anchors.bottomMargin: 20
                                border.color: "#F7F7F7"  // Set border color
                                border.width: 2  // Set border width
                                radius: 10  // Optional: rounded corners

                                ListView {
                                    id: listViewTransactions
                                    anchors.fill: parent
                                    anchors.topMargin: 20
                                    anchors.rightMargin: 10
                                    anchors.leftMargin: 10
                                    clip: true
                                    model: listmodeltransactions
                                    interactive: false
                                    delegate: Item {
                                        width: listViewTransactions.width
                                        height: 80

                                        Rectangle {
                                            id: mask
                                            anchors.left: parent.left
                                            anchors.leftMargin: 15
                                            width: 50
                                            height: 50
                                            radius: 25
                                            clip: true
                                        }

                                        Image {
                                            id: storeIcon
                                            anchors.fill: mask
                                            source: model.source
                                            fillMode: Image.PreserveAspectCrop
                                            layer.enabled: true
                                            layer.effect: OpacityMask {
                                            maskSource: mask
                                            }
                                        }


                                        Text {
                                            id: storeName
                                            anchors.left: storeIcon.right
                                            anchors.leftMargin: 20
                                            anchors.verticalCenter: storeIcon.verticalCenter
                                            anchors.verticalCenterOffset: -10
                                            text: model.store
                                        }

                                        Text {
                                            anchors.top: storeName.bottom
                                            anchors.topMargin: 0
                                            anchors.left: storeName.left
                                            text: model.date
                                        }

                                        Text {
                                            anchors.right: parent.right
                                            text: model.price
                                            anchors.rightMargin: 20
                                        }
                                    }
                                }
                            }

                            Button {
                                anchors.bottom: parent.bottom
                                anchors.horizontalCenter: parent.horizontalCenter
                                background: Text {
                                    text: qsTr("Show all")
                                    color: "#667DFF"
                                }
                            }
                        }

                    }



                    Rectangle
                    {
                        id: rectangle_3
                        Layout.alignment: Qt.AlignHCenter
                        Layout.rightMargin: 50
                        Layout.leftMargin: 50
                        Layout.topMargin: 30
                        Layout.fillWidth: true
                        Layout.preferredHeight:300
                        radius: 20
                        Text {
                            id: widgetsText
                            text: qsTr("Widgets")
                            anchors.top: parent.top
                            anchors.topMargin: -25
                            anchors.left: parent.left
                            anchors.leftMargin: 15
                            font.pixelSize: 20
                            color: "black"
                        }


                        ColumnLayout
                        {
                            anchors.fill: parent
                            Rectangle
                            {
                                implicitHeight: 100
                            }
                            ListModel {
                                    id: itemModel
                                    ListElement { imageSource: "qrc:/resources/cash.svg"; text: "Cash"; text2: "Bulgarian Lev"; color: "#667DFF" }
                                    ListElement { imageSource: "qrc:/resources/safe.svg"; text: "Savings & Funds"; text2: "Earn interest";color: "#FF7A41" }
                                    ListElement { imageSource: "qrc:/resources/invest.svg"; text: "Invest"; text2: "Invest for as little as 1 лв";color: "#2AB2FE" }
                                    ListElement { imageSource: "qrc:/resources/crypto.svg"; text: "Crypto" ; text2: "Invest for as little as 1 лв";color: "#BF5BF3"}
                                }


                            ListView {
                                id: listView
                                anchors.fill: parent
                                anchors.margins: 20
                                spacing: 10
                                clip: true

                                model: itemModel
                                interactive: false
                                delegate: Item {
                                    width: listView.width
                                    height: 60

                                    Row {
                                        spacing: 10
                                        height: parent.height // Ensures proper alignment without anchors
                                        anchors.fill: parent // Removed to prevent conflicts

                                        Rectangle {
                                            id: circle
                                            width: 40
                                            height: 40
                                            color: model.color // Pre-applied transparency
                                            radius: 25

                                            Image
                                            {
                                                anchors.centerIn: parent
                                                width:18
                                                height:18
                                                source: model.imageSource
                                            }
                                        }


                                        Text {
                                            id:text1
                                            text: model.text
                                            font.pixelSize: 16
                                            anchors.left: parent.left
                                            anchors.leftMargin: 50
                                        }

                                        Text
                                        {
                                            anchors.top: text1.bottom
                                            text: model.text2
                                            font.pixelSize: 16
                                            anchors.left: parent.left
                                            anchors.leftMargin: 50
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Rectangle
                    {
                        anchors.top: rectangle_3.bottom
                        anchors.topMargin: 50
                        anchors.left: searchField2.left
                        anchors.right: searchField2.right
                        anchors.rightMargin: 50
                        Layout.fillWidth: true
                        implicitHeight:300
                        radius: 20                    }

                   Item
                   {
                       implicitHeight: 300
                   }
                }
            }
                Rectangle {
                            visible: isPhone
                            id: footer
                            height: 60
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            color: "grey"

                            RowLayout {
                                anchors.fill: parent
                                Layout.margins: 10
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                spacing: 20

                                Button {
                                    text: qsTr("Home")
                                    icon.source: "qrc:/resources/home.svg"
                                    background: Rectangle
                                    {
                                        color: "transparent"
                                    }

                                    onClicked: console.log("Home clicked")
                                }

                                Button {
                                    background: Rectangle
                                    {
                                        color: "transparent"
                                    }
                                    text: qsTr("Invest")
                                    icon.source: "qrc:/resources/invest.svg"
                                    onClicked: console.log("Settings clicked")
                                }

                                Button {
                                    text: qsTr("Payments")
                                    background: Rectangle
                                    {
                                        color: "transparent"
                                    }
                                    icon.source: "qrc:/resources/transfers.svg"
                                    onClicked: console.log("Profile clicked")
                                }
                                Button {
                                    background: Rectangle
                                    {
                                        color: "transparent"
                                    }
                                    text: qsTr("Bitcoin")
                                    icon.source: "qrc:/resources/crypto.svg"
                                    onClicked: console.log("Profile clicked")
                                }
                            }
                        }
        }

    }
}
