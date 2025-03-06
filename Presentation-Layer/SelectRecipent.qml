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
    property string recipentFullname
    property string recipentUsername
    property string recipentPfp
    property string recipentEmail
    property var stackViewRef
    property string language
    property alias searchBar: searchBar
    property var foundUsers: []  // Holds created user instances
    property string language
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
                    "isPhone": Qt.binding(function() { return root.isPhone; })
                });
                if (userInstance) {
                    // Add to foundUsers array without updating recipentsWindow properties
                    root.foundUsers.push(userInstance);

                    userInstance.onClicked.connect(function() {
                        // Set the recipient's data when the user is clicked


                        // Load the SendMoney.qml and pass the data
                        contentLoader.setSource("SendMoney.qml");
                        contentLoader.item.username = root.username;
                        contentLoader.item.firstName = root.firstName;
                        contentLoader.item.lastName = root.lastName;
                        contentLoader.item.pfp = root.pfp;
                        contentLoader.item.recipentFullName = root.recipentFullname;
                        contentLoader.item.recipentEmail = root.recipentEmail;
                        contentLoader.item.recipentPfp = root.recipentPfp;

                        root.recipentFullname = userInstance.fullName;
                        root.recipentEmail = userInstance.email;
                        root.recipentUsername = userInstance.username;
                        root.recipentPfp = userInstance.pfp;

                        console.log("User clicked:", userInstance);
                        console.log("Recipient Data:", root.recipentFullname, root.recipentEmail, root.recipentPfp);
                    });
                } else {
                    console.error("Error: User instance creation failed.");
                }
            } else {
                console.error("Error creating FoundUser component:", userComponent.errorString());
            }
        }
    }

    // Update handleUserClick to receive the specific user's data
    function handleUserClick(userData) {
        root.clearFoundUsers();

        // Now set the references based on the clicked user's data
        root.recipentFullname = userData.fullName;
        root.recipentEmail = userData.email;
        root.recipentUsername = userData.username;
        root.recipentPfp = userData.pfp;

        console.log("User clicked:", userData);

        // Use the 'setProperty' method to pass dynamic data after setting the properties
        contentLoader.setSource("SendMoney.qml");
        contentLoader.item.username = root.username;
        contentLoader.item.fullName = root.fullName;
        contentLoader.item.recipentFullname = root.recipentFullname;
        contentLoader.item.recipentEmail = root.recipentEmail;
        contentLoader.item.recipentPfp = root.recipentPfp;
    }
    searchBar.onTextChanged: root.findUser()

    ColumnLayout
    {
        anchors.fill: parent
        RowLayout
        {
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
                    text: root.language == "EN" ? qsTr("Personal Account") : qsTr("Личен акаунт")
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
                    text: root.language == "EN" ? qsTr("Тransactions") : qsTr("Преводи")
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
                        Layout.leftMargin: 10
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
                    text:root.language == "EN" ? qsTr("Chat") : qsTr("Чат")
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
                        Text { text: root.language == "EN" ? qsTr("Select Recipient") : qsTr("Избери получател")
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
                        Text { text: root.language == "EN" ? qsTr("Аmount") : qsTr("Сума")
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
                        Text { text: root.language == "EN" ? qsTr("Details Recipient") : qsTr("Детайли на получателя")
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
                        Text { text: root.language == "EN" ? qsTr("Transfer Type") : qsTr("Тип превод")
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
                        Text { text: root.language == "EN" ? qsTr("Dashboard") : qsTr("Начална страница")
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
                                text: root.language == "EN" ? qsTr("Send money") : qsTr("Изпрати пари")
                                color: "grey"
                                font.pixelSize: 15
                                horizontalAlignment: Text.AlignHCenter
                            }
                            Text
                            {
                                Layout.fillWidth: true
                                text: root.language == "EN" ? qsTr("1|5 Select Recipent") : qsTr("1|5 Избери получател")
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

                            text: root.language == "EN" ? qsTr("Who do you want to send money to?") : qsTr("На кого искаш да изпратиш пари?")
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

                            placeholderText: root.language == "EN" ? qsTr("Recipient's name or username") : qsTr("Име на получателя")
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
                            Layout.topMargin: 50
                            Layout.leftMargin: 30
                            color: "white"
                            border.color: "transparent"
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
                    onClicked:
                    {
                        contentLoader.setSource("Transactions.qml", {
                                            username: root.username,
                                            fullName: root.fullName
                                        })
                    }
                }


            }
            Item
            {
                Layout.fillHeight: true
            }
    }
}
