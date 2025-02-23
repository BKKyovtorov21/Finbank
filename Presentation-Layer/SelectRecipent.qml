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
    property string recipentFullname
    property string recipentUsername
    property string recipentPfp
    property string recipentEmail
    property var stackViewRef
    property alias searchBar: searchBar
    property var foundUsers: []  // Holds created user instances

    function findUser() {
        if (root.searchBar.text === "") {
            root.clearFoundUsers();
            return;
        }
        root.clearFoundUsers();
        searchrecipent.SearchUser(root.searchBar.text);
    }

    function clearFoundUsers() {
        for (var i = 0; i < root.foundUsers.length; i++) {
            root.foundUsers[i].destroy();
        }
        root.foundUsers = [];
    }
    Connections {
        target: searchrecipent
        function onUserFound(firstname, lastname, email, username, pfp) {
            var userComponent = Qt.createComponent("FoundUser.qml");
            if (userComponent.status === Component.Ready) {
                var userInstance = userComponent.createObject(userFlow, {
                    "fullName": firstname + " " + lastname,
                    "email": email,
                    "pfp": pfp,
                    // Dynamic checking for phone screen
                    "isPhone": Qt.binding(function() { return root.isPhone; })
                });
                if (userInstance) {
                    // Add to foundUsers array without updating recipentsWindow properties
                    root.foundUsers.push(userInstance);

                    userInstance.onClicked.connect(function() {
                        if (root.stackViewRef) {
                                    root.stackViewRef.push(Qt.resolvedUrl("SendMoney.qml"), {
                                        username: root.username,
                                        fullName: root.fullName,
                                        stackViewRef: root.stackViewRef
                                    });
                                }
                            else {
                                console.error("stackViewRef is undefined in SignIn.qml");
                            }
                        }
                    );
                } else {
                    console.error("Error: User instance creation failed.");
                }
            } else {
                console.error("Error creating FoundUser component:", userComponent.errorString());
            }
        }
    }
    Loader
    {
        id: loader
        source: ""
    }

    // Update handleUserClick to receive the specific user's data
    function handleUserClick(userData) {
        root.clearFoundUsers();
        if (root.stackViewRef) {
                    root.stackViewRef.push(Qt.resolvedUrl("SendMoney.qml"), {
                        username: root.username,
                        fullName: root.fullName,
                        stackViewRef: root.stackViewRef
                    });
                }
        else {
            console.error("stackViewRef is undefined in SignIn.qml");
        }
        // Now set the references based on the clicked user's data
        root.recipentFullname = userData.fullName;
        root.recipentEmail = userData.email;
        root.recipentUsername = userData.username;  // Set username reference
        root.recipentPfp = userData.pfp;
        console.log("User clicked:", userData);
    }
    searchBar.onTextChanged: root.findUser()

    ColumnLayout
    {
        anchors.fill: parent
        RowLayout
        {
            Layout.alignment: Qt.AlignTop
            spacing: 8 // Adjust spacing between icon and TextField
            visible: !root.isTablet
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
                            source: "qrc:/resources/selectiveLine.svg"
                        }
                        Text { text: "Select Recipient"
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
                            source: "qrc:/resources/notSelectiveLine.svg"
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
                            source: "qrc:/resources/notSelectiveLine.svg"
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
                                text: "1|5 Select money"
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
                                    width: parent.width / 5
                                    height: 3
                                    color: "#016DFC"
                                }
                            }

                        }

                        Text
                        {

                            text: qsTr("Who do you want to send money to?")
                            font.pixelSize: root.isTablet ? 30 : 30
                            Layout.fillWidth: true
                            Layout.topMargin: 20
                            Layout.alignment: Qt.AlignHCenter
                            wrapMode: Text.WordWrap
                            font.bold: true
                            horizontalAlignment: Qt.AlignHCenter

                        }

                        // Search bar
                        TextField {
                            id: searchBar
                            Image
                            {
                                source: "qrc:/resources/search.svg"
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 20
                            }

                            placeholderText: "Search"
                            Layout.rightMargin: 30
                            Layout.leftMargin: 30
                            Layout.fillWidth: true
                            Layout.preferredHeight: 40
                            color: "black"
                            leftPadding: 50
                            background: Rectangle
                            {
                                radius: 5
                                border.color: "lightgrey"
                            }
                        }

                        // Content area
                        Rectangle {
                            id: usersRect
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.rightMargin: 30
                            Layout.leftMargin: 30
                            color: "white"
                            border.color: "lightgray"
                            radius: 8
                            Flickable {
                                id: flickable
                                anchors.fill: parent
                                clip: true
                                contentWidth: usersRect.width
                                contentHeight: userFlow.implicitHeight

                                Flow {
                                    id: userFlow
                                    width: flickable.contentWidth // Set the width dynamically based on Flickable's contentWidth
                                    height: implicitHeight // Let the height adjust to the content
                                    spacing: 10
                                }

                                ScrollBar.vertical: ScrollBar {
                                    policy: ScrollBar.AlwaysOn
                                }
                                ScrollBar.horizontal: ScrollBar {
                                    policy: ScrollBar.AsNeeded
                                }
                            }
                        }
                    }
                }
            }

            // Navigation buttons
            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight
                Layout.rightMargin: root.isPhone ? 20 : 60
                Layout.bottomMargin: 50

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
                        if (root.stackViewRef) {
                                    root.stackViewRef.pop();
                                }
                        else {
                            console.error("stackViewRef is undefined in SignIn.qml");
                        }
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
                    onClicked:
                    {
                        if (root.stackViewRef) {
                                    root.stackViewRef.push(Qt.resolvedUrl("SendMoney.qml"), {
                                        username: root.username,
                                        fullName: root.fullName,
                                        stackViewRef: root.stackViewRef
                                    });
                                }
                        else {
                            console.error("stackViewRef is undefined in SignIn.qml");
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
