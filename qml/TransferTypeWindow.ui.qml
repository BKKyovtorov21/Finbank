import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Rectangle {

    property alias payingMethodFinbank: payingMethodFinbank
    property alias continueButton: continueButton
    property alias backButton: backButton
    property alias imageSource: image.source
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
            font.family: "Gelasio"
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
            font.family: "Gelasio"
        }
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
            font.family: "Gelasio"
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
                source: "qrc:/resources/wallet.svg"

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
            font.family: "Gelasio"
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
            source: "../assets/user.png"
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
            font.family: "Gelasio"
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
            font.family: "Gelasio"
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
            id: rectangle_25
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
            font.family: "Gelasio"
        }

        Image {
            id: element7
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            anchors.topMargin: 32
            source: "../assets/element7.png"
        }

        Text {
            id: element8
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
            font.family: "Hanuman"
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
            font.family: "Gelasio"
        }

        Text {
            id: element9
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
                id: rectangle_26
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
                font.family: "Gelasio"
            }


        }

        Item {
            id: sendMoneyButton
            x: 16
            y: 118
            width: 200
            height: 37
            Rectangle {
                id: rectangle_27
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
                font.family: "Gelasio"
            }
        }

        Item {
            id: requestMoneyButton
            x: 241
            y: 118
            width: 200
            height: 37
            Rectangle {
                id: rectangle_28
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
                font.family: "Gelasio"
            }
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
                id: element13
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
        id: choose_your_transfer_type
        width: 467
        height: 44
        color: "#000000"
        text: qsTr("Choose your transfer type")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 406
        anchors.topMargin: 134
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
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
        id: line_8_Stroke_
        width: 30
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 26
        anchors.topMargin: 361
        source: "qrc:/resources/selectiveLine.svg"
        antialiasing: true
    }

    Button {
        id: payingMethodFinbank
        x: 293
        y: 278
        width: 802
        height: 85
        background: Text {
            id: finbank_transfer_type
            width: 192
            height: 20
            color: "#534b4b"
            text: qsTr("Finbank+ transfer type")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 55
            anchors.topMargin: 10
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Item {
            id: group_39
            x: 0
            y: 0
            width: 45
            height: 45
            Rectangle {
                id: ellipse_8
                width: 45
                height: 45
                anchors.left: parent.left
                anchors.top: parent.top

                color: "#d9d9d9"
                radius: 30
                antialiasing: true
            }

            Image {
                id: element18
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 13
                anchors.rightMargin: 12
                anchors.topMargin: 13
                anchors.bottomMargin: 14
                source: "qrc:/resources/wallet.svg"
                antialiasing: true
            }
        }

        Text {
            id: use_money_in_your_Finbak_account_to_pay_for_your_transfer_instan
            width: 358
            height: 37
            color: "#666666"
            text: qsTr("Use money in your Finbak+ account to pay for your transfer instantly.Should arrive in seconds")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 66
            anchors.topMargin: 40
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Button {
        id: group_49
        x: 273
        y: 440
        width: 401
        height: 85
        background: Text {
            id: debit_card
            width: 142
            height: 20
            color: "#534b4b"
            text: qsTr("Debit card")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 48
            anchors.topMargin: 10
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: send_from_your_Visa_or_Mastercafd_Should_arrive_in_seconds
            width: 358
            height: 40
            color: "#666666"
            text: qsTr("Send from your Visa or Mastercafd. \nShould arrive in seconds")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 44
            anchors.topMargin: 45
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_41
            x: 0
            y: 0
            width: 45
            height: 45
            Item {
                id: group_40
                x: 0
                y: 0
                width: 45
                height: 45
                Rectangle {
                    id: ellipse_9
                    width: 45
                    height: 45
                    anchors.left: parent.left
                    anchors.top: parent.top

                    color: "#d9d9d9"
                    radius: 30
                    antialiasing: true
                }
            }

            Item {
                id: group
                x: 13
                y: 13
                width: 20
                height: 20
                Image {
                    id: element19
                    anchors.fill: parent
                    source: "qrc:/resources/wallet.svg"

                    antialiasing: true
                }
            }
        }
    }

    Button {
        id: group_51
        x: 322
        y: 602
        width: 412
        height: 75
        background: Text {
            id: transfer_the_money_from_your_bank_account
            width: 389
            height: 20
            color: "#534b4b"
            text: qsTr("Transfer the money from your bank account")
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
            id: transfer_the_money_using_you_bank_account_balance_Should_arrive_
            width: 394
            height: 40
            color: "#666666"
            text: qsTr("Transfer the money using you bank account balance.\nShould arrive in seconds")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 19
            anchors.topMargin: 35
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Image {
        id: line_10_Stroke_
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 410
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
        anchors.topMargin: 401
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Item {
        id: group_46
        x: 286
        y: 215
        width: 819
        height: 46
        Text {
            id: finbank_transfer_type1
            width: 192
            height: 20
            color: "#000000"
            text: qsTr("Finbank+ transfer type")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: total_Fee_0_USD
            width: 136
            height: 20
            color: "#666666"
            text: qsTr("Total Fee: $0 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 671
            anchors.topMargin: 20
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }


    }

    Item {
        id: group_48
        x: 263
        y: 376
        width: 822
        height: 31
        Text {
            id: fast_and_easy_transfer
            width: 183
            height: 20
            color: "#000000"
            text: qsTr("Fast and easy transfer")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: total_Fee_0_USD1
            width: 136
            height: 20
            color: "#666666"
            text: qsTr("Total Fee: $0 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 674
            anchors.topMargin: 5
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }


    }

    Item {
        id: group_50
        x: 258
        y: 535
        width: 819
        height: 31
        Text {
            id: low_cost_transfer
            width: 145
            height: 20
            color: "#000000"
            text: qsTr("Low cost transfer")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 16
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: total_Fee_0_USD2
            width: 136
            height: 20
            color: "#666666"
            text: qsTr("Total Fee: $0 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 671
            anchors.topMargin: 5
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }


    }

    Item {
        id: group_65
        x: 274
        y: 592
        width: 45
        height: 45
        Rectangle {
            id: ellipse_10
            width: 45
            height: 45
            anchors.left: parent.left
            anchors.top: parent.top

            color: "#d9d9d9"
            radius: 30
            antialiasing: true
        }

        Image {
            id: element21
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 8
            anchors.rightMargin: 9
            anchors.topMargin: 5
            anchors.bottomMargin: 10
            source: "qrc:/resources/bank2.svg"

            antialiasing: true
        }
    }

}
