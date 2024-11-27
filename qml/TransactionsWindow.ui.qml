import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Rectangle {

    property alias overviewButton: overviewButton
    property alias sendButton: sendButton
    property alias imageSource: image.source
    property alias transaction: transaction.text
    property alias balance: balance.text
    property alias backButton: backButton
    property alias tradingButton: tradingButton
    id: transactions
    width: 1280
    height: 832
    color: "#ffffff"

    Rectangle {
        id: solar_copy_linear
        width: 16
        height: 16
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 86
        clip: true
    }

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
            id: transactions1
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
        id: searchbar1
        x: 144
        y: 452
        width: 387
        height: 52
        Rectangle {
            id: rectangle_24
            width: 387
            height: 52
            color: "#4dffffff"
            radius: 10
            border.color: "#b2727272"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Image {
            id: element4
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
            id: search1
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
            source: "qrc:/resources/user.svg"
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

        Image {
            id: element7
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 168
            anchors.topMargin: 33
            anchors.bottomMargin: 13
            source: "qrc:/resources/search.svg"
            rotation: -90
            antialiasing: true
        }
    }

    Item {
        id: balanceGroup
        x: 15
        y: 254
        width: 457
        height: 186
        visible: false
        Rectangle {
            id: rectangle_26
            width: 457
            height: 186
            color: "#4dffffff"
            radius: 15
            border.color: "#727272"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: my_balance
            width: 96
            height: 21
            color: "#b22f2f2f"
            text: qsTr("My balance")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 16
            anchors.topMargin: 7
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
        }

        Text {
            id: element9
            width: 53
            height: 29
            color: "#249226"
            text: qsTr("+6,7%")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 195
            anchors.topMargin: 43
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
        }

        Text {
            id: compared_to_last_month
            width: 164
            height: 21
            color: "#b22f2f2f"
            text: qsTr("Compared to last month")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 270
            anchors.topMargin: 47
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
        }

        Text {
            id: element10
            width: 174
            height: 23
            color: "#000000"
            text: qsTr("6549  7329  9821  2472")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 16
            anchors.topMargin: 80
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Hanuman"
        }

        Item {
            id: copyButton
            x: 211
            y: 82
            width: 50
            height: 18
            Rectangle {
                id: rectangle_27
                width: 50
                height: 18
                color: "#33d9d9d9"
                radius: 3
                border.color: "#727272"
                border.width: 0.3
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: copy
                width: 28
                height: 12
                color: "#249226"
                text: qsTr("Copy")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 18
                anchors.topMargin: 3
                font.pixelSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal
            }
        }

        Item {
            id: sendMoneyButton
            x: 16
            y: 118
            width: 200
            height: 37
            Rectangle {
                id: rectangle_28
                width: 200
                height: 37
                color: "#367c21"
                radius: 8
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: send_money
                width: 125
                height: 28
                color: "#ececec"
                text: qsTr("Send money")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 38
                anchors.topMargin: 7
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
            }
        }

        Item {
            id: requestMoneyButton
            x: 241
            y: 118
            width: 200
            height: 37
            Rectangle {
                id: rectangle_29
                width: 200
                height: 37
                color: "#33d9d9d9"
                radius: 8
                border.color: "#727272"
                border.width: 0.3
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: request_money
                width: 156
                height: 28
                color: "#367c21"
                text: qsTr("Request money")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 22
                anchors.topMargin: 5
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
            }
        }
    }

    Text {
        id: overview
        width: 76
        height: 23
        color: "#802f2f2f"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 801
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Text {
        id: wallet
        width: 53
        height: 23
        color: "#802f2f2f"
        text: qsTr("Wallet")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 913
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Text {
        id: transaction
        width: 97
        height: 23
        color: "#367c21"
        text: qsTr("Transaction")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 992
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Button {
        id: tradingButton
        background: Text {
            id: trading
            width: 65
            height: 23
            color: "#802f2f2f"
            text: qsTr("Trading")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1109
            anchors.topMargin: 147
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }
    }

    Text {
        id: settings
        width: 66
        height: 23
        color: "#802f2f2f"
        text: qsTr("Settings")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1194
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Button {
        id: backButton
        x: 28
        y: 134
        width: 212
        height: 48
        background: Text {
            id: back_to_dashboard
            width: 149
            height: 23
            color: "#802f2f2f"
            text: qsTr("Back to dashboard")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 64
            anchors.topMargin: 13
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }

        Rectangle {
            id: ellipse_5
            width: 48
            height: 48
            anchors.left: parent.left
            anchors.top: parent.top
            radius: 30
            color: "#00eeeeee"

            antialiasing: true
        }

        Image {
            id: element13
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 18
            anchors.rightMargin: 182
            anchors.topMargin: 15
            anchors.bottomMargin: 15
            source: ""
            antialiasing: true
        }
    }

    Text {
        id: total_balances
        width: 116
        height: 23
        color: "#802f2f2f"
        text: qsTr("Total balances")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 132
        anchors.topMargin: 230
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Text {
        id: balance
        width: 270
        height: 30
        color: "#000000"
        text: qsTr("1000.00 USD")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 200
        anchors.topMargin: 291
        font.pixelSize: 25
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Text {
        id: transactions2
        width: 188
        height: 48
        color: "#000000"
        text: qsTr("Transactions")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 126
        anchors.topMargin: 407
        font.pixelSize: 22
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Text {
        id: today_22_October
        width: 219
        height: 48
        color: "#802f2f2f"
        text: qsTr("Today, 27 November")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 126
        anchors.topMargin: 526
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Text {
        id: uSD_1_78_BGN_as_of_today
        width: 258
        height: 46
        color: "#802f2f2f"
        text: qsTr("1 USD = 1.78 BGN, as of today")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 194
        anchors.topMargin: 332
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Medium
    }

    Text {
        id: goals_1000_2000_USD
        width: 168
        height: 20
        color: "#000000"
        text: qsTr("Goals 1000/2000 USD")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 315
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Rectangle {
        id: rectangle_30
        x: 1348
        y: 686
        width: 300
        height: 6
        color: "#5c615c"
        radius: 10
        border.color: "#b2727272"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 343
    }

    Rectangle {
        id: rectangle_32
        width: 10
        height: 6
        visible: true
        color: "#46ce47"
        radius: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 343
    }

    Button {
        id: sendButton
        x: 666
        y: 237
        width: 104
        height: 36
        background: Rectangle {
            id: rectangle_34
            width: 104
            height: 36
            color: "#1c1f31"
            radius: 15
            anchors.left: parent.left
            anchors.top: parent.top
            Text {
                id: send
                width: 57
                height: 20
                color: "#ffffff"
                text: qsTr("Send")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 31
                anchors.topMargin: 8
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Medium
            }

            Item {
                id: group_6
                x: 21
                y: 8
                width: 10
                height: 20
                Image {
                    id: element14
                    anchors.fill: parent
                    source: "qrc:/resources/rightArrow.svg"
                    rotation: 90
                    antialiasing: true
                }
            }
        }
    }

    Item {
        id: sendButton1
        x: 789
        y: 237
        width: 114
        height: 36
        Rectangle {
            id: rectangle_35
            width: 114
            height: 36
            color: "#1c1f31"
            radius: 15
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_7
            x: 20
            y: 9
            width: 10
            height: 20
            Image {
                id: element16
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                anchors.bottomMargin: 2
                source: "qrc:/resources/rightArrow.svg"
                rotation: -90
                antialiasing: true
            }
        }

        Text {
            id: request
            width: 78
            height: 20
            color: "#ffffff"
            text: qsTr("Request")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 30
            anchors.topMargin: 8
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Item {
        id: sendButton2
        x: 922
        y: 237
        width: 130
        height: 36
        Rectangle {
            id: rectangle_36
            width: 130
            height: 36
            color: "#1c1f31"
            radius: 15
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group
            x: 28
            y: 9
            width: 12
            height: 18
            Image {
                id: element18
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.topMargin: 3
                anchors.bottomMargin: 3
                source: "qrc:/resources/convert.svg"
                antialiasing: true
            }
        }

        Text {
            id: convert
            width: 67
            height: 20
            color: "#ffffff"
            text: qsTr("Convert")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 51
            anchors.topMargin: 8
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Item {
        id: sendButton3
        x: 1071
        y: 234
        width: 40
        height: 45
        Rectangle {
            id: rectangle_37
            width: 40
            height: 40
            color: "#1c1f31"
            radius: 100
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element20
            width: 40
            height: 40
            color: "#ffffff"
            text: qsTr("...")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1
            anchors.topMargin: 5
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                loops: 1
                duration: 1000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 5000
        enabled: true

        KeyframeGroup {
            target: rectangle_32
            property: "width"
            Keyframe {
                value: 300
                frame: 2572
            }

            Keyframe {
                value: 10
                frame: 0
            }
        }
    }

    Rectangle {
        id: rectangle_33
        width: 0
        height: 6
        visible: true
        color: "#074808"
        radius: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 343
    }

    Button {
        id: overviewButton
        x: 789
        y: 149
        width: 89
        height: 21
        visible: true
        opacity: 0
    }

    Image {
        id: usdimage
        x: 132
        y: 285
        width: 49
        height: 50
        source: "qrc:/resources/usd.png"
    }
}
