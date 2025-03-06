import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0

Button {
    id: stock
    width: 360
    height: 73

    property alias ticker: ticker.text
    property alias price: price.text
    property alias percent: percent.text
    property alias name: name.text
    background:Item {
        id: group_131
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 13
        anchors.rightMargin: 327
        anchors.topMargin: 23
        anchors.bottomMargin: 30
        Rectangle {
            id: ellipse_14
            width: 20
            height: 20
            anchors.left: parent.left
            anchors.top: parent.top
            radius: 20
            color: "#45474d"

            antialiasing: true
        }

        Text {
            id: element
            width: 11
            height: 19
            color: "#4eacf8"
            text: qsTr("+")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 5
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal

        }
    }

    Item {
        id: group_132
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 47
        anchors.rightMargin: 71
        anchors.topMargin: 14
        Text {
            id: ticker
            width: 232
            height: 19
            color: "#000000"
            text: qsTr("S&P 500")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal

        }

        Text {
            id: name
            width: 243
            height: 40
            color: "#a0a0a0"
            text: qsTr("Standard and Poor’s 500")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 19
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal

        }
    }

    Image {
        id: line_34_Stroke_
        width: 374
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
    source: "qrc:/resources/plus2.svg"
        antialiasing: true
    }

    Text {
        id: price
        width: 108
        height: 19
        color: "#000000"
        text: qsTr("5,995.54")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 247
        anchors.topMargin: 14
        font.pixelSize: 15
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal

    }

    Text {
        id: percent
        width: 119
        height: 12
        color: "#35c759"
        text: qsTr("+22.44")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 236
        anchors.topMargin: 36
        font.pixelSize: 15
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal

    }
}

/*##^##
Designer {
    D{i:0;uuid:"190042dc-6074-507d-9cf1-4dc96e09b504"}D{i:1;uuid:"8f90cc2f-2bb4-5e5b-b15e-b666d42ce921"}
D{i:2;uuid:"5c84340c-0a26-5cdd-aacb-ac71d3e681c6"}D{i:3;uuid:"09edcd68-2a0d-538e-bd5b-f2d61dcc0d88"}
D{i:4;uuid:"02cd8ae6-f885-5b72-9157-d0e7b39ce02b"}D{i:5;uuid:"2c319643-fa67-54b5-9e6e-bc545f4221a6"}
D{i:6;uuid:"8eb9e098-535e-5e59-94bc-517618825521"}D{i:7;uuid:"8779e145-28e3-5afe-bb4b-a9591fbefddc"}
D{i:8;uuid:"aca8fe08-7f2d-5e2f-92fd-3c1decad8d53"}D{i:9;uuid:"ce38185b-2d93-5cb1-8b15-99a503d05bba"}
}
##^##*/

