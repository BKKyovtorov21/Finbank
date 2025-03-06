import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {

        id: rootdashboard
        property var stackViewRef
        width: 300
        height: Screen.height
        visible: true
        property bool test: width <= 1300
        property bool test2: width <= 1100
        property bool isTablet: width <= 1000
        property bool isPhone: width <= 620

            property var usernameRef
           property var balance
           property var income
           property var expenses
           property var cardInfo
           property var fullName
           property var pfp
        property bool textfieldActive

        Flickable {
            id: flickable
            width: parent.width
            height: parent.height
            contentWidth: cardRepeater.count * (cardWidth + spacing) + spacing
            flickableDirection: Flickable.HorizontalFlick
            clip: true  // Ensures content outside the view is not shown

            property int cardWidth: rootdashboard.test2 ? 150 : (rootdashboard.test ? 190 : 250)
            property int cardHeight: rootdashboard.test2 ? 95 : (rootdashboard.test ? 110 : 140)
            property int spacing: 10

            Repeater {
                id: cardRepeater
                model: 5  // Number of cards
                delegate: Item {
                    width: flickable.cardWidth
                    height: flickable.cardHeight
                    x: index * (flickable.cardWidth + flickable.spacing)

                    Image {
                        width: parent.width
                        height: parent.height
                        source: "resources/minimalistbg1.png"
                        fillMode: Image.Stretch

                        ColumnLayout {
                            anchors.fill: parent

                            Item { Layout.fillHeight: true }

                            Text {
                                text: "5435 2735 0037 0015"
                                font.letterSpacing: 2
                                color: "white"
                                Layout.leftMargin: rootdashboard.test2 ? 5 : 10
                                font.pixelSize: rootdashboard.test2 ? 9 : 14
                                Layout.bottomMargin: 5
                            }

                            RowLayout {
                                Layout.preferredWidth: parent.width
                                Text {
                                    text: "BOYAN KYOVTOROV"
                                    color: "white"
                                    Layout.leftMargin: 10
                                    font.pixelSize: 14
                                    Layout.bottomMargin: 5
                                }

                                Image {
                                    visible: !rootdashboard.test2
                                    Layout.alignment: Qt.AlignRight
                                    source : "resources/visa.svg"
                                    Layout.rightMargin: 15
                                    Layout.bottomMargin: 5
                                }
                            }
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                flickable.contentX = x - (flickable.width - flickable.cardWidth) / 2
                            }
                        }
                    }
                }
            }
        }
}
