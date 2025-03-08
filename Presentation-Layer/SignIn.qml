import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    minimumWidth: 400
    minimumHeight: 400
        property bool isTablet: width < 900
        property bool isPhone: width < 500
        property bool emailLogin
        property bool validlogin
        property int spaceCounter: 0
        property string  language: "BG"
     onClosing: {
             Qt.quit(); // Explicitly quit the application
         }

    Loader {
            id: contentLoader
            anchors.fill: parent
        }

    Flickable {
        anchors.fill: parent
        contentWidth: root.width
        contentHeight: root.height
        clip: true
        visible: contentLoader.status === Loader.Null
        Rectangle
        {
            width: 80
            height: 50
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
        ColumnLayout {
            spacing: 20
            width: Math.min(root.width * 0.8, 500) // Limit max width for better centering
            anchors.centerIn: parent
            anchors.verticalCenterOffset: root.isPhone ? -100: 0


            Image {
                source: "qrc:/resources/logo1.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignHCenter
                Layout.leftMargin: !root.isTablet ? 10 : -5
            }

            Text {
                id: welcome
                text: root.language == "EN" ? qsTr("Welcome Back!") : qsTr("Добре дошъл отново!")
                font.pixelSize: root.isTablet ? 20 : 40
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                id: enterText
                text: root.language == "EN" ? qsTr("Enter the phone number associated with your Finbank account") : qsTr("Въведи номера, който е свързан с Finbank акаунта ти")
                font.pixelSize: 15
                horizontalAlignment: Qt.AlignHCenter
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
                                            placeholderText: root.language == "EN" ? qsTr("Phone number") : qsTr("Телефонен номер")
                                            placeholderTextColor: "gray"
                                            color: "black"
                                            inputMethodHints: Qt.ImhFormattedNumbersOnly
                                            validator: IntValidator {
                                                bottom: 0
                                                top: 999999999
                                            }
                                            Keys.onPressed: function(event) {
                                                if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                                    root.validlogin = true;
                                                    console.log("Enter pressed, validlogin:", root.validlogin);
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
                                                    placeholderText: root.language == "EN" ? qsTr("Password") : qsTr("Парола")
                                                    placeholderTextColor: "gray"
                                                    color: "black"
                                                    Keys.onPressed: function(event) {
                                                        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                                            if (root.validlogin) {
                                                                if (root.emailLogin) {
                                                                    login.logIfnUser(emailTextField.text, passwordTextField.text, false, true);
                                                                } else {
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
                text: root.emailLogin ? root.language == "EN" ? qsTr("Lost access to my email") : qsTr("Нямам достъп до имейла ми") : root.language == "EN" ? qsTr("Lost access to my phone") : qsTr("Нямам достъп до телефона си")
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
                    text: !root.validlogin ? root.language == "EN" ? qsTr("Next") : qsTr("Следващ") : root.language == "EN" ? qsTr("Log in") : qsTr("Вход")
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
                            text: !root.emailLogin ? root.language == "EN" ? qsTr("Continue with email") : qsTr("Продължи с имейл") : root.language == "EN" ? qsTr("Continue with phone") : qsTr("Продължи с номер")
                            font.pixelSize: root.isTablet ? 15 : 20
                            font.bold: true
                            Layout.fillWidth: true
                            horizontalAlignment: Text.AlignHCenter
                            Layout.rightMargin: 50
                        }

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

                            text: root.language == "EN" ? qsTr("Continue with Google") : qsTr("Продължи с Google")
                            font.pixelSize: root.isTablet ? 15 : 20
                            font.bold: true
                            Layout.fillWidth: true
                            horizontalAlignment: Text.AlignHCenter
                            Layout.rightMargin: 50
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
                            text: root.language == "EN" ? qsTr("Continue with Apple") : qsTr("Продължи с Apple")
                            font.pixelSize: root.isTablet ? 15 : 20
                            font.bold: true
                            Layout.fillWidth: true
                            horizontalAlignment: Text.AlignHCenter
                            Layout.rightMargin: 50

                        }
                    }
                }

                Text {
                    Layout.alignment: Qt.AlignHCenter


                        text: root.language == "EN" ? qsTr("Create account") : qsTr("Създай акаунт")
                        font.pixelSize: 20
                        color: "#4F55F1"

                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                        contentLoader.source = "SignUp.qml"
                        }
                    }
                }
            }
        }
    }


    Connections {
        target: googlegateway
        function onGoogleLoginSuccessful() {
            console.log("google")
            var email = googlegateway.userEmail; // Get the email from the signal
            login.logInUser(email, "", true, false); // Call login function with Google flag as true
        }
    }

    Connections {
            target: login  // Assuming `login` is an external login manager

            function onLogInSuccessful(username, fullName) {
                contentLoader.setSource("Dashboard.qml", {
                                    usernameRef: username,
                                    fullName: fullName
                                })


            }
        }
}
