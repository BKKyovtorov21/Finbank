import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Rectangle {

    id: rootdashboard

    property bool isPhone: true
    property var stackViewRef
    property var usernameRef
    property var fullName
    anchors.bottom: parent.bottom
    width: parent.width
    height: 50
    color: "white"
    visible: rootdashboard.isPhone

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
        }

        Rectangle {
            Layout.preferredHeight: parent.height
            Layout.fillWidth: true
            MouseArea
            {
                anchors.fill: parent
                onClicked:{
                    if (rootdashboard.stackViewRef) {
                                rootdashboard.stackViewRef.push(Qt.resolvedUrl("Settings.qml"), {
                                    username: rootdashboard.usernameRef,
                                    fullName: rootdashboard.fullName,
                                    stackViewRef: rootdashboard.stackViewRef
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
                    if (rootdashboard.stackViewRef) {
                                rootdashboard.stackViewRef.push(Qt.resolvedUrl("Transactions.qml"), {
                                    username: rootdashboard.usernameRef,
                                    fullName: rootdashboard.fullName,
                                    stackViewRef: rootdashboard.stackViewRef
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
                    id: transactions
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
                    if (rootdashboard.stackViewRef) {
                                rootdashboard.stackViewRef.push(Qt.resolvedUrl("TradingDashboard.qml"), {
                                    username: rootdashboard.usernameRef,
                                    fullName: rootdashboard.fullName,
                                    stackViewRef: rootdashboard.stackViewRef
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
                    if (rootdashboard.stackViewRef) {
                                rootdashboard.stackViewRef.push(Qt.resolvedUrl("Settings.qml"), {
                                    username: rootdashboard.usernameRef,
                                    fullName: rootdashboard.fullName,
                                    stackViewRef: rootdashboard.stackViewRef
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
