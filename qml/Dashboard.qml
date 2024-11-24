import QtQuick
import QtQuick.Controls
import QtCharts
import QtQuick.Layouts
import QtQuick.Timeline
Window {
    id: rootdashboard
    width: 899
    height: 2000
    minimumWidth: 400
    visible: true
    property bool isTablet: width < 900
    property bool isPhone: width < 450

    property string usernameRef: ""
       property real balance: 3000
       property real income: 3000
       property real expenses: 3000
       property string cardInfo: ""
       property string firstName: ""
       property string lastName: ""
       property string pfp: ""

    Component.onCompleted: {
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
        visible: false
        property real expensesValue
        property real incomeValue: 3000
        anchors.fill: parent
        id: dashboardwindowDesktop
        RowLayout
        {
            spacing: 8 // Adjust spacing between icon and TextField
            Image {
                id: name
                source: !isTablet ? "../assets/logo1.png" : "../assets/user.png"
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
                Layout.fillWidth: true // Ensure this item takes up available space

                RowLayout {

                    anchors.fill: parent // Ensures the layout fills the space
                    anchors.verticalCenterOffset: 50


                    TextField {
                        Image {
                            id: searchIcon
                            width: 22
                            height: 18

                            source: "qrc:/resources/search.svg"
                            anchors.top: parent.top
                            anchors.topMargin: 12
                            anchors.left: parent.left
                            anchors.leftMargin: 5
                        }
                        id: searchField

                        anchors.verticalCenter: parent.verticalCenter
                        anchors.verticalCenterOffset: -3 // Shift upwards by 5 pixels
                        Layout.fillWidth: true // Make it expand to fill the remaining space

                        placeholderText: qsTr("Search")
                        font.pixelSize: 18
                        color: "#802f2f2f"

                        leftPadding: 30 // Adds space around the text, adjusting the padding as needed
                    }


                }
            }


            Rectangle
            {

                Image {
                    id: element5
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "qrc:/resources/chat.svg"
                    antialiasing: true
                    anchors.topMargin: 13// Adjust this to move the icon down
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
                Layout.preferredHeight: 56

                Image {
                    id: userpfp
                    source: "../assets/user.png"
                    anchors.top: parent.top
                    anchors.topMargin: 8
                }
                Text
                {
                    id: fullname
                    width:130
                    anchors.left: userpfp.right
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 8


                    text: qsTr("Boyan Kiovtorov")
                }

                Text {
                    width: 130
                    anchors.top: fullname.bottom
                    anchors.topMargin: 10
                    anchors.left: fullname.left
                    text: qsTr("@kiovtorov")
                }
            }

        }

        RowLayout
        {
            spacing: 10
            Text {
                text: qsTr("Good morning, Boyan")
                font.pixelSize: !isTablet ? 35 : 15
                font.bold: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop // Combine alignment flags
                Layout.leftMargin: 15
                Layout.topMargin: 15
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
                    id: transactionsPage
                    text: qsTr("Transactions")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
                onClicked:
                {
                    dashboardwindowDesktop.visible = false
                    loader.source = "Transactions.qml"

                }
            }
            Button
            {

                background:Text {
                    id: tradingPage
                    text: qsTr("Trading")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
                onClicked:
                {
                    dashboardwindowDesktop.visible = false
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
                        width: parent.width
                        height: 48
                        anchors.top: parent.top
                        anchors.topMargin: 40
                        anchors.horizontalCenter: parent.horizontalCenter



                        Text {
                            property real balanceValue: rootdashboard.balance
                            visible: !isPhone
                            id: balance
                            color: "black"
                            text: "$" + balanceValue.toFixed(2)
                            font.pixelSize: 40
                            anchors.left: parent.left

                            SequentialAnimation on balanceValue {
                                NumberAnimation {
                                    running: true
                                    loops: 1
                                    from: 0.0
                                    to: 2285.93
                                    duration: 2000
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
                               anchors.left:  percent.right
                               anchors.leftMargin: 10
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
                            id: ellipse_3
                            width: 40
                            height: 40
                            anchors.left: parent.left
                            anchors.top: parent.top
                            radius: 25
                            color: "#d9d9d9"

                            antialiasing: true
                        }

                        Rectangle {
                            id: ellipse_4
                            width: 36
                            height: 36
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 2
                            anchors.topMargin: 2
                            radius: 30
                            color: "#ffffff"

                            antialiasing: true
                        }

                        Item {
                            id: group
                            x: 13
                            y: 13
                            width: 14
                            height: 14
                            Image {
                                id: element14
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 11
                                antialiasing: true
                                source: "qrc:/resources/income.svg"
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
                        font.pixelSize: 32
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Normal

                        SequentialAnimation on incomeValue {
                            NumberAnimation {
                                running: true
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
                        Image {
                            id: ellipse_5
                            width: 40
                            height: 40
                            anchors.left: parent.left
                            anchors.top: parent.top
                            source: "qrc:/resources/expenses.svg"
                            antialiasing: true
                        }

                        Item {
                            id: group1
                            x: 13
                            y: 13
                            width: 14
                            height: 14
                            Image {
                                id: element18
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 11
                                source: "qrc:/resources/expenses.svg"
                                antialiasing: true
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
                        font.pixelSize: 32
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Normal

                        SequentialAnimation on expensesValue {
                            NumberAnimation {
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
                            running: true // Start automatically
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
                            running: true // Start automatically
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
            visible: isTablet  // Corrected to 'isTablet'

            Rectangle {
                color: "#F7F7F7"
                Layout.fillHeight: true
                Layout.preferredWidth: 100

                ColumnLayout
                {


                    anchors.fill: parent
                    spacing: 10
                    Item
                    {
                        height:30
                    }
                    Image {
                        id: pfp
                        source: "../assets/user.png"
                        width:30
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                    }
                    Rectangle
                    {
                        width:50
                        height: 50
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        radius:10

                        Image
                        {
                            width: 38
                            height: 40
                            source: "qrc:/resources/home.svg"
                            anchors.left: parent.left
                            anchors.leftMargin: 12
                            anchors.top: parent.top
                            anchors.topMargin: 10
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
                            width: 38
                            height: 26
                            source: "qrc:/resources/transfers.svg"
                            anchors.left: parent.left
                            anchors.leftMargin: 12
                            anchors.top: parent.top
                            anchors.topMargin: 10
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
                            width: 30
                            height: 32

                            source: "qrc:/resources/stats.svg"
                            anchors.left: parent.left
                            anchors.leftMargin: 12
                            anchors.top: parent.top
                            anchors.topMargin: 10
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
                        anchors.topMargin: 100
                        anchors.leftMargin: 35
                        Text {
                            id:test
                            text: qsTr("Good evening, Boyan")
                            font.pixelSize: 30
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
                                    source: "/Users/boyankiovtorov/Downloads/leftArrow.svg"
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
                                    source: "/Users/boyankiovtorov/Downloads/Analytics.svg"
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
                                    source: "/Users/boyankiovtorov/Downloads/leftArrow.svg"
                                    rotation: -180
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
                        Image {
                            id: searchIcon2
                            width: 22
                            height: 18

                            source: "qrc:/resources/search.svg"
                            anchors.top: parent.top
                            anchors.topMargin: 12
                            anchors.left: parent.left
                            anchors.leftMargin: 5

                        }
                        id: searchField2

                        Layout.fillWidth: true
                        anchors.top: parent.top
                        anchors.topMargin: 170
                        anchors.left: parent.left
                        anchors.leftMargin: 35
                        anchors.right: parent.right
                        anchors.rightMargin: 1

                        placeholderText: qsTr("Search")
                        font.pixelSize: 18
                        color: "#802f2f2f"

                        leftPadding: 30 // Adds space around the text, adjusting the padding as needed
                    }

                    Rectangle
                    {
                        id: rectangle_1
                        anchors.top: searchField2.bottom
                        anchors.topMargin: 50
                        anchors.left: searchField2.left
                        anchors.right: searchField2.right
                        anchors.rightMargin: 50
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
                                    source: "/Users/boyankiovtorov/Downloads/Vector.png"
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
                                    spacing: 30
                                    model: ListModel {
                                        ListElement {source: "/Users/boyankiovtorov/Downloads/plus.svg"; text: "Add"}
                                        ListElement {source: "/Users/boyankiovtorov/Downloads/move.svg"; text: "Move"}
                                        ListElement {source: "/Users/boyankiovtorov/Downloads/bank.svg"; text: "Bank"}
                                        ListElement {source: "/Users/boyankiovtorov/Downloads/more.svg"; text: "More"}
                                    }
                                    delegate: Item {
                                        width: 70
                                        height: 70

                                        Rectangle {
                                            id: options
                                            width: 50
                                            height: 50
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
                                ListElement { source: "/Users/boyankiovtorov/Downloads/billa.png"; store: "Billa"; date: "Yesterday"; price: "-0,99 BGN" }
                                ListElement { source: "/Users/boyankiovtorov/Downloads/apple.png"; store: "Apple"; date: "Yesterday"; price: "-2,50 BGN" }
                            }

                            // Rectangle wrapping ListView with border
                            Rectangle {
                                id: transactions
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
                        anchors.top: rectangle_1.bottom
                        anchors.topMargin: 50
                        anchors.left: searchField2.left
                        anchors.right: searchField2.right
                        anchors.rightMargin: 50
                        Layout.fillWidth: true
                        implicitHeight:300
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
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/Group.svg"; text: "Cash"; text2: "Bulgarian Lev"; color: "#667DFF" }
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/safe.svg"; text: "Savings & Funds"; text2: "Earn interest";color: "#FF7A41" }
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/invest.svg"; text: "Invest"; text2: "Invest for as little as 1 лв";color: "#2AB2FE" }
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/bitcoin.svg"; text: "Crypto" ; text2: "Invest for as little as 1 лв";color: "#BF5BF3"}
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

        }
    }

}
