import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0

Rectangle {
    id: tradingMarketWindow
    width: 1280
    height: 832
    color: "#ffffff"
    property alias imageSource: imageSource.source
    property alias searchbar: searchbar
    property alias dashboardButton: dashboardButton

    TextField {
        id: searchbar
        x: 242
        y: 27
        width: 387
        height: 52
        placeholderText: qsTr("Search")
        font.pixelSize: 18
        color: "#802f2f2f"
        padding: 38 // Offset for placeholder text to align with original position

        background: Rectangle {
            id: rectangle_24
            width: 387
            height: 52
            color: "#4dececec"
            border.color: "#727272"
            border.width: 0.1
            radius: 8 // Optional: round the corners if needed
        }

        // SVG icon on the left side of the TextField
        Image {
            id: lupa
            width: 20
            height: 18
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 13
            source: "qrc:/resources/search.svg"
            antialiasing: true
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
            source: "qrc:/resources/pfp.jpg"
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
        anchors.rightMargin: 1078
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
            id: finban_Trade
            width: 130
            height: 23
            color: "#000000"
            text: qsTr("Finbank Trade")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 80
            anchors.topMargin: 33
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Button {
        id: dashboardButton
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1104
        anchors.topMargin: 153
        anchors.bottomMargin: 654
        background: Rectangle {
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
            color: "#80000000"
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
                    id: element5
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
                    anchors.fill: parent
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

    Item {
        id: group_93
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1097
        anchors.topMargin: 395
        anchors.bottomMargin: 411
        Rectangle {
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
            color: "#0d99ff"
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
        id: rectangle_65
        width: 366
        height: 710
        color: "#ffffff"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 242
        anchors.topMargin: 109
    }
}
