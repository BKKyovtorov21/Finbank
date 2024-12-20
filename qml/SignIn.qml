import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    visible: true
    id: root
    width: Screen.width
    height: Screen.height

    minimumWidth: 400
    minimumHeight: 800
    property bool isTablet: width < 900
    property bool isPhone: width < 500
    property bool emailLogin
    property bool validlogin
    property int spaceCounter: 0


    Loader
    {
        id: loader
        source: ""
    }

    Flickable {
        anchors.fill: parent
        contentWidth: root.width
        contentHeight: root.height + 100
        clip: true

        ColumnLayout {
            spacing: 20
            width: Math.min(root.width * 0.8, 500) // Limit max width for better centering
            anchors.centerIn: parent


            Image {
                source: "qrc:/resources/logo1.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignHCenter
                Layout.leftMargin: !root.isTablet ? 10 : -5
            }

            Text {
                id: welcome
                text: qsTr("Welcome back")
                font.pixelSize: root.isTablet ? 20 : 40
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                id: enterText
                text: qsTr("Enter the phone number associated with your Finbank account")
                font.pixelSize: 15
                Layout.alignment: Qt.AlignHCenter
                wrapMode: Text.WordWrap
                Layout.preferredWidth: parent.width
                maximumLineCount: 2

            }

            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                spacing: 10
                Layout.leftMargin: !root.isTablet ? 40 : undefined

                Rectangle {
                    visible: !root.emailLogin
                    id: countryPhone
                    radius: 20
                    color: "#EBEBF1"
                    Layout.preferredWidth: root.isTablet ? 100 : 150
                    Layout.preferredHeight: 80
                    RowLayout {
                        anchors.fill: parent
                        visible: !root.emailLogin

                        Image {
                            id: country
                            Layout.preferredWidth: 40
                            Layout.preferredHeight: 40
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                            source: "qrc:/resources/bgn.png"
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            text: qsTr("+359")
                            Layout.alignment: Qt.AlignVCenter
                            font.pixelSize: root.isTablet ? 15 : 20
                        }
                    }
                }

                Rectangle {
                    radius: 20
                    color: "#EBEBF1"
                    Layout.preferredWidth: root.emailLogin ? (root.isTablet ? 300 : 400) : (root.isTablet ? 170 : 220)
                    Layout.preferredHeight: 80

                    // Email TextField
                    TextField {
                        focus: root.emailLogin
                        id: emailTextField
                        visible: root.emailLogin
                        background: Rectangle {
                            color: "transparent"
                            radius: 5
                        }
                        anchors.fill: parent
                        font.pixelSize: root.isTablet ? 15 : 20
                        placeholderText: qsTr("Email")
                        placeholderTextColor: "gray"
                        color: "black"
                        inputMethodHints: Qt.ImhNone
                    }

                    // Phone Number TextField
                    TextField {
                        focus: !root.emailLogin
                        id: phoneTextField
                        visible: !root.emailLogin
                        background: Rectangle {
                            color: "transparent"
                            radius: 5
                        }
                        anchors.fill: parent
                        font.pixelSize: root.isTablet ? 15 : 20
                        placeholderText: qsTr("Phone number")
                        placeholderTextColor: "gray"
                        color: "black"
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: IntValidator {
                            bottom: 0
                            top: 999999999
                        }
                        Keys.onPressed: {
                                    if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                        root.validlogin = true;
                                        console.log("Enter pressed, validlogin:", validlogin)
                                                    event.accepted = true;  // Optionally stop further propagation of the event
                                    }
                                }
                    }
                }
            }

            RowLayout
            {
                visible: root.validlogin

                    Layout.alignment: Qt.AlignHCenter
                    spacing: 10
                    Layout.leftMargin: !root.isTablet ? 40 : undefined
                    Rectangle {
                        radius: 20
                        color: "#EBEBF1"
                        Layout.preferredWidth: root.isTablet ? 300 : 400
                        Layout.preferredHeight: 80

                        // Email TextField
                        TextField {
                            id: passwordTextField
                            focus: root.validlogin
                            echoMode: TextInput.Password
                            background: Rectangle {
                                color: "transparent"
                                radius: 5
                            }
                            anchors.fill: parent
                            font.pixelSize: root.isTablet ? 15 : 20
                            placeholderText: qsTr("Password")
                            placeholderTextColor: "gray"
                            color: "black"
                            Keys.onPressed: {
                                        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                            if(root.validlogin)
                                                {
                                                if(root.emailLogin)
                                                {
                                                login.logInUser(emailTextField.text, passwordTextField.text, false, true);
                                                }
                                                else
                                                {
                                                    login.logInUser(phoneTextField.text, passwordTextField.text, false, false);
                                                }
                                            }
                                        }
                                    }
                        }
                    }

            }

            Text {
                font.pixelSize: 20
                color: "#4F55F1"
                text: qsTr("Lost access to my phone")
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle {
                Layout.preferredHeight: 70
                Layout.preferredWidth: Math.min(root.width * 0.8, 400)
                Layout.alignment: Qt.AlignHCenter

                color: "#4B50E0"
                radius: 50
                Text {
                    anchors.centerIn: parent
                    color: "white"
                    text: !root.validlogin ? qsTr("Next") : qsTr("Log In")
                    font.pixelSize: 20
                }

                MouseArea {
                        anchors.fill: parent // Fills the entire rectangle
                        onClicked: {
                            if(root.validlogin)
                                {
                                if(root.emailLogin)
                                {
                                login.logInUser(emailTextField.text, passwordTextField.text, false, true);
                                }
                                else
                                {
                                    login.logInUser(phoneTextField.text, passwordTextField.text, false, false);
                                }
                            }
                            root.validlogin = true;
                        }

                    }
            }
            Connections {
                        target: login
                        onLogInSuccessful: function(username, fullName){
                            loader.source = "Dashboard.qml";
                            loader.item.usernameRef = username;
                            loader.item.fullName = fullName;
                            root.visible = false;
                        }
                    }
            ColumnLayout {
                spacing: 20
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter
                Rectangle {
                    Layout.preferredHeight: 80
                    Layout.preferredWidth: Math.min(root.width * 0.8, 400)
                    color: "transparent"
                    border.width: 1
                    radius: 50
                    RowLayout {
                        anchors.fill: parent

                        Image {
                            id: methodImage1
                            Layout.preferredWidth: 30
                            Layout.preferredHeight: 30
                            source: !root.emailLogin ? "qrc:/resources/email.svg" : "qrc:/resources/phone.svg"
                            Layout.leftMargin: 25

                        }

                        Text {
                            text: !root.emailLogin ? qsTr("Continue with email") : qsTr("Continue with phone")
                            font.pixelSize: root.isTablet ? 15 : 20
                            font.bold: true
                        }

                        MouseArea
                        {
                            anchors.fill: parent
                            onClicked:
                            {
                                if(!root.emailLogin){
                                root.emailLogin = true
                                }
                                else
                                {
                                    root.emailLogin = false
                                }
                            }
                        }
                    }

                }

                Rectangle {
                    Layout.preferredHeight: 80
                    Layout.preferredWidth: Math.min(root.width * 0.8, 400)
                    color: "transparent"
                    border.width: 1
                    radius: 50
                    RowLayout {
                        anchors.fill: parent

                        Image {
                            id: methodImage2
                            Layout.preferredWidth: 30
                            Layout.preferredHeight: 30
                            Layout.leftMargin: 25
                            source: "qrc:/resources/google.png"
                        }

                        Text {
                            text: qsTr("Continue with google")
                            font.pixelSize: root.isTablet ? 15 : 20
                            font.bold: true
                        }
                    }
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked:
                        {
                            googlegateway.click();
                        }
                    }
                }

                Rectangle {
                    Layout.preferredHeight: 80
                    Layout.preferredWidth: Math.min(root.width * 0.8, 400)
                    color: "transparent"
                    border.width: 1
                    radius: 50
                    RowLayout {
                        anchors.fill: parent

                        Image {
                            id: methodImage3
                            Layout.preferredWidth: 30
                            Layout.preferredHeight: 30
                            source: "qrc:/resources/apple.png"
                            Layout.leftMargin: 25
                        }

                        Text {
                            text: qsTr("Continue with apple")
                            font.pixelSize: root.isTablet ? 15 : 20
                            font.bold: true

                        }
                    }
                }

                Text {
                    text: qsTr("Create account")
                    Layout.alignment: Qt.AlignHCenter
                    font.pixelSize: 20
                    color: "#4F55F1"
                }
            }
        }
    }

    Connections {
                target: googlegateway
                onGoogleLoginSuccessful: {
                    console.log("google")
                    var email = googlegateway.userEmail; // Get the email from the signal
                    login.logInUser(email, "", true, false); // Call login function with Google flag as true
                }
            }
}
