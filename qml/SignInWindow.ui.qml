import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0

Rectangle {
    id: logInWindow
    width: 1280
    height: 832
    color: "#ffffff"
    property alias loginText: login.text
    property alias fINBANKText: fINBANK.text
    property alias logInText: logIn.text
    property alias log_into_your_accountText: log_into_your_account.text
    property alias enter_your_personal_data_to_log_into_your_accountText: enter_your_personal_data_to_log_into_your_account.text
    property alias usernameField: usernameField
    property alias passwordField: passwordField
    property alias logInButton: logInButton
    property alias googleFast: googleFast

    Rectangle {
        id: rectangle_14
        width: 1280
        height: 832
        color: "#292929"
        anchors.left: parent.left
        anchors.top: parent.top

        AnimatedImage {
            id: animatedImage
            x: 523
            y: 8
            width: 749
            height: 811
            source: "qrc:/resources/signin.gif"
        }
    }

    Rectangle {
        id: rectangle_10
        width: 477
        height: 790
        color: "#323232"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 32
        anchors.topMargin: 14
    }

    Text {
        id: fINBANK
        width: 221
        height: 29
        color: "#999999"
        text: qsTr("FINBANK")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 163
        anchors.topMargin: 771
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Item {
        id: fastLogin
        x: 207
        y: 290
        width: 136
        height: 58
        Button {
            id: googleFast
            width: 61
            height: 58
            anchors.left: parent.left
            anchors.top: parent.top
            background: Rectangle {
                id: rectangle_12
                color: "#525252"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Image {
                id: element
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 15
                anchors.rightMargin: 14
                anchors.topMargin: 14
                anchors.bottomMargin: 14
                source: "qrc:/resources/google.svg"
                antialiasing: true
            }
        }

        Rectangle {
            id: githubFast
            width: 61
            height: 58
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 75
            Rectangle {
                id: rectangle_13
                color: "#525252"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Rectangle {
                id: mdi_github
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.rightMargin: 7
                anchors.topMargin: 7
                anchors.bottomMargin: 7
                Image {
                    id: element1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 4
                    anchors.rightMargin: 4
                    anchors.topMargin: 4
                    anchors.bottomMargin: 5
                    source: "qrc:/resources/github.svg"
                    antialiasing: true
                }
                clip: true
            }
        }
    }

    Item {
        id: instructions
        x: 85
        y: 191
        width: 372
        height: 85
        Text {
            id: enter_your_personal_data_to_log_into_your_account
            width: 373
            height: 27
            color: "#868ca7"
            text: qsTr("Enter your personal data to log into your account")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 58
            font.pixelSize: 13
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }

        Text {
            id: login
            width: 299
            height: 49
            color: "#ffffff"
            text: qsTr("Login\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            font.pixelSize: 35
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Item {
        id: usernameGroup
        x: 68
        y: 426
        width: 406
        height: 51

        TextField {
            id: usernameField
            width: 406
            height: 51
            placeholderText: qsTr("Enter your username")
            placeholderTextColor: "#FFFFFF" // Placeholder text color set to white
            color: "#FFFFFF" // Input text color set to white
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            font.pixelSize: 18

            padding: 10
        }
    }

    Item {
        id: passwordGroup
        x: 68
        y: 506
        width: 406
        height: 51

        TextField {
            id: passwordField
            width: 406
            height: 51
            placeholderText: qsTr("Enter your password")
            placeholderTextColor: "white"
            echoMode: TextInput.Password // Hides the password characters
            color: "#FFFFFF" // Text color
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            font.pixelSize: 18

            padding: 10
        }

        // Eye icon for password visibility
        Rectangle {
            id: visibilityIcon
            width: 24
            height: 24
            color: "transparent"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 10

            Image {
                id: eyeIcon
                width: 24
                height: 24
                source: "qrc:/resources/visibility.svg"
                antialiasing: true
            }
        }
    }

    Item {
        id: createYourAccount
        x: 114
        y: 113
        width: 313
        height: 50
        Rectangle {
            id: rectangle_11
            width: 223
            height: 50
            color: "#3a3b40"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 45
        }

        Text {
            id: log_into_your_account
            width: 314
            height: 27
            color: "#868ca7"
            text: qsTr("Log into your account")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 12
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }
    }

    Rectangle {
        id: logo
        width: 82
        height: 85
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 217
        anchors.topMargin: 14
        Image {
            id: logo1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/resources/logo2.png"
        }
    }

    Button {
        id: logInButton
        width: 217
        height: 64
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 173
        anchors.topMargin: 613
        background: Rectangle {
            id: rectangle_18
            color: "#ffffff"
            radius: 15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
        }

        Text {
            id: logIn
            color: "#000000"
            text: qsTr("LogIn")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 58
            anchors.rightMargin: 78
            anchors.topMargin: 22
            anchors.bottomMargin: 23
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }
    }
}
