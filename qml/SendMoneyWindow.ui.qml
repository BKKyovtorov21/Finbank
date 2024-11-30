import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0

Rectangle {
    property real moneySending: 0.00
    property alias sendingValue: sendingValue.text
    property alias moneySending_TF: moneySending_TF.text
    property alias recipentReceiving: recipentReceiving.text
    property alias currencySending: currencySending.text
    property alias currencyReceiving: currencyReceiving.text
    property alias conversionRate: conversionRate.text
    property alias sendingCurrencyButton: sendingCurrencyButton
    property alias receivingCurrencyButton: receivingCurrencyButton
    property alias currencySendingImage: currencySendingImage.source
    property alias currencyReceivingImage: currencyReceivingImage.source
    property alias continueButton: continueButton
    property alias backButton: backButton
    property alias total: total.text
    id: transactions_Send_money
    width: 1280
    height: 832
    color: "#ffffff"

    Rectangle {
        id: rectangle_37
        width: 610
        height: 56
        color: "#33d9d9d9"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 367
        anchors.topMargin: 193
    }

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
        anchors.leftMargin: 295
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
            id: rectangle_24
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
                id: element4
                anchors.fill: parent
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
            id: userpfp
            x: -23
            source: "qrc:/resources/pfp.jpg"
            width: 70
            height: 70
            anchors.top: parent.top
            anchors.topMargin: -9
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

    Text {
        id: how_much_do_you_want_to_send_
        width: 582
        height: 44
        color: "#000000"
        text: qsTr("How much do you want to send?")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 118
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
    }

    Rectangle {
        id: rectangle_38
        width: 325
        height: 51
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 372
        anchors.topMargin: 195
    }

    Text {
        id: international
        width: 134
        height: 25
        color: "#000000"
        text: qsTr("International")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 464
        anchors.topMargin: 212
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
    }

    Button {
        id: sameCurrencyButton
        opacity: 0
        width: 261
        height: 56
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 712
        anchors.topMargin: 193
    }

    Text {
        id: same_currency
        width: 148
        height: 25
        color: "#000000"
        text: qsTr("Same currency")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 758
        anchors.topMargin: 212
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
    }

    Text {
        id: you_will_send
        width: 123
        height: 25
        color: "#000000"
        text: qsTr("You will send")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 282
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Item {
        id: group_23
        x: 350
        y: 319
        width: 652
        height: 48
        Rectangle {
            id: rectangle_40
            width: 652
            height: 48
            color: "#ffffff"
            radius: 10
            border.color: "#aba4a4"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top

            Button {
                id: sendingCurrencyButton
                x: 541
                y: 0
                width: 111
                height: 48
                opacity: 0
            }
        }

        TextField {
            id: moneySending_TF
            width: 522
            height: 36
            color: "#000000"
            placeholderText: qsTr("1000.00")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 11
            anchors.topMargin: 4
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            font.weight: Font.Medium
            background: Rectangle {
                // Customize background if needed
                color: "transparent"
            }
        }

        Text {
            id: currencySending
            width: 40
            height: 23
            color: "#000000"
            text: qsTr("USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 586
            anchors.topMargin: 11
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
        }

        Image {
            id: currencySendingImage
            width: 30
            height: 30
            source: "qrc:/resources/usd.png" // default image
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 547
            anchors.topMargin: 8
        }
    }

    Text {
        id: recipent_will_get
        width: 153
        height: 25
        color: "#000000"
        text: qsTr("Recipent will get")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 379
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Item {
        id: group_24
        x: 350
        y: 416
        width: 652
        height: 48
        Rectangle {
            id: rectangle_41
            width: 652
            height: 48
            color: "#ffffff"
            radius: 10
            border.color: "#aba4a4"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top

            Button {
                id: receivingCurrencyButton
                x: 544
                y: 4
                width: 108
                height: 44
                opacity: 0
            }
        }

        TextField {
            id: recipentReceiving
            width: 533
            height: 36
            color: "#000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 8
            anchors.topMargin: 8
            font.pixelSize: 20
            readOnly: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            font.weight: Font.Medium
            background: Rectangle {
                // Customize background if needed
                color: "transparent"
            }
        }

        Text {
            id: currencyReceiving
            width: 40
            height: 23
            color: "#000000"
            text: qsTr("CAD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 586
            anchors.topMargin: 11
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
        }

        Image {
            id: currencyReceivingImage
            width: 30
            height: 30
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 547
            anchors.topMargin: 8
            source: "qrc:/resources/cad.png"
        }
    }

    Rectangle {
        id: rectangle_42
        width: 652
        height: 223
        color: "#ffffff"
        radius: 10
        border.color: "#aba4a4"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 485
    }

    Text {
        id: conversionRate
        width: 95
        height: 25
        color: "#000000"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 896
        anchors.topMargin: 648
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Text {
        id: guaranteed_rate_12h_
        width: 198
        height: 25
        color: "#000000"
        text: qsTr("Guaranteed rate(12h)")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 368
        anchors.topMargin: 647
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Text {
        id: total
        width: 108
        height: 25
        color: "#000000"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 888
        anchors.topMargin: 605
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Text {
        id: total_will_be_converted
        width: 209
        height: 25
        color: "#000000"
        text: qsTr("Total will be converted")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 366
        anchors.topMargin: 605
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Item {
        id: group_26
        x: 366
        y: 538
        width: 620
        height: 32
        Text {
            id: sendingValue
            width: 138
            height: 32
            color: "#000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 496
            anchors.topMargin: 0
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
        }

        Text {
            id: you_will_pay
            width: 124
            height: 25
            color: "#000000"
            text: qsTr("You will pay")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Item {
        id: group_25
        x: 366
        y: 498
        width: 607
        height: 25
        Text {
            id: uSD4
            width: 72
            height: 25
            color: "#000000"
            text: qsTr("$5 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 536
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
        }

        Text {
            id: finbank_fees
            width: 136
            height: 25
            color: "#000000"
            text: qsTr("Finbank + fees")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
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
            id: element15
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
        }

        Item {
            id: group_6
            x: 98
            y: 20
            width: 30
            height: 15
            Image {
                id: element16
                anchors.fill: parent
                source: "qrc:/resources/rightArrow2.svg"
                rotation: 0
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
        }
    }

    Image {
        id: element18
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 43
        anchors.rightMargin: 1222
        anchors.topMargin: 210
        anchors.bottomMargin: 607
        source: "qrc:/resources/tick.svg"
        antialiasing: true
    }

    Text {
        id: select_Recipent
        width: 113
        height: 20
        color: "#000000"
        text: qsTr("Select Recipent")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 74
        anchors.topMargin: 210
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Image {
        id: line_8_Stroke_
        width: 30
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 258
        source: "qrc:/resources/selectiveLine.svg"

        antialiasing: true
    }

    Text {
        id: amount
        width: 68
        height: 20
        color: "#000000"
        text: qsTr("Amount")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 76
        anchors.topMargin: 249
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
    }

    Image {
        id: line_9_Stroke_
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 38
        anchors.topMargin: 365
        source: "qrc:/resources/notSelectiveLine.svg"
        antialiasing: true
    }

    Text {
        id: overview
        width: 79
        height: 20
        color: "#4d171716"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 87
        anchors.topMargin: 357
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
    }

    Image {
        id: line_9_Stroke_1
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 38
        anchors.topMargin: 295
        source: "qrc:/resources/notSelectiveLine.svg"
        antialiasing: true
    }

    Text {
        id: overview1
        width: 79
        height: 20
        color: "#4d171716"
        text: qsTr("Details Recipent")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 101
        anchors.topMargin: 287
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
    }

    Image {
        id: line_9_Stroke_2
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 38
        anchors.topMargin: 327
        source: "qrc:/resources/notSelectiveLine.svg"

        antialiasing: true
    }

    Text {
        id: overview2
        width: 79
        height: 20
        color: "#4d171716"
        text: qsTr("Transfer type")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 87
        anchors.topMargin: 319
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
    }
}
