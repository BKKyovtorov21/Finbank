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


    Dashboard
    {
        id:dashboardWindow
        visible: false
    }

    Flickable {
        anchors.fill: parent
        contentWidth: root.width
        contentHeight: root.height + 100
        clip: true

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 20
            width: Math.min(root.width * 0.8, 500) // Limit max width for better centering
            Layout.alignment: Qt.AlignHCenter

            Image {
                source: "qrc:/resources/logo1.png"
                fillMode: Image.PreserveAspectFit
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredHeight: 100
            }

            Text {
                id: welcome
                text: qsTr("Welcome back")
                font.pixelSize: isTablet ? 20 : 40
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                id: enterText
                text: qsTr("Enter the phone number associated with your Finbank account")
                font.pixelSize: 15
                Layout.alignment: Qt.AlignHCenter
                wrapMode: Text.WordWrap
                maximumLineCount: 2
            }

            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                spacing: 10

                Rectangle {
                    id: countryPhone
                    radius: 20
                    color: "#EBEBF1"
                    Layout.preferredWidth: isTablet ? 100 : 150
                    Layout.preferredHeight: 80
                    RowLayout {
                        anchors.fill: parent

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
                            font.pixelSize: isTablet ? 15 : 25
                        }
                    }
                }

                Rectangle {
                    radius: 20
                    color: "#EBEBF1"
                    Layout.preferredWidth: isTablet ? 170 : 220
                    Layout.preferredHeight: 80
                    TextField {
                        id:textField
                        background: Rectangle {
                            color: "transparent"  // Background color
                            radius: 5       // Rounded corners (optional)
                        }
                        anchors.fill: parent
                        font.pointSize: isTablet ? 20 : 30
                        placeholderText: qsTr("Phone number")
                        placeholderTextColor: "gray"  // Set the placeholder text color to gray
                        color: "black"  // Set the text color to black
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: IntValidator {
                            bottom: 0
                            top: 999999999
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
                Layout.preferredHeight: 80
                width: Math.min(root.width * 0.6, 300)
                Layout.alignment: Qt.AlignHCenter
                color: "#4B50E0"
                radius: 50
                Text {
                    anchors.centerIn: parent
                    color: "white"
                    text: qsTr("Continue")
                    font.pixelSize: 20
                }

                MouseArea {
                        anchors.fill: parent // Fills the entire rectangle
                        onClicked: {
                            login.logInUser(textField.text, "test", false); // Call the login function with Google flag as false
                        }
                    }
            }
            Connections {
                        target: login
                        onLogInSuccessful: {
                            dashboardWindow.visible = true
                            root.visible = false;
                        }
                    }
            ColumnLayout {
                spacing: 20
                Layout.fillWidth: true
                Layout.leftMargin: !isTablet ? 70 : 30
                Rectangle {
                    Layout.preferredHeight: 80
                    width: Math.min(root.width * 0.8, 400)
                    color: "transparent"
                    border.width: 1
                    radius: 50
                    RowLayout {
                        anchors.fill: parent

                        Image {
                            id: methodImage1
                            Layout.preferredWidth: 30
                            Layout.preferredHeight: 24
                            source: "qrc:/resources/email.svg"
                            anchors.left: parent.left
                            anchors.leftMargin: 25

                        }

                        Text {
                            text: qsTr("Continue with email")
                            font.pixelSize: isTablet ? 15 : 20
                            font.bold: true
                        }
                    }
                }

                Rectangle {
                    Layout.preferredHeight: 80
                    width: Math.min(root.width * 0.8, 400)
                    color: "transparent"
                    border.width: 1
                    radius: 50
                    RowLayout {
                        anchors.fill: parent

                        Image {
                            id: methodImage2
                            Layout.preferredWidth: 30
                            Layout.preferredHeight: 30
                            anchors.left: parent.left
                            anchors.leftMargin: 25
                            source: "qrc:/resources/google.png"
                        }

                        Text {
                            text: qsTr("Continue with google")
                            font.pixelSize: isTablet ? 15 : 20
                            font.bold: true
                        }
                    }
                }

                Rectangle {
                    Layout.preferredHeight: 80
                    width: Math.min(root.width * 0.8, 400)
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
                            anchors.left: parent.left
                            anchors.leftMargin: 25
                        }

                        Text {
                            text: qsTr("Continue with apple")
                            font.pixelSize: isTablet ? 15 : 20
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
}
