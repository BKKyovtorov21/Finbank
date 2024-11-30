import QtQuick

Rectangle {
    id: foundUserWindow
    width: 481
    height: 76
    property alias userEmail: email.text
    property alias userFullname: fullName.text
    property alias userPfp: pfp.source

    Text {
        id: fullName
        width: 388
        height: 28
        color: "#000000"
        text: qsTr("Boyan Kiovtorov")
        anchors.left: parent.horizontalCenter
        anchors.top: parent.top
        anchors.leftMargin: -148
        anchors.topMargin: 8
        font.pixelSize: 18
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: email
        width: 388
        height: 24
        color: "#727272"
        text: qsTr("boyankiovtorov@gmail.com")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 93
        anchors.topMargin: 42
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Image {
        id: pfp
        x: 8
        y: 3
        width: 70
        height: 70

        source: "../assets/usd.png"
    }
}
