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

    Loader
    {
        id: loader
        source: ""
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
                Layout.preferredHeight: 40
            }
            RowLayout
            {
                Layout.alignment: Qt.AlignHCenter
                Rectangle
                {
                    Layout.preferredWidth: 60
                    Layout.preferredHeight: 60
                    color: "#DEDEDE"
                    radius: 10
                    Image
                    {
                        source: "qrc:/resources/google.svg"
                        anchors.centerIn: parent
                        width: 30
                        height:30
                    }
                }
                Rectangle
                {
                    Layout.preferredWidth: 60
                    Layout.preferredHeight: 60
                    color: "#DEDEDE"
                    radius: 10
                    Image
                    {
                        source: "qrc:/resources/github.svg"
                        anchors.centerIn: parent
                        width: 30
                        height:30
                    }
                }
            }
            Item
            {
                Layout.preferredHeight: 50
            }

            TextField
            {
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: 400
                Layout.preferredHeight: 50
                placeholderText: "Enter your username"
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
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: 400
                Layout.preferredHeight: 50
                placeholderText: "Enter your email"
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
                Layout.preferredWidth: 400
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignHCenter
                placeholderText: "Enter your password"
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
                    source: "qrc:/resources/visibility.svg"

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
                    anchors.horizontalCenterOffset: -20
                    font.pixelSize: 20
                    text: "Continue"

                }
                Image
                {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenterOffset: 40
                    anchors.verticalCenterOffset: 2
                    source: "qrc:/resources/rightArrow.svg"
                }
                onClicked:
                {
                    loader.source = "SignUp2.qml"
                    root.visible = false
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
