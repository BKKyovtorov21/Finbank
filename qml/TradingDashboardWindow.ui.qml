import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0
import QtCharts

Rectangle {

    property alias imageSource: imageSource.source
    property alias backButton: backButton
    property alias userFullname: userFullname.text
    property alias username: username.text
    property alias stockMarketButton: stockMarketButton
    id: tradingDashboardWindow
    width: 1280
    height: 832
    color: "#ffffff"

    Item {
        id: searchbar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 235
        anchors.rightMargin: 658
        anchors.topMargin: 26
        anchors.bottomMargin: 754
        Rectangle {
            id: rectangle_22
            width: 387
            height: 52
            color: "#4dececec"
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Image {
            id: element
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
        id: profile
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1083
        anchors.rightMargin: 16
        anchors.topMargin: 20
        anchors.bottomMargin: 760
        Image {
            id: imageSource
            width: 70
            height: 70

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: -32
            anchors.topMargin: -9
            source: "qrc:/resources/user.png"
        }

        Text {
            id: userFullname
            width: 112
            height: 19
            color: "#000000"
            text: qsTr("Boyan Kiovtorov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 53
            anchors.topMargin: 8
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        Text {
            id: username
            width: 78
            height: 19
            color: "#802f2f2f"
            text: qsTr("@kiovtorov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 58
            anchors.topMargin: 33
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_97
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: -7
        anchors.rightMargin: 1094
        anchors.topMargin: 9
        anchors.bottomMargin: 735
        Rectangle {
            id: logo
            width: 86
            height: 88
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: logo1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "qrc:/resources/logo1.png"
            }
        }

        Text {
            id: finban_Pro
            width: 118
            height: 23
            color: "#000000"
            text: qsTr("Finbank Trade")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 86
            anchors.topMargin: 33
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_88
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1104
        anchors.topMargin: 153
        anchors.bottomMargin: 654
        Rectangle {
            id: mage_dashboard_fill
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: element2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                source: "qrc:/resources/dashboard.svg"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: dashboard
            width: 107
            height: 23
            color: "#0d99ff"
            text: qsTr("Dashboard")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_89
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1135
        anchors.topMargin: 198
        anchors.bottomMargin: 609
        Rectangle {
            id: mdi_light_chart_pie
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: element3
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 3
                anchors.topMargin: 3
                anchors.bottomMargin: 2
                source: "qrc:/resources/portfolio.svg"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: portfolio
            width: 76
            height: 23
            color: "#80000000"
            text: qsTr("Portfolio")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_90
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1132
        anchors.topMargin: 243
        anchors.bottomMargin: 564
        Rectangle {
            id: uil_chart
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: element4
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                source: "qrc:/resources/stocks.svg"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: my_Stock
            width: 79
            height: 23
            color: "#80000000"
            text: qsTr("My Stock")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_91
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 35
        anchors.rightMargin: 1144
        anchors.topMargin: 288
        anchors.bottomMargin: 519
        Rectangle {
            id: iconoir_coins
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Item {
                id: group
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 3
                anchors.rightMargin: 3
                anchors.topMargin: 3
                anchors.bottomMargin: 3

                Image {
                    id: element7
                    anchors.fill: parent
                    source: "qrc:/resources/deposit.svg"
                    antialiasing: true
                }
            }
            clip: true
        }

        Text {
            id: deposit
            width: 67
            height: 23
            color: "#80000000"
            text: qsTr("Deposit")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 35
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_92
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1150
        anchors.topMargin: 330
        anchors.bottomMargin: 477
        Rectangle {
            id: gravity_ui_bulb
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Item {
                id: group1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                anchors.topMargin: 1
                anchors.bottomMargin: 1
                Image {
                    id: element8
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    source: "qrc:/resources/insight.svg"
                    antialiasing: true
                }
            }
            clip: true
        }

        Text {
            id: insight
            width: 61
            height: 23
            color: "#80000000"
            text: qsTr("Insight")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Button {
        id: stockMarketButton
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1097
        anchors.topMargin: 395
        anchors.bottomMargin: 411
        background: Rectangle {
            id: tabler_device_desktop_analytics
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: element10
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 3
                anchors.rightMargin: 3
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                source: "qrc:/resources/marketStock.svg"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: market_Stock
            width: 114
            height: 23
            color: "#80000000"
            text: qsTr("Market Stock")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 3
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_94
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 36
        anchors.rightMargin: 1096
        anchors.topMargin: 437
        anchors.bottomMargin: 372
        Image {
            id: element11
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 129
            anchors.bottomMargin: 1
            source: "qrc:/resources/news.svg"
            antialiasing: true
        }

        Text {
            id: news_Update
            width: 114
            height: 23
            color: "#80000000"
            text: qsTr("News Update")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 35
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_95
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1107
        anchors.topMargin: 505
        anchors.bottomMargin: 302
        Text {
            id: help_Center
            width: 104
            height: 23
            color: "#80000000"
            text: qsTr("Help Center")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Rectangle {
            id: basil_headset_solid
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: element12
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                source: "qrc:/resources/helpCenter.svg"
                antialiasing: true
            }
            clip: true
        }
    }

    Item {
        id: group_96
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 34
        anchors.rightMargin: 1142
        anchors.topMargin: 546
        anchors.bottomMargin: 262
        Rectangle {
            id: material_symbols_settings_outline
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: element13
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                source: "qrc:/resources/settings.svg"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: settings
            width: 69
            height: 23
            color: "#80000000"
            text: qsTr("Settings")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 36
            anchors.topMargin: 1
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Rectangle {
        id: rectangle_59
        width: 1065
        height: 732
        color: "#f9f9f9"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 224
        anchors.topMargin: 101
    }

    Rectangle {
        id: rectangle_61
        width: 1065
        height: 732
        color: "#f9f9f9"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 224
        anchors.topMargin: 101
    }

    Item {
        id: group_130
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1038
        anchors.rightMargin: 11
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_63
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_126
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 54
            anchors.topMargin: 16
            anchors.bottomMargin: 97
            Text {
                id: real_estate
                width: 93
                height: 23
                color: "#000000"
                text: qsTr("Real estate")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 68
                anchors.topMargin: 4
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }

            Item {
                id: group_125
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 105
                Rectangle {
                    id: ellipse_13
                    width: 55
                    height: 55
                    anchors.left: parent.left
                    anchors.top: parent.top
                    radius: 40
                    color: "#fd7653"

                    antialiasing: true
                }

                Image {
                    id: element14
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.topMargin: 13
                    anchors.bottomMargin: 12
                    source: "qrc:/resources/realEstate.svg"
                    antialiasing: true
                }
            }
        }

        Text {
            id: stocks
            width: 80
            height: 23
            color: "#727272"
            text: qsTr("22 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 22
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_124
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 14
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element16
                width: 107
                height: 32
                color: "#000000"
                text: qsTr("$250.84")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_123
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 118
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_64
                    width: 67
                    height: 22
                    color: "#e8ffeb"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element17
                    width: 36
                    height: 19
                    color: "#42db59"
                    text: qsTr("3.1%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 21
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_98
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 6
                    anchors.rightMargin: 55
                    anchors.topMargin: 5
                    anchors.bottomMargin: 6

                    Image {
                        id: element19
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 6
                        source: "qrc:/resources/rightArrow.svg"
                        rotation: 90
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_129
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 769
        anchors.rightMargin: 280
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_65
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_127
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 88
            anchors.topMargin: 16
            anchors.bottomMargin: 97
            Text {
                id: health
                width: 59
                height: 23
                color: "#000000"
                text: qsTr("Health")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 68
                anchors.topMargin: 5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }

            Item {
                id: group_128
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 71
                Rectangle {
                    id: ellipse_14
                    width: 55
                    height: 55
                    anchors.left: parent.left
                    anchors.top: parent.top
                    radius: 30
                    color: "#20c0f6"

                    antialiasing: true
                }

                Image {
                    id: element20
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 16
                    anchors.rightMargin: 16
                    anchors.topMargin: 16
                    anchors.bottomMargin: 16
                    source: "qrc:/resources/health.svg"
                    antialiasing: true
                }
            }
        }

        Image {
            id: element21
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 200
            anchors.rightMargin: 15
            anchors.topMargin: 16
            anchors.bottomMargin: 150
            source: "qrc:/resources/more.svg"
            antialiasing: true
        }

        Text {
            id: stocks1
            width: 79
            height: 23
            color: "#727272"
            text: qsTr("32 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 22
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_131
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 24
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element22
                width: 87
                height: 32
                color: "#000000"
                text: qsTr("108.25")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_132
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 108
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_66
                    width: 67
                    height: 22
                    color: "#fff2f2"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element23
                    width: 39
                    height: 19
                    color: "#fe373a"
                    text: qsTr("8.2%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 19
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_99
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 12
                    anchors.rightMargin: 49
                    anchors.topMargin: 16
                    anchors.bottomMargin: -5
                    Image {
                        id: element24
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -3
                        anchors.rightMargin: 9
                        anchors.topMargin: -11
                        anchors.bottomMargin: 12
                        source: "qrc:/resources/rightArrow.svg"
                        rotation: -90
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_133
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 500
        anchors.rightMargin: 549
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_67
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_134
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 80
            anchors.rightMargin: 83
            anchors.topMargin: 21
            anchors.bottomMargin: 124
            Text {
                id: finance
                width: 69
                height: 23
                color: "#000000"
                text: qsTr("Finance")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }
        }

        Image {
            id: element26
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 201
            anchors.rightMargin: 14
            anchors.topMargin: 19
            anchors.bottomMargin: 147
            source: "qrc:/resources/more.svg"
            antialiasing: true
        }

        Text {
            id: stocks2
            width: 88
            height: 23
            color: "#727272"
            text: qsTr("107 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 18
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_135
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 25
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element27
                width: 86
                height: 32
                color: "#000000"
                text: qsTr("135.30")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_136
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 107
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_68
                    width: 67
                    height: 22
                    color: "#e8ffeb"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element28
                    width: 39
                    height: 19
                    color: "#42db59"
                    text: qsTr("6.2%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 19
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_100
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 6
                    anchors.rightMargin: 55
                    anchors.topMargin: 5
                    anchors.bottomMargin: 6
                    Image {
                        id: element29
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        source: "qrc:/resources/rightArrow.svg"
                        rotation: 90
                        antialiasing: true
                    }
                }
            }
        }
    }

    Text {
        id: dashboard1
        width: 155
        height: 44
        color: "#000000"
        text: qsTr("Dashboard")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 248
        anchors.topMargin: 128
        font.pixelSize: 30
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Hanuman"
    }

    Text {
        id: overview_of_notes_regarding_your_investment
        width: 346
        height: 29
        color: "#727272"
        text: qsTr("Overview of notes regarding your investment")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 224
        anchors.topMargin: 172
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Gelasio"
    }

    Rectangle {
        id: rectangle_60
        width: 733
        height: 280
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 238
        anchors.topMargin: 230
    }

    Text {
        id: best_Profit_Stock
        width: 130
        height: 19
        color: "#727272"
        text: qsTr("Best Profit Stock")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 787
        anchors.topMargin: 237
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: avg_Monthly_Grow
        width: 150
        height: 19
        color: "#727272"
        text: qsTr("Avg. Monthly Grow")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 584
        anchors.topMargin: 237
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: portfolio_Value
        width: 114
        height: 19
        color: "#727272"
        text: qsTr("Portfolio Value")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 268
        anchors.topMargin: 241
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
        font.family: "Gelasio"
    }

    Item {
        id: group_87
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 261
        anchors.rightMargin: 800
        anchors.topMargin: 274
        anchors.bottomMargin: 487
        Text {
            id: element31
            width: 191
            height: 38
            color: "#000000"
            text: qsTr("$475.432,98")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 5
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Item {
            id: group_86
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 46
            Text {
                id: your_profit_is
                width: 106
                height: 20
                color: "#727272"
                text: qsTr("Your profit is")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 1
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }

            Text {
                id: element32
                width: 120
                height: 25
                color: "#145ff9"
                text: qsTr("$81.234,72")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 100
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }
        }
    }

    Item {
        id: group_85
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 603
        anchors.rightMargin: 603
        anchors.topMargin: 274
        anchors.bottomMargin: 497
        Text {
            id: element33
            width: 75
            height: 25
            color: "#000000"
            text: qsTr("~1.34%")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: element34
            width: 58
            height: 23
            color: "#727272"
            text: qsTr("~120$")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 38
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_84
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 772
        anchors.rightMargin: 402
        anchors.topMargin: 274
        anchors.bottomMargin: 508
        Text {
            id: adidas
            width: 55
            height: 19
            color: "#000000"
            text: qsTr("Nike")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 52
            anchors.topMargin: 2
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: aDS
            width: 46
            height: 7
            color: "#727272"
            text: qsTr("NKE")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 53
            anchors.topMargin: 31
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Item {
            id: group_83
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 56
            Rectangle {
                id: ellipse_11
                width: 50
                height: 50
                anchors.left: parent.left
                anchors.top: parent.top
                radius: 30
                color: "#d9d9d9"

                antialiasing: true
            }

            Image {
                id: element35
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 13
                anchors.rightMargin: 7
                anchors.topMargin: 18
                anchors.bottomMargin: 18
                source: "qrc:/resources/nike.svg"
                antialiasing: true
            }
        }
    }

    Item {
        id: group_117
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 990
        anchors.rightMargin: 9
        anchors.topMargin: 223
        anchors.bottomMargin: 305
        Rectangle {
            id: rectangle_62
            width: 281
            height: 304
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: wachlist
            width: 92
            height: 25
            color: "#000000"
            text: qsTr("Wachlist")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 22
            anchors.topMargin: 23
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: add_new
            width: 60
            height: 19
            color: "#000000"
            text: qsTr("Add new")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 203
            anchors.topMargin: 20
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        Item {
            id: group_108
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 19
            anchors.rightMargin: 19
            anchors.topMargin: 67
            anchors.bottomMargin: 191
            Item {
                id: group_111
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 182
                anchors.bottomMargin: 11
                Item {
                    id: group_101
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 8
                    anchors.rightMargin: 47
                    anchors.topMargin: 21
                    anchors.bottomMargin: 3
                    Image {
                        id: element36
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        source: "qrc:/resources/rightArrow.svg"
                        rotation: 90
                        antialiasing: true
                    }
                }

                Item {
                    id: group_102
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: element38
                        width: 50
                        height: 19
                        color: "#000000"
                        text: qsTr("$193.6")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: element39
                        width: 48
                        height: 16
                        color: "#04cb2e"
                        text: qsTr("0.76%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 14
                        anchors.topMargin: 19
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }
                }
            }

            Item {
                id: group_103
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 123
                anchors.topMargin: 2
                Text {
                    id: apple
                    width: 45
                    height: 19
                    color: "#000000"
                    text: qsTr("Apple")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 47
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Gelasio"
                }

                Text {
                    id: adidas_AG
                    width: 79
                    height: 19
                    color: "#727272"
                    text: qsTr("Adidas AG")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 42
                    anchors.topMargin: 25
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_118
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 82
                    anchors.topMargin: 1
                    anchors.bottomMargin: 5
                    Item {
                        id: group_104
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Rectangle {
                            id: ellipse_12
                            width: 38
                            height: 38
                            anchors.left: parent.left
                            anchors.top: parent.top

                            color: "#d9d9d9"
                            radius: 30
                            antialiasing: true
                        }

                        Image {
                            id: element40
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 11
                            anchors.rightMargin: 12
                            anchors.topMargin: 10
                            anchors.bottomMargin: 10
                            source: "qrc:/resources/appleIcon.svg"
                            antialiasing: true
                        }
                    }
                }
            }
        }

        Item {
            id: group_114
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 19
            anchors.rightMargin: 19
            anchors.topMargin: 144
            anchors.bottomMargin: 110
            Item {
                id: group_107
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 114
                anchors.topMargin: 3
                Item {
                    id: group_105
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: twitter
                        width: 56
                        height: 19
                        color: "#000000"
                        text: qsTr("Twitter")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 42
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: twitter_INC
                        width: 89
                        height: 19
                        color: "#727272"
                        text: qsTr("Twitter INC")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 41
                        anchors.topMargin: 28
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Item {
                        id: group_106
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 91
                        anchors.topMargin: 2
                        anchors.bottomMargin: 7
                        Rectangle {
                            id: ellipse_15
                            width: 38
                            height: 38
                            anchors.left: parent.left
                            anchors.top: parent.top
                            radius: 30
                            color: "#d9d9d9"

                            antialiasing: true
                        }

                        Image {
                            id: element41
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 9
                            anchors.rightMargin: 9
                            anchors.topMargin: 9
                            anchors.bottomMargin: 9
                            source: "qrc:/resources/twitter.svg"
                            antialiasing: true
                        }
                    }
                }
            }

            Item {
                id: group_113
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 185
                anchors.bottomMargin: 15
                Item {
                    id: group_109
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: element42
                        width: 43
                        height: 19
                        color: "#000000"
                        text: qsTr("$53.9")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: element43
                        width: 48
                        height: 16
                        color: "#fe1019"
                        text: qsTr("0.32%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 11
                        anchors.topMargin: 19
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }
                }

                Item {
                    id: group_110
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 8
                    anchors.rightMargin: 44
                    anchors.topMargin: 33
                    anchors.bottomMargin: -9
                    Image {
                        id: element44
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -3
                        anchors.rightMargin: 9
                        anchors.topMargin: -11
                        anchors.bottomMargin: 12
                        source: "qrc:/resources/rightArrow.svg"
                        rotation: -90
                        antialiasing: true
                    }
                }
            }
        }

        Item {
            id: group_116
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 19
            anchors.rightMargin: 19
            anchors.topMargin: 231
            anchors.bottomMargin: 21
            Item {
                id: group_115
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 90
                Item {
                    id: group_112
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 42
                    anchors.topMargin: 8
                    Item {
                        id: group_119
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Text {
                            id: bMW
                            width: 44
                            height: 19
                            color: "#000000"
                            text: qsTr("BMW")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.NoWrap
                            font.weight: Font.DemiBold
                            font.family: "Gelasio"
                        }

                        Text {
                            id: bayeriche_MW
                            width: 110
                            height: 19
                            color: "#727272"
                            text: qsTr("Bayeriche MW")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 2
                            anchors.topMargin: 25
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.NoWrap
                            font.weight: Font.DemiBold
                            font.family: "Gelasio"
                        }

                        Rectangle {
                            id: prime_twitter
                            width: 14
                            height: 14
                            color: "transparent"
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 6
                            anchors.topMargin: 14
                            clip: true
                        }
                    }
                }

                Item {
                    id: group_120
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 115
                    anchors.bottomMargin: 14
                    Item {
                        id: group_121
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Rectangle {
                            id: ellipse_16
                            width: 38
                            height: 38
                            anchors.left: parent.left
                            anchors.top: parent.top

                            color: "#d9d9d9"
                            radius: 30
                            antialiasing: true
                        }
                    }

                    Item {
                        id: group_122
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 9
                        anchors.rightMargin: 9
                        anchors.topMargin: 9
                        anchors.bottomMargin: 9

                        Image {
                            id: element48
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 1
                            anchors.rightMargin: 1
                            anchors.topMargin: 1
                            anchors.bottomMargin: 1
                            source: "qrc:/resources/bmw.svg"
                            antialiasing: true
                        }
                    }
                }
            }

            Item {
                id: group_137
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 179
                anchors.topMargin: 6
                anchors.bottomMargin: 11
                Item {
                    id: group_138
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: element49
                        width: 56
                        height: 19
                        color: "#000000"
                        text: qsTr("$110.19")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: element50
                        width: 48
                        height: 16
                        color: "#04cb2e"
                        text: qsTr("0.32%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 17
                        anchors.topMargin: 19
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }
                }

                Item {
                    id: group_139
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 8
                    anchors.rightMargin: 50
                    anchors.topMargin: 23
                    anchors.bottomMargin: 1
                    Image {
                        id: element51
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        source: "qrc:/resources/rightArrow.svg"
                        rotation: 90
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_140
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 249
        anchors.rightMargin: 707
        anchors.topMargin: 556
        anchors.bottomMargin: 253
        Item {
            id: group_141
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Text {
                id: stock_index
                width: 87
                height: 19
                color: "#727272"
                text: qsTr("Stock index")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 238
                anchors.topMargin: 4
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }

            Text {
                id: stock_index1
                width: 87
                height: 19
                color: "#727272"
                text: qsTr("Stock index")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 123
                anchors.topMargin: 4
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }

            Item {
                id: group_142
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 230
                Rectangle {
                    id: rectangle_69
                    width: 94
                    height: 20
                    color: "#1a1459f9"
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: stock_Sector
                    width: 95
                    height: 19
                    color: "#2667fd"
                    text: qsTr("Stock Sector")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 4
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    font.weight: Font.DemiBold
                    font.family: "Gelasio"
                }
            }
        }

        Item {
            id: group_143
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 23
        }
    }

    Item {
        id: group_144
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 238
        anchors.rightMargin: 811
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_70
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_145
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 87
            anchors.topMargin: 16
            anchors.bottomMargin: 97
            Text {
                id: energy
                width: 61
                height: 23
                color: "#000000"
                text: qsTr("Energy")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 67
                anchors.topMargin: 5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }

            Item {
                id: group_146
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 72
                Rectangle {
                    id: ellipse_17
                    width: 55
                    height: 55
                    anchors.left: parent.left
                    anchors.top: parent.top

                    color: "#fd633d"
                    radius: 25
                    antialiasing: true
                }

                Image {
                    id: element53
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 18
                    anchors.rightMargin: 17
                    anchors.topMargin: 9
                    anchors.bottomMargin: 6
                    source: "qrc:/resources/energy.svg"
                    antialiasing: true
                }
            }
        }

        Image {
            id: element54
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 199
            anchors.rightMargin: 16
            anchors.topMargin: 16
            anchors.bottomMargin: 150
            source: "qrc:/resources/more.svg"
            antialiasing: true
        }

        Text {
            id: stocks3
            width: 81
            height: 23
            color: "#727272"
            text: qsTr("80 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 21
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_147
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element55
                width: 102
                height: 32
                color: "#000000"
                text: qsTr("$150.23")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_148
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 115
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_71
                    width: 67
                    height: 22
                    color: "#e8ffeb"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element56
                    width: 39
                    height: 19
                    color: "#42db59"
                    text: qsTr("8.2%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 19
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_149
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 6
                    anchors.rightMargin: 55
                    anchors.topMargin: 5
                    anchors.bottomMargin: 6

                    Image {
                        id: element58
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 6
                        source: "qrc:/resources/rightArrow.svg"
                        rotation: 90
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_150
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 517
        anchors.rightMargin: 708
        anchors.topMargin: 624
        anchors.bottomMargin: 153
        Rectangle {
            id: ellipse_18
            width: 55
            height: 55
            anchors.left: parent.left
            anchors.top: parent.top

            color: "#4060eb"
            radius: 40
            antialiasing: true
        }

        Image {
            id: element59
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 13
            anchors.rightMargin: 12
            anchors.topMargin: 13
            anchors.bottomMargin: 12
            source: "qrc:/resources/finance.svg"
            antialiasing: true
        }
    }

    Button {
        id: backButton
        x: 39
        y: 776
        text: qsTr("Back to Finbank")
        font.pixelSize: 18
        background: Rectangle {}
    }
}
