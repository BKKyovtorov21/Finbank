import QtQuick
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Studio.Components
import QtMultimedia


Window {
    id:root
    visible: true
    title: "Responsive Layout Example"
    width: Screen.width * 0.6
    height: Screen.height * 0.6
    minimumWidth: Screen.width * 0.3
    minimumHeight: Screen.height * 0.8

    property bool isWideScreen: width > height
    property bool isPhone: width < 860

    property alias logInButton: logInButton
    property alias registerButton: registerButton

    property alias logInButton1: loginButton1
    property alias registerButton1: registerButton1
    Loader {
        id: loader
        source: ""
    }


    ColumnLayout {
        id: landingpage
        anchors.fill: parent


        RowLayout {
            id: rowLayout
            anchors.topMargin: 15

            Rectangle {
                visible: !isPhone
                Layout.preferredWidth: 100
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignTop
                Text { anchors.centerIn: parent; text: "Personal"; font.pixelSize: 20 }
            }
            Rectangle {
                visible: !isPhone
                Layout.preferredWidth: 100
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignTop
                Text { anchors.centerIn: parent; text: "Business" ; font.pixelSize: 20}
            }
            Rectangle {
                visible: !isPhone
                Layout.preferredWidth: 100
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignTop
                Text { anchors.centerIn: parent; text: "Company"; font.pixelSize: 20}
            }
            Item { Layout.fillWidth: true }


            Rectangle {
                Layout.preferredWidth: 100
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignCenter
                Image {
                    id: name
                    source: "../assets/logo1.png"
                }
            }
            Item { Layout.fillWidth: true }
            Rectangle {
                visible: !isPhone
                Layout.preferredWidth: 100
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignTop
                Text { anchors.centerIn: parent; text: "Help"; font.pixelSize: 20 }
            }
            Rectangle {
                visible: !isPhone

                Layout.preferredWidth: 100
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignTop
                Button {
                    id: logInButton
                    anchors.fill: parent
                    background: Rectangle { radius: 20 }
                    text: qsTr("Sign in")
                    font.pixelSize: 20
                }

            }
            Rectangle {
                visible: !isPhone

                Layout.preferredWidth: 150
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignTop
                Button {
                    id: registerButton
                    anchors.fill: parent
                    background: Rectangle {
                        color: "#1c1f31"
                        radius: 20
                    }
                }
                Text {
                    anchors.centerIn: parent
                    text: "Open account"
                    color: "white"
                    font.pixelSize: 16
                }
            }
            Item { Layout.preferredWidth: 20 }
        }


        RowLayout {
            Layout.fillHeight: true

            Item {
                visible: !isPhone

                 width: 50
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true

                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#1A131B" }
                    GradientStop { position: 1.0; color: "#382B55" }
                }

                Text {
                    id: header
                    text: qsTr("Control your finances everywhere")
                    font.pixelSize: 30
                    color: "white"

                    // Dynamic width based on the actual text content width with max limit
                    width: Math.min(implicitWidth, parent.width * 0.8)
                    horizontalAlignment: Text.AlignHCenter  // Center-aligns text within the width

                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 20
                }
                Text {
                    id: desc
                    text: qsTr("Save, Manage and track your money. Open a full bank account from every platform")
                    font.pixelSize: isPhone ? 16 : 20
                    color: "white"
                    wrapMode: Text.WordWrap

                    // Dynamic width with max limit, centered alignment
                    width: Math.min(implicitWidth, parent.width * 0.8)
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: header.bottom
                    anchors.topMargin: 20
                }
                Button {
                    id: loginButton1
                    implicitWidth: 100  // Desired width for the button
                    anchors.verticalCenter: parent.verticalCenter  // Center vertically
                    anchors.verticalCenterOffset: -150

                    anchors.horizontalCenter: parent.horizontalCenter  // Center horizontally
                    anchors.horizontalCenterOffset: -50  // Move the button slightly to the left
                    text: qsTr("Log In")
                    background: Rectangle
                    {
                        color: "white"
                        radius: 20
                    }



                }

                Button {
                    id: registerButton1
                    anchors.verticalCenter: parent.verticalCenter  // Center vertically
                    anchors.verticalCenterOffset: -150
                    anchors.left: loginButton1.right  // Position this button to the right of the first button
                    anchors.leftMargin: 10  // Space between the two buttons
                    implicitWidth: 150
                    implicitHeight: 27

                    background:Rectangle
                    {
                        color: "transparent"
                        border.color: "white"
                        border.width: 1
                        radius: 10
                        Text {
                            id: create
                            text: qsTr("Create account")
                            color: "white"
                            anchors.centerIn: parent
                        }
                    }

                }

                Video
                {

                    width: parent.width
                    height: parent.height / 2
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 74
                    source: "../assets/landingpage2.mp4"
                    anchors.horizontalCenterOffset: -1 // Replace with your video file path
                    autoPlay: true
                    loops: MediaPlayer.Infinite
                    Component.onCompleted: {
                        console.log("Resolved video path:", Qt.resolvedUrl(source))
                    }
                }
            }
        }

        Drawer
        {
            width:150
            height: parent.height
            interactive: isPhone
            edge: Qt.LeftEdge

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
            visible: !isPhone
            Layout.preferredHeight: 50

        }
    }
    Rectangle {
        id: expandedSidebar
        color: "#ddd"
        clip: true

        Column {
            anchors.fill: parent

            // Placeholder item for spacing or padding
            Item {
                height: 60
                width: parent.width
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
        }
    }

    logInButton.onClicked: {
        landingpage.visible = false
        loader.source = "dashboard.qml"
    }
    registerButton.onClicked: {
        landingpage.visible = false
        loader.source = "SignUp.qml"
    }

    logInButton1.onClicked: {
        landingpage.visible = false
        loader.source = "SignIn.qml"
    }
    registerButton1.onClicked: {
        landingpage.visible = false
        loader.source = "SignUp.qml"
    }
}
