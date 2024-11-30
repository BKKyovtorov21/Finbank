import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0

Rectangle {
    property alias rectangle_44: rectangle_44
    property alias moneySending: moneySending.text
    property alias sendingAndFees: sendingAndFees.text
    property alias recipentNameReceiving: recipentNameReceiving.text
    property alias conversion: conversion.text
    property alias recipentReceiving: recipentReceiving.text
    property alias recipentEmail: recipentEmail.text
    property alias recipentFullname: recipentFullname.text
    property alias recipentIBAN: recipentIBAN.text
    property alias sendButton: sendButton
    property alias backButton: backButton
    id: overviewTransactionWindow
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
            source: "../assets/logo1.png"
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

    Button {
        id: sendButton
        x: 1088
        y: 761
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
            text: qsTr("Send")
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
            x: 98
            y: 20
            width: 30
            height: 15
            Image {
                id: element1643
                anchors.fill: parent
                source: "qrc:/resources/rightArrow2.svg"
                rotation: 0
                antialiasing: true
            }
        }
    }

    Button {
        id: backButton
        x: 921
        y: 761
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

    Item {
        id: group_36
        x: 33
        y: 205
        width: 143
        height: 20
        Image {
            id: element15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 128
            anchors.bottomMargin: 5
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
            anchors.leftMargin: 31
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_37
        x: 33
        y: 254
        width: 117
        height: 20
        Image {
            id: element16
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 102
            anchors.bottomMargin: 5
            source: "qrc:/resources/tick.svg"

            antialiasing: true
        }

        Text {
            id: amount
            width: 103
            height: 20
            color: "#000000"
            text: qsTr("Amount")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_38
        x: 36
        y: 303
        width: 145
        height: 20
        Image {
            id: element17
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 130
            anchors.bottomMargin: 5
            source: "qrc:/resources/tick.svg"

            antialiasing: true
        }

        Text {
            id: details_recipent
            width: 117
            height: 20
            color: "#000000"
            text: qsTr("Details recipent")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 29
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Image {
        id: element18
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1232
        anchors.topMargin: 354
        anchors.bottomMargin: 463
        source: "qrc:/resources/tick.svg"

        antialiasing: true
    }

    Text {
        id: transfer_type
        width: 99
        height: 20
        color: "#000000"
        text: qsTr("Transfer type")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 74
        anchors.topMargin: 352
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Image {
        id: line_10_Stroke_
        width: 30
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 410
        source: "qrc:/resources/selectiveLine.svg"
        antialiasing: true
    }

    Text {
        id: overview
        width: 70
        height: 20
        color: "#000000"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 75
        anchors.topMargin: 401
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Text {
        id: review_details_of_your_transfer
        width: 505
        height: 46
        color: "#000000"
        text: qsTr("Review details of your transfer")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 460
        anchors.topMargin: 123
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Item {
        id: group_52
        x: 471
        y: 190
        width: 481
        height: 76
        Rectangle {
            id: rectangle_44
            width: 481
            height: 76
            color: "#ffffff"
            radius: 15
            border.color: "#26000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }
    }

    Item {
        id: group_53
        x: 469
        y: 286
        width: 512
        height: 29
        Text {
            id: transfer_details
            width: 136
            height: 20
            color: "#000000"
            text: qsTr("Transfer details")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: edit
            width: 94
            height: 17
            color: "#6d9cdf"
            text: qsTr("Edit\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 419
            anchors.topMargin: 3
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Image {
            id: element20
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 431
            anchors.rightMargin: 69
            anchors.topMargin: 6
            anchors.bottomMargin: 11
            source: "qrc:/resources/edit.svg"

            antialiasing: true
        }
    }

    Item {
        id: group_54
        x: 447
        y: 332
        width: 504
        height: 24
        Text {
            id: you_send
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("You send")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: moneySending
            width: 89
            height: 24
            color: "#000000"
            text: qsTr("$1.000 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 416
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_57
        x: 456
        y: 439
        width: 490
        height: 24
        Text {
            id: you_will_pay
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("You will pay")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 2
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: sendingAndFees
            width: 136
            height: 24
            color: "#000000"
            text: qsTr("$1.010 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 355
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_55
        x: 458
        y: 366
        width: 489
        height: 18
        Text {
            id: finbank_fees
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Finbank fees")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: uSD2
            width: 53
            height: 18
            color: "#80000000"
            text: qsTr("$5 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 437
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_56
        x: 475
        y: 403
        width: 490
        height: 24
        Text {
            id: payment_method_fees
            width: 142
            height: 15
            color: "#000000"
            text: qsTr("Payment method fees")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: uSD3
            width: 89
            height: 24
            color: "#80000000"
            text: qsTr("$5 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 402
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Rectangle {
        id: mdi_information1
        width: 16
        height: 16
        opacity: 0.1
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 610
        anchors.topMargin: 542
        clip: true
    }

    Item {
        id: group_59
        x: 469
        y: 540
        width: 512
        height: 29
        Text {
            id: recipient_details
            width: 141
            height: 20
            color: "#000000"
            text: qsTr("Recipient details")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: edit1
            width: 94
            height: 17
            color: "#6d9cdf"
            text: qsTr("Edit\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 419
            anchors.topMargin: 3
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Image {
            id: element22
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 431
            anchors.rightMargin: 69
            anchors.topMargin: 6
            anchors.bottomMargin: 11
            source: "qrc:/resources/edit.svg"
            antialiasing: true
        }
    }

    Item {
        id: group_60
        x: 434
        y: 586
        width: 517
        height: 24
        Text {
            id: email
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Email")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentEmail
            width: 298
            height: 24
            color: "#000000"
            text: qsTr("boyankiovtorov@gmail.com")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 220
            font.pixelSize: 14
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_63
        x: 449
        y: 685
        width: 508
        height: 24
        Text {
            id: bank_name
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Bank name")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: cENAIDJA_Bank_Central_Asia_BCA_
            width: 251
            height: 24
            color: "#000000"
            text: qsTr("Bulgarian national bank(BNB)")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 258
            font.pixelSize: 14
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_61
        x: 464
        y: 620
        width: 488
        height: 24
        Text {
            id: account_Holder
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Account Holder")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentFullname
            width: 264
            height: 24
            color: "#000000"
            text: qsTr("Boyan Kiovtorov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 225
            font.pixelSize: 14
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_62
        x: 455
        y: 652
        width: 507
        height: 24
        Text {
            id: routing_number
            width: 142
            height: 15
            color: "#000000"
            text: qsTr("IBAN")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 21
            anchors.topMargin: 0
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentIBAN
            width: 371
            height: 24
            color: "#000000"
            text: qsTr("**** 4238")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 137
            font.pixelSize: 14
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_58
        x: 470
        y: 469
        width: 487
        height: 54
        Rectangle {
            id: rectangle_45
            width: 481
            height: 54
            color: "#0d000000"
            radius: 15
            border.color: "#f6f7f9"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1
        }

        Text {
            id: recipentNameReceiving
            width: 261
            height: 16
            color: "#000000"
            text: qsTr("Vicho will get")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 20
            anchors.topMargin: 10
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: conversion
            width: 466
            height: 11
            color: "#4d000000"
            text: qsTr("Conversion rate  1 CAD = 11.205,44 IDR ")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 13
            anchors.topMargin: 32
            font.pixelSize: 11
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentReceiving
            width: 115
            height: 23
            color: "#000000"
            text: qsTr("$1.361,61 CAD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 373
            anchors.topMargin: 20
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }
}
