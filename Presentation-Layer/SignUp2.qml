import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtMultimedia
Window {
    visible: true
    id: root
    width: Screen.width
    height: Screen.height

    minimumWidth: 400
    minimumHeight: 800
    property bool isTablet: width < 900
    property bool isPhone: width < 500
    property string username
    property string email
    property string password
    property string gender
    property alias firstNameTextField: firstNameTextField
    property alias lastNameTextField: lastNameTextField
    property alias dateOfBirthTextField: dateTextField
    property alias phoneNumberTextField: phoneNumberTextField
    Connections
    {
        target: register
        onRegisterSuccessful:
        {
            contentLoader.source = "SignIn.qml"
        }
    }

    RowLayout
    {
        anchors.fill: parent
        ColumnLayout
        {
            Layout.preferredWidth: parent.width / 2
            Layout.fillHeight: true
            Layout.alignment: root.isTablet ? Qt.AlignHCenter : undefined | Qt.AlignTop
            Image
            {
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:/resources/logo1.png"
            }
            Item
            {
                Layout.preferredHeight: 15
            }

            Text
            {
                text: qsTr("Create your account")
                font.bold: true
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 20

            }
            Item
            {
                Layout.preferredHeight: 15
            }
            Text
            {
                text: qsTr("Sign up account")
                font.bold: true
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 30

            }
            Item
            {
                Layout.preferredHeight: 15
            }
            Text
            {
                text: qsTr("Enter your personal data to create your account")
                font.bold: true
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 15

            }
            Item
            {
                Layout.preferredHeight: 30
            }

            TextField
            {
                id: firstNameTextField
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: !root.isTablet ? 400 : 300
                Layout.preferredHeight: !root.isTablet? 50 : 40
                placeholderText: "Enter your first name"
                placeholderTextColor: "#535353"
                topPadding: 10
                font.pixelSize: 23
                color: "#535353"
                background: Rectangle
                {
                    color: "#DEDEDE"
                    radius: 10
                }
            }
            Item
            {
                Layout.preferredHeight: 3
            }
            TextField
            {
                id: lastNameTextField

                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: !root.isTablet ? 400 : 300
                Layout.preferredHeight: !root.isTablet? 50 : 40
                placeholderText: "Enter your last name"
                placeholderTextColor: "#535353"
                topPadding: 10
                font.pixelSize: 23
                color: "#535353"

                background: Rectangle
                {
                    color: "#DEDEDE"
                    radius: 10
                }
            }
            Item
            {
                Layout.preferredHeight: 3
            }
            TextField {
                    id: dateTextField
                    Layout.preferredWidth: !root.isTablet ? 400 : 300
                    Layout.preferredHeight: !root.isTablet ? 50 : 40
                    Layout.alignment: Qt.AlignHCenter
                    placeholderText: "Enter your date of birth (YYYY-MM-DD)"
                    placeholderTextColor: "#535353"
                    topPadding: 10
                    font.pixelSize: 20
                    color: "#535353"
                    background: Rectangle {
                        color: "#DEDEDE"
                        radius: 10
                    }

                    // Allow only digits and dashes
                    onTextChanged: {
                        // Remove any non-numeric and non-dash characters
                        text = text.replace(/[^0-9\-]/g, '');

                        // Automatically insert dashes after the appropriate number of characters
                        if (text.length > 4 && text[4] !== '-') {
                            text = text.substring(0, 4) + '-' + text.substring(4);
                        }
                        if (text.length > 7 && text[7] !== '-') {
                            text = text.substring(0, 7) + '-' + text.substring(7);
                        }

                        // Ensure that the date follows the YYYY-MM-DD format
                        if (text.length > 10) {
                            text = text.substring(0, 10); // Limit input to 10 characters (YYYY-MM-DD)
                        }
                    }

                    Image {
                        visible: !root.isTablet
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 20
                        source: "qrc:/resources/calendar.svg"
                    }
                }
            Item
            {
                Layout.preferredHeight: 3
            }
            TextField
            {
                id: phoneNumberTextField
                Layout.preferredWidth: !root.isTablet ? 400 : 300
                Layout.preferredHeight: !root.isTablet? 50 : 40
                Layout.alignment: Qt.AlignHCenter
                placeholderText: "Enter your phone number"
                placeholderTextColor: "#535353"
                topPadding: 10
                font.pixelSize: 23
                color: "#535353"

                background: Rectangle
                {
                    color: "#DEDEDE"
                    radius: 10
                }
                Image
                {
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin: 20
                    source: "qrc:/resources/phone.svg"

                }
            }
            Item
            {
                Layout.preferredHeight: 10
            }
            RowLayout
            {
                Layout.alignment: Qt.AlignHCenter
                spacing: 100
                Rectangle {
                    id: rect2
                    property bool clicked: false // Initialize to false
                    Layout.preferredWidth: 60
                    Layout.preferredHeight: 60
                    color: "transparent"
                    border.color: "#999999"
                    border.width: 1
                    radius: 10

                    Image {
                        visible: rect2.clicked // Tied to clicked property
                        source: "qrc:/resources/tickCB.svg"
                        anchors.centerIn: parent
                        width: 20
                        height: 20
                    }

                    Text {
                        anchors.left: parent.right
                        anchors.leftMargin: 10
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("Male")
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            rect2.clicked = !rect2.clicked; // Toggle clicked state
                            root.gender = "Male"
                        }
                    }
                }
                Rectangle {
                    id: rect1
                    property bool clicked: false // Initialize to false
                    Layout.preferredWidth: 60
                    Layout.preferredHeight: 60
                    color: "transparent"
                    border.color: "#999999"
                    border.width: 1
                    radius: 10

                    Image {
                        visible: rect1.clicked // Tied to clicked property
                        source: "qrc:/resources/tickCB.svg"
                        anchors.centerIn: parent
                        width: 20
                        height: 20
                    }

                    Text {
                        anchors.left: parent.right
                        anchors.leftMargin: 10
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("Female")
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            rect1.clicked = !rect1.clicked; // Toggle clicked state
                            root.gender = "Female"
                        }
                    }
                }
            }

            Item
            {
                Layout.preferredHeight: 30
            }

            Button
            {
                Layout.preferredWidth: 300
                Layout.preferredHeight: 60
                Layout.alignment: Qt.AlignHCenter

                background: Rectangle
                {
                    color: "transparent"
                    border.width: 1
                    border.color: "#535353"
                    radius: 15
                }
                Text
                {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                    text: "Register"

                }
                onClicked:
                {
                    register.registerAccount(root.username, root.email, root.password, root.firstNameTextField.text, root.lastNameTextField.text, root.dateOfBirthTextField.text, root.gender, root.phoneNumberTextField.text, false, "")
                }
            }
            Item
            {
                Layout.preferredHeight: 10
            }

            Button
            {
                Layout.alignment: Qt.AlignHCenter
                background: Text
                {
                    text: "Already have an account?"
                    color: "#6E6E6E"
                }
                onClicked:
                {
                    contentLoader.source = "SignIn.qml"
                }
            }
            Item
            {
                Layout.fillHeight: true
            }

        }
        ColumnLayout
        {
            visible: !root.isTablet
           Layout.preferredWidth: parent.width / 2
           Layout.preferredHeight: parent.height
            Video
            {
                Layout.fillWidth: true
                Layout.fillHeight: true
                source: "qrc:/resources/bgif.mp4"
                autoPlay: true
                loops: MediaPlayer.Infinite
                fillMode: VideoOutput.Stretch
            }
        }
    }
}
