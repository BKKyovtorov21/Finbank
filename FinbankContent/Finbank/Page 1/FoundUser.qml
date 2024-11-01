import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: foundUserWindow
    width: 236
    height: 175
    color: "#ffffff"
    property alias userEmail: email.text
    property alias userFullname: fullName.text

    Item {
        id: group_35
        x: 12
        y: 14
        width: 60
        height: 60
        ArcItem {
            id: ellipse_7
            width: 60
            height: 60
            anchors.left: parent.left
            anchors.top: parent.top
            strokeWidth: 0
            strokeStyle: 0
            strokeColor: "transparent"
            outlineArc: true
            fillColor: "#f19e38"
            end: 450.00001
            begin: 90
            arcWidth: 30
            antialiasing: true
        }

        Text {
            id: b
            width: 17
            height: 25
            color: "#ffffff"
            text: qsTr("B")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 22
            anchors.topMargin: 17
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Text {
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

    SvgPathItem {
        id: element
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 199
        anchors.rightMargin: 17
        anchors.topMargin: 31
        anchors.bottomMargin: 142
        strokeWidth: 2
        strokeStyle: 1
        strokeColor: "#727272"
        path: "M 0 1 C 0 1.2652164995670319 0.13169629499316216 1.519570216536522 0.3661167621612549 1.707106590270996 C 0.6005372293293476 1.8946429640054703 0.9184793755412102 2 1.25 2 C 1.5815206244587898 2 1.8994627706706524 1.8946429640054703 2.133883237838745 1.707106590270996 C 2.368303705006838 1.519570216536522 2.5 1.2652164995670319 2.5 1 C 2.5 0.7347835004329681 2.368303705006838 0.4804297834634781 2.133883237838745 0.2928934097290039 C 1.8994627706706524 0.10535703599452972 1.5815206244587898 0 1.25 0 C 0.9184793755412102 0 0.6005372293293476 0.10535703599452972 0.3661167621612549 0.2928934097290039 C 0.13169629499316216 0.4804297834634781 5.551115123125783e-16 0.7347835004329681 0 1 Z M 8.75 1 C 8.75 1.2652164995670319 8.881696294993162 1.519570216536522 9.116116762161255 1.707106590270996 C 9.350537229329348 1.8946429640054703 9.66847937554121 2 10 2 C 10.33152062445879 2 10.649462770670652 1.8946429640054703 10.883883237838745 1.707106590270996 C 11.118303705006838 1.519570216536522 11.25 1.2652164995670319 11.25 1 C 11.25 0.7347835004329681 11.118303705006838 0.4804297834634781 10.883883237838745 0.2928934097290039 C 10.649462770670652 0.10535703599452972 10.33152062445879 0 10 0 C 9.66847937554121 0 9.350537229329348 0.10535703599452972 9.116116762161255 0.2928934097290039 C 8.881696294993162 0.4804297834634781 8.75 0.7347835004329681 8.75 1 Z M 17.5 1 C 17.5 1.2652164995670319 17.631695102900267 1.519570216536522 17.86611557006836 1.707106590270996 C 18.100536037236452 1.8946429640054703 18.41847937554121 2 18.75 2 C 19.08152062445879 2 19.399463962763548 1.8946429640054703 19.63388442993164 1.707106590270996 C 19.868304897099733 1.519570216536522 20 1.2652164995670319 20 1 C 20 0.7347835004329681 19.868304897099733 0.4804297834634781 19.63388442993164 0.2928934097290039 C 19.399463962763548 0.10535703599452972 19.08152062445879 0 18.75 0 C 18.41847937554121 0 18.100536037236452 0.10535703599452972 17.86611557006836 0.2928934097290039 C 17.631695102900267 0.4804297834634781 17.5 0.7347835004329681 17.5 1 Z"
        joinStyle: 2
        antialiasing: true
    }
}
