import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: transaction_details
    width: 534
    height: 815
    color: "#e1e1e1"

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
            id: element
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            anchors.topMargin: 32
            source: "../assets/element.png"
        }

        Text {
            id: element1
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
            id: element2
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
            x: 81
            y: 77
            width: 180
            height: 23
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
                anchors.leftMargin: 130
                anchors.topMargin: 5
            }

            Text {
                id: copy
                width: 28
                height: 12
                color: "#249226"
                text: qsTr("Copy")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 148
                anchors.topMargin: 8
                font.pixelSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal
                font.family: "Gelasio"
            }

            Item {
                id: group_3
                x: 0
                y: 0
                width: 5
                height: 13
                SvgPathItem {
                    id: element3
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 1
                    anchors.topMargin: 2
                    anchors.bottomMargin: 0
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#249226"
                    path: "M 0 3.918269550099092 C 0 2.0714584573113504 4.973262549001767e-8 1.147400069022711 0.24447192698717118 0.5740266111567828 C 0.4886656828224659 1.1677353228822795e-7 0.882212480902672 0 1.6687500000000002 0 L 2.5031250000000003 0 C 3.2896625190973285 0 3.683209449797869 1.1677353228822795e-7 3.927403205633164 0.5740266111567828 C 4.171875082887709 1.147400069022711 4.171875 2.0714584573113504 4.171875 3.918269550099092 L 4.171875 7.183494175181669 C 4.171875 9.03030526796941 4.171875082887709 9.954363967654135 3.927403205633164 10.527737425520064 C 3.683209449797869 11.101763919903314 3.2896625190973285 11.101763725280762 2.5031250000000003 11.101763725280762 L 1.6687500000000002 11.101763725280762 C 0.882212480902672 11.101763725280762 0.4886656828224659 11.101763919903314 0.24447192698717118 10.527737425520064 C 4.973262549001767e-8 9.954363967654135 0 9.03030526796941 0 7.183494175181669 L 0 3.918269550099092 Z"
                    joinStyle: 0
                    antialiasing: true
                }

                SvgPathItem {
                    id: element4
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 1
                    anchors.bottomMargin: 2
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#249226"
                    path: "M 0.8343750000000001 11.101763725280762 C 0.6130849914625288 11.10176372528076 0.40085847210139036 10.895355724791031 0.244382806122303 10.527946683690006 C 0.08790714014321566 10.16053764258898 2.4702462297909734e-16 9.662223797987645 0 9.142628950231215 L 0 5.224359400132123 C 0 2.761727047682892 -3.3155083678515496e-8 1.5300842169638278 0.3259624809026718 0.7653686072783196 C 0.6519249949604273 0.0006529975928114551 1.1761906504631043 0 2.225 0 L 3.3375000000000004 0 C 3.5587900085374717 2.900102047471777e-16 3.7710166605189444 0.206408311885816 3.9274923264980317 0.5738173529868403 C 4.083967992477119 0.9412263940878647 4.171874999999999 1.4395399272931164 4.171875 1.959134775049546"
                    joinStyle: 0
                    antialiasing: true
                }
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

    Item {
        id: group_20
        x: 0
        y: 0
        width: 534
        height: 815
        Rectangle {
            id: rectangle_35
            width: 534
            height: 815
            color: "#ffffff"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: attachment
            width: 129
            height: 29
            color: "#000000"
            text: qsTr("Attachment")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 26
            anchors.topMargin: 589
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }

        Item {
            id: group_8
            x: 17
            y: 66
            width: 40
            height: 40
            Image {
                id: ellipse_6
                anchors.left: parent.left
                anchors.top: parent.top
                source: "../assets/ellipse_6_1.png"
            }

            Item {
                id: group_7
                x: 22
                y: 5
                width: 9
                height: 27
                SvgPathItem {
                    id: element5
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 4
                    anchors.rightMargin: 4
                    anchors.topMargin: 3
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 0.5625 24.911808013916016 C 0.2474999986588955 24.911808013916016 0 24.363748240579582 0 23.666217613220216 L 0 1.2455904006958007 C 0 0.5480597733364334 0.2474999986588955 0 0.5625 0 C 0.8775000013411045 0 1.125 0.5480597733364334 1.125 1.2455904006958007 L 1.125 23.666217613220216 C 1.125 24.363748240579582 0.8775000013411045 24.911808013916016 0.5625 24.911808013916016 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element6
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 16
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 8.448751375172172 11.235224558174423 C 8.374978572708411 11.237216062525254 8.30183414484474 11.204998490366979 8.234021203218592 11.140642575771833 C 8.166208261592445 11.076286661176688 8.105227971732818 10.981216707561613 8.055001430371595 10.861547208317226 L 4.5112508542826575 3.014327909838158 L 0.9675001440832512 10.861547208317226 C 0.7425001109653744 11.359783365447774 0.3937500621472366 11.359783365447774 0.16875002902935976 10.861547208317226 C -0.056250004088517075 10.36331105118668 -0.056250004088517075 9.591045532903355 0.16875002902935976 9.092809375772807 L 4.1062503822807885 0.3736771271282822 C 4.3312504153986655 -0.12455903000226548 4.6800007659653575 -0.12455903000226548 4.9050007990832345 0.3736771271282822 L 8.842501856414623 9.092809375772807 C 9.0675018895325 9.591045532903355 9.0675018895325 10.36331105118668 8.842501856414623 10.861547208317226 C 8.730001839855685 11.1106652868825 8.583751390013756 11.235224558174423 8.448751375172172 11.235224558174423 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
                    antialiasing: true
                }
            }
        }

        Text {
            id: activity_Details
            width: 181
            height: 34
            color: "#000000"
            text: qsTr("Activity Details")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 19
            font.pixelSize: 23
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: sending_money_to_Todor_Atanasov
            width: 306
            height: 39
            color: "#000000"
            text: qsTr("Sending money to Todor Atanasov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 51
            anchors.topMargin: 66
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: sent
            width: 66
            height: 24
            color: "#999999"
            text: qsTr("Sent")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 57
            anchors.topMargin: 94
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }

        Text {
            id: bGN
            width: 123
            height: 27
            color: "#000000"
            text: qsTr("-500.00 BGN")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 385
            anchors.topMargin: 65
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: uSD
            width: 132
            height: 15
            color: "#999999"
            text: qsTr("276.34 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 388
            anchors.topMargin: 98
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: transactions_Details
            width: 204
            height: 29
            color: "#000000"
            text: qsTr("Transactions Details")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 23
            anchors.topMargin: 139
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }

        Text {
            id: note
            width: 49
            height: 29
            color: "#000000"
            text: qsTr("Note")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 32
            anchors.topMargin: 468
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }

        Item {
            id: group_13
            x: 23
            y: 189
            width: 486
            height: 29
            Text {
                id: element7
                width: 132
                height: 15
                color: "#000000"
                text: qsTr("#886949474")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 355
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Text {
                id: transaction_Number
                width: 155
                height: 29
                color: "#999999"
                text: qsTr("Transaction Number")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }
        }

        Item {
            id: group_14
            x: 24
            y: 235
            width: 486
            height: 29
            Text {
                id: aug_28_2024_2_40PM
                width: 213
                height: 15
                color: "#000000"
                text: qsTr("Aug 28, 2024 2:40PM")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 274
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Text {
                id: transaction_Date
                width: 155
                height: 29
                color: "#999999"
                text: qsTr("Transaction Date")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }
        }

        Item {
            id: group_15
            x: 24
            y: 274
            width: 486
            height: 37
            Text {
                id: todor_Atanasov
                width: 151
                height: 15
                color: "#000000"
                text: qsTr("Todor Atanasov")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 336
                anchors.topMargin: 7
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Text {
                id: recipent
                width: 155
                height: 29
                color: "#999999"
                text: qsTr("Recipent")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 7
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }

            Image {
                id: images_removebg_preview_1
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 293
                source: "../assets/images_removebg_preview_1.png"
            }
        }

        Item {
            id: group_16
            x: 24
            y: 327
            width: 486
            height: 29
            Text {
                id: bGN_500_00
                width: 132
                height: 15
                color: "#000000"
                text: qsTr("BGN 500.00")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 355
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Text {
                id: amount_send
                width: 155
                height: 29
                color: "#999999"
                text: qsTr("Amount send")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }
        }

        Item {
            id: group_17
            x: 23
            y: 373
            width: 486
            height: 29
            Text {
                id: aug_28_2024_3_40PM
                width: 212
                height: 15
                color: "#000000"
                text: qsTr("Aug 28, 2024 3:40PM")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 275
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Text {
                id: completed_on
                width: 155
                height: 29
                color: "#999999"
                text: qsTr("Completed on")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }
        }

        Item {
            id: group_18
            x: 23
            y: 419
            width: 486
            height: 29
            Text {
                id: bGN1
                width: 132
                height: 15
                color: "#000000"
                text: qsTr("0,10 BGN")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 355
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Text {
                id: our_fee
                width: 155
                height: 29
                color: "#999999"
                text: qsTr("Our fee")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }
        }

        Item {
            id: group_19
            x: 32
            y: 518
            width: 459
            height: 67
            Rectangle {
                id: rectangle_36
                width: 459
                height: 67
                color: "#80f5f5f5"
                radius: 10
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: add_a_few_notes_to_help_you_later
                width: 232
                height: 17
                color: "#999999"
                text: qsTr("Add a few notes to help you later")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 17
                anchors.topMargin: 8
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal
                font.family: "Gelasio"
            }
        }

        SvgPathItem {
            id: element8
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 130
            anchors.rightMargin: 396
            anchors.topMargin: 652
            anchors.bottomMargin: 143
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 3.650390625 14.69350973445061 L 3.650390625 4.714167589696046 L 2.294531051069498 7.897761248720155 L 1.564453125 6.122295722687754 L 4.171875 0 L 6.779296875 6.122295722687754 L 6.049218948930502 7.897761248720155 L 4.693359375 4.714167589696046 L 4.693359375 14.69350973445061 L 3.650390625 14.69350973445061 Z M 1.04296875 19.591346312600812 C 0.7561523375334218 19.591346312600812 0.510706942062825 19.35176061422635 0.3066327190026641 18.872588925543617 C 0.10255849594250321 18.393417236860884 0.0003476562462765287 17.81669688753261 0 17.14242802352571 L 0 13.469050589913058 L 1.04296875 13.469050589913058 L 1.04296875 17.14242802352571 L 7.30078125 17.14242802352571 L 7.30078125 13.469050589913058 L 8.34375 13.469050589913058 L 8.34375 17.14242802352571 C 8.34375 17.815880567618052 8.241712950635701 18.392600953438052 8.03763872757554 18.872588925543617 C 7.83356450451538 19.352576897649183 7.5879453246016055 19.592162618688427 7.30078125 19.591346312600812 L 1.04296875 19.591346312600812 Z"
            joinStyle: 0
            fillColor: "#878787"
            antialiasing: true
        }

        Text {
            id: click_to_upload_or_drag_and_drop
            width: 327
            height: 16
            color: "#000000"
            text: qsTr("Click to upload or drag and drop")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 96
            anchors.topMargin: 693
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"e77a9838-3da0-529b-9690-bc9be5729f85"}D{i:1;uuid:"46381158-2691-5df2-ba29-c03c78e74fba"}
D{i:2;uuid:"48c88c7b-f2e6-50b0-9530-a5ab773e5b43"}D{i:3;uuid:"41712548-cd2d-5586-a52c-f0eb6df57938"}
D{i:4;uuid:"0e2e81bf-885c-5dbf-b83b-fafa1c8f770f"}D{i:5;uuid:"1a07a062-0c70-51ef-94f2-b85993215731"}
D{i:6;uuid:"51e5c227-12c8-5eb3-a5e8-c57d4a7dd681"}D{i:7;uuid:"3324bdf6-6e8f-5987-ab7e-15990ffa9c15"}
D{i:8;uuid:"104085c1-80d5-5617-8586-f3204fe79038"}D{i:9;uuid:"3c08cc36-7c2c-540f-8195-013b75bfc149"}
D{i:10;uuid:"c6abc95a-977c-5b45-801a-fcf9479bd48e"}D{i:11;uuid:"e87489e3-0a9a-5072-8a92-1c66a81d9d54"}
D{i:12;uuid:"ae191c71-2dd4-5093-bf72-2bcb2ba1a438"}D{i:13;uuid:"ef47f748-8c64-5dd0-86fb-9b78b2dcbc5f"}
D{i:14;uuid:"cc2b9315-8390-5187-869f-d4747b5231f6"}D{i:15;uuid:"1e310267-9f2c-5f1c-a3b3-bc6c0ff26dac"}
D{i:16;uuid:"fd18b84f-4591-5e44-ba18-dc69b851f902"}D{i:17;uuid:"23b30ece-42af-5648-a0db-34dfadc80f48"}
D{i:18;uuid:"d02bbf46-e065-5c25-876f-617167349954"}D{i:19;uuid:"eea31614-9239-5005-abad-042d27159fbe"}
D{i:20;uuid:"db5f9fab-82bf-543e-b3e3-870519f082dd"}D{i:21;uuid:"ae193cc1-9f55-5e7d-8ca2-e6d7305bf2ed"}
D{i:22;uuid:"d4730770-a04f-54ea-97eb-a8140c845fb1"}D{i:23;uuid:"92a7eeb4-f72f-554d-9dff-63436d5497ee"}
D{i:24;uuid:"71b38182-b03a-5d8b-aae7-5a5ed0cb61d8"}D{i:25;uuid:"a795c2d6-33ea-5d0e-b14a-6d5e1187344f"}
D{i:26;uuid:"28c94cac-f999-55d5-8b2b-a29597491bbe"}D{i:27;uuid:"bd76d4f5-95c5-5d44-aa53-d9e0f98b8cb4"}
D{i:28;uuid:"d08606a1-2751-5401-af3f-dc9c96431e6e"}D{i:29;uuid:"3e3eda2a-accf-5860-b18d-dca1036ce558"}
D{i:30;uuid:"3fc9329a-104a-50ab-bc61-c13373637553"}D{i:31;uuid:"5fd82d82-e778-5af6-90a8-c7d3386d48d3"}
D{i:32;uuid:"0a3abefd-b5e0-5ecc-b35f-fd818a3dd237"}D{i:33;uuid:"5ee87b51-a0be-59fd-939c-a61d4b1dc53d"}
D{i:34;uuid:"ac0609e5-6056-506c-ad75-96eb1363f726"}D{i:35;uuid:"9c3e3692-f3ef-5baa-8f67-95e07b730ce2"}
D{i:36;uuid:"8b2e2919-d737-57ff-921a-8b7511b60356"}D{i:37;uuid:"27fd9e50-d112-542d-b9c4-0a45e4f6f98d"}
D{i:38;uuid:"c4f6f602-b0f9-5efa-b214-928de2731641"}D{i:39;uuid:"aedb3613-c013-55b7-a563-cce232287604"}
D{i:40;uuid:"efcde7ff-ae17-52f9-b19e-f0d312577e61"}D{i:41;uuid:"4bc7ef40-1396-5e22-8799-b1a8c5158ad1"}
D{i:42;uuid:"4cfa08f9-3a7e-5bfa-9a9e-459abce6e284"}D{i:43;uuid:"63eab52a-fdb4-5fb2-9fb7-48b575dbda86"}
D{i:44;uuid:"a20dac8b-0262-5c68-9e8a-f4f1e33dfc73"}D{i:45;uuid:"7f1cb819-63b9-575f-ac0d-6768587e2ee7"}
D{i:46;uuid:"0c179323-2eed-5b8e-bcb6-9939aca4fe40"}D{i:47;uuid:"8bfab4e6-ef11-5a0c-8d21-61af95cdd744"}
D{i:48;uuid:"ddd9fe99-8b66-518d-9ee6-273d15fe6737"}D{i:49;uuid:"e9b2e0e0-1da7-5ec9-ab38-4e2e7370a8eb"}
D{i:50;uuid:"ee477a4a-8f6a-5cb4-8ede-cd266c3423a4"}D{i:51;uuid:"1159a247-5ab2-5acf-9d05-6acc19f99cce"}
D{i:52;uuid:"62fe389b-7308-57be-8361-6704f5157192"}D{i:53;uuid:"8e6ad368-1425-5c12-97f6-0bdff35a1f41"}
D{i:54;uuid:"36979ad7-8d8a-51db-a76a-0493426033b2"}D{i:55;uuid:"24b961ea-07f9-5dbf-9a02-979d55003469"}
D{i:56;uuid:"6610d98a-4bb6-55fd-ba85-8b55fa45f78f"}D{i:57;uuid:"8b5ab75f-463d-54fb-ae33-8bb3b42b0ab8"}
D{i:58;uuid:"17a271c6-405b-5239-9b58-49239252cbe4"}D{i:59;uuid:"5d458dde-f61d-5fd2-895d-d188b7fefb25"}
}
##^##*/

