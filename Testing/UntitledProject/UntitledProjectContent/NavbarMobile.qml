import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Rectangle {

    id: root

    property bool isPhone: true
    property var usernameRef
    property var fullName
    property alias transactionImage: transactionsRef
    property alias homeImage: home
    property alias walletImage: wallet
    property alias settingsImage: settings
    property alias tradingImage: trading

    anchors.bottom: parent.bottom
    width: parent.width
    height: 50
    color: "white"
    visible: root.isPhone

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        spacing: 30
        Layout.alignment: Qt.AlignVCenter

        Rectangle {
            Layout.preferredHeight: parent.height
            Layout.fillWidth: true

            ColumnLayout {
                spacing: 0

                Image {
                    id: home
                    source: "resources/homeNavbar.svg"
                }
                Text {
                    text: "Home"
                }
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:{
                    contentLoader.setSource("Dashboard.qml", {
                                        username: root.username,
                                        fullName: root.fullName
                                    })
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: parent.height
            Layout.fillWidth: true
            MouseArea
            {
                anchors.fill: parent
                onClicked:{
                    contentLoader.setSource("Transactions.qml", {
                                        username: root.username,
                                        fullName: root.fullName
                                    })
                }
            }
            ColumnLayout {
                spacing: 0

                Image {
                    id: wallet
                    source: "resources/walletInactive.svg"
                }
                Text {
                    text: "Wallet"
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: parent.height
            Layout.fillWidth: true
            MouseArea
            {
                anchors.fill: parent
                onClicked:{
                    contentLoader.setSource("Transactions.qml", {
                                        username: root.username,
                                        fullName: root.fullName
                                    })
                }
            }
            ColumnLayout {
                spacing: 0

                Image {
                    id: transactionsRef
                    Layout.alignment: Qt.AlignHCenter
                    source: "resources/transactionInactive.svg"
                }
                Text {
                    text: "Payments"
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: parent.height
            Layout.fillWidth: true

            MouseArea
            {
                anchors.fill: parent
                onClicked:{
                    contentLoader.setSource("TradingDashboard.qml", {
                                        username: root.username,
                                        fullName: root.fullName
                                    })
                }
            }
            ColumnLayout {
                spacing: 0

                Image {
                    id: trading
                    Layout.alignment: Qt.AlignHCenter
                    source: "resources/trading.svg"
                }
                Text {
                    text: "Invest"
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: parent.height
            Layout.fillWidth: true
            MouseArea
            {
                anchors.fill: parent
                onClicked:{
                    if (root.stackViewRef) {
                                root.stackViewRef.push(Qt.resolvedUrl("Settings.qml"), {
                                    username: root.usernameRef,
                                    fullName: root.fullName,
                                    stackViewRef: root.stackViewRef
                                });
                            }
                    else {
                        console.error("stackViewRef is undefined in SignIn.qml");
                    }
                }
            }

            ColumnLayout {
                spacing: 0

                Image {
                    id: settings
                    Layout.alignment: Qt.AlignHCenter
                    source: "resources/settings.svg"
                }
                Text {
                    text: "Settings"
                }
            }
        }
    }
}
