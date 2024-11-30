import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0

Button {
    id: foundUserWindow
    width: 236
    height: 175
    property alias userEmail: email.text
    property alias userFullname: fullName.text
    property alias userPfp: pfp.source

    background:Text {
        id: fullName
        width: 163
        height: 28
        color: "#000000"
        text: qsTr("Boyan Kiovtorov")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 12
        anchors.topMargin: 104
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: email
        width: 188
        height: 24
        color: "#727272"
        text: qsTr("boyankiovtorov@gmail.com")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 12
        anchors.topMargin: 140
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Image {
        id: element
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 199
        anchors.rightMargin: 17
        anchors.topMargin: 31
        anchors.bottomMargin: 142
        source: "qrc:/resources/more.svg"
        antialiasing: true
    }

    Image {
        id: pfp
        x: 18
        y: 15
        width: 70
        height: 70

        source: "../assets/usd.png"
    }
}
