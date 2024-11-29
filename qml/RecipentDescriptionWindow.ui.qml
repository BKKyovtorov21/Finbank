import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Rectangle {

    property alias rectangle_42: rectangle_42
    property alias recipentIBAN: recipentIBAN.text
    property alias backButton: backButton
    property alias imageSource: image.source

    id: selectRecipentDescRiptionWindow
    width: 1280
    height: 832
    color: "#ffffff"

    property alias continueButton: continueButton
    property alias selectBankButton: selectBankButton
    property alias timelineAnimation: timelineAnimation

    Rectangle {
        id: logo
        width: 86
        height: 88
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 12
        Image {
            id: logo1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/resources/logo1.png"
        }
    }

    Item {
        id: chooseAccount
        x: 101
        y: 28
        width: 177
        height: 56
        Rectangle {
            id: rectangle_21
            width: 177
            height: 56
            color: "#fafafa"
            radius: 10
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: personal_account
            width: 141
            height: 23
            color: "#2f2f2f"
            text: qsTr("Personal account")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 9
            anchors.topMargin: 18
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }
    }

    Item {
        id: choosenPage
        x: 342
        y: 28
        width: 128
        height: 56
        Rectangle {
            id: rectangle_22
            width: 128
            height: 56
            color: "#fafafa"
            radius: 10
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: transactions
            width: 107
            height: 23
            color: "#196e1a"
            text: qsTr("Transactions")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 11
            anchors.topMargin: 19
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }
    }

    Image {
        id: element2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 304
        anchors.rightMargin: 957
        anchors.topMargin: 49
        anchors.bottomMargin: 768
        source: "qrc:/resources/RightArrows.svg"
        antialiasing: true
    }

    Item {
        id: searchbar
        x: 518
        y: 30
        width: 387
        height: 52
        Rectangle {
            id: rectangle_23
            width: 387
            height: 52
            color: "#4dececec"
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Image {
            id: element3
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 13
            anchors.rightMargin: 356
            anchors.topMargin: 19
            anchors.bottomMargin: 16
            source: "qrc:/resources/search.svg"
            antialiasing: true
        }

        Text {
            id: search
            width: 62
            height: 19
            color: "#802f2f2f"
            text: qsTr("Search")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 38
            anchors.topMargin: 18
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
        }
    }

    Item {
        id: chatButton
        x: 934
        y: 25
        width: 87
        height: 48
        Rectangle {
            id: rectangle_25
            width: 87
            height: 48
            color: "#4dececec"
            radius: 10
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_2
            x: 8
            y: 14
            width: 23
            height: 21
            Image {
                id: element5
                anchors.fill: parent
                anchors.bottom: parent.bottom
                source: "qrc:/resources/chat.svg"
                antialiasing: true
            }
        }

        Text {
            id: chat
            width: 40
            height: 23
            color: "#802f2f2f"
            text: qsTr("Chat")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 36
            anchors.topMargin: 15
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }
    }

    Item {
        id: profile
        x: 1083
        y: 20
        width: 181
        height: 52
        Image {
            id: image
            width: 70
            height: 70

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: -23
            anchors.topMargin: -9
            source: "qrc:/resources/pfp.jpg"
        }

        Text {
            id: boyan_Kiovtorov
            width: 112
            height: 19
            color: "#000000"
            text: qsTr("Boyan Kiovtorov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 53
            anchors.topMargin: 8
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }

        Text {
            id: kiovtorov
            width: 78
            height: 19
            color: "#802f2f2f"
            text: qsTr("@kiovtorov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 58
            anchors.topMargin: 33
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }
    }

    Button {
        id: continueButton
        x: 1055
        y: 757
        width: 141
        height: 51
        background: Rectangle {
            id: rectangle_34
            width: 141
            height: 51
            color: "#1c1f31"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element12
            width: 68
            height: 20
            color: "#ffffff"
            text: qsTr("Continue")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 18
            anchors.topMargin: 15
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_6
            x: 122
            y: 18
            width: 14
            height: 27
            Image {
                id: element14
                anchors.fill: parent
                source: "qrc:/resources/rightArrow.svg"
                rotation: -180
                antialiasing: true
            }
        }
    }

    Button {
        id: backButton
        x: 888
        y: 757
        width: 141
        height: 51
        background: Rectangle {
            id: rectangle_35
            width: 141
            height: 51
            color: "#ffffff"
            radius: 25
            border.color: "#000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: back
            width: 37
            height: 20
            color: "#000000"
            text: qsTr("Back")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 51
            anchors.topMargin: 16
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Text {
        id: select_Recipent
        width: 128
        height: 20
        color: "#4d303030"
        text: qsTr("Select Recipent")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 74
        anchors.topMargin: 212
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: details_Recipient
        width: 142
        height: 20
        color: "#000000"
        text: qsTr("Details Recipient")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 60
        anchors.topMargin: 306
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Image {
        id: line_12_Stroke_
        width: 30
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 315
        source: "qrc:/resources/selectiveLine.svg"
        antialiasing: true
    }

    Text {
        id: amount
        width: 68
        height: 20
        color: "#4d303030"
        text: qsTr("Amount")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 81
        anchors.topMargin: 266
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: cancel
        width: 49
        height: 20
        color: "#000000"
        text: qsTr("Cancel")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 260
        anchors.topMargin: 778
        font.pixelSize: 16
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Gelasio"
    }

    Text {
        id: select_recipient_bank_destination
        width: 617
        height: 42
        color: "#000000"
        text: qsTr("Select recipient bank destination")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 404
        anchors.topMargin: 159
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Item {
        id: group_45
        x: 446
        y: 252
        width: 531
        height: 85
        Rectangle {
            id: rectangle_42
            width: 531
            height: 85
            color: "#ffffff"
            radius: 15
            border.color: "#26000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }
    }

    Text {
        id: add_new
        width: 100
        height: 24
        color: "#80000000"
        text: qsTr("Add new")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 894
        anchors.topMargin: 376
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Item {
        id: group_64
        x: 433
        y: 375
        width: 543
        height: 22
        Text {
            id: bank_account
            width: 139
            height: 22
            color: "#000000"
            text: qsTr("Bank account")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Image {
        id: element16
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1232
        anchors.topMargin: 212
        anchors.bottomMargin: 605
        source: "qrc:/resources/tick.svg"
        antialiasing: true
    }

    Text {
        id: transfer_type
        width: 99
        height: 20
        color: "#727272"
        text: qsTr("Transfer type")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 74
        anchors.topMargin: 348
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Image {
        id: line_10_Stroke_
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 406
        source: "qrc:/resources/notSelectiveLine.svg"
        antialiasing: true
    }

    Image {
        id: line_16_Stroke_
        width: 15
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 357
        source: "qrc:/resources/notSelectiveLine.svg"
        antialiasing: true
    }

    Text {
        id: overview
        width: 79
        height: 20
        color: "#4d303030"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 70
        anchors.topMargin: 397
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Button {
        id: selectBankButton
        x: 446
        y: 417
        width: 531
        height: 85
        background: Rectangle {
            id: rectangle_43
            width: 531
            height: 85
            color: "#00f6f7f9"
            radius: 15
            border.color: "#26000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_44
            x: 9
            y: 18
            width: 50
            height: 50
            Rectangle {
                id: ellipse_9
                width: 50
                height: 50
                anchors.left: parent.left
                anchors.top: parent.top
                radius: 30
                color: "#80d9d9d9"
                antialiasing: true
            }

            Image {
                id: element17
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 11
                anchors.rightMargin: 11
                anchors.topMargin: 8
                anchors.bottomMargin: 12
                source: "qrc:/resources/bank2.svg"
                antialiasing: true
            }
        }

        Text {
            id: national_bank_of_Bulgaria
            width: 213
            height: 20
            color: "#000000"
            text: qsTr("National bank of Bulgaria")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 78
            anchors.topMargin: 18
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: recipentIBAN
            width: 327
            height: 11
            color: "#666666"
            text: qsTr("**** 2345")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 73
            anchors.topMargin: 48
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: false
                loops: 1
                duration: 200
                to: 200
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 200
        enabled: true

        KeyframeGroup {
            target: ellipse_9
            property: "fillColor"
            Keyframe {
                value: "#66cd8b"
                frame: 200
            }
        }

        KeyframeGroup {
            target: element17
            property: "fillColor"
            Keyframe {
                value: "#ffffff"
                frame: 200
            }
        }
        KeyframeGroup {
            target: rectangle_43
            property: "border.color"
            Keyframe {
                value: "#66cd8b"
                frame: 200
            }
        }
    }
}
