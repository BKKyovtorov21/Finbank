import QtQuick
import QtQuick.Controls
Item {
    id: root
    width: 1280
    height: 832

    property string username: "test"
    property string iban: "BG12FINB98765432109876"
    property bool showmore: false

    ScrollView {
        id: transactionScrollView
        x: 142
        y: 555
        width: 1094
        height: 220
        clip: true
        z: 10
        Column {
            id: transactionListLayout
            spacing: 10
            width: 1094
            height: 220
            z: 10
        }
    }

    Loader {
        id: loader
        source: ""
    }

    TransactionsWindow {
        id: transactionwindow
        anchors.fill: parent
        imageSource: rootdashboard.pfp
        balance: "8753.31"

        Component.onCompleted: {
            createtransaction.showTransactions(iban, showmore);
        }

        overviewButton.onClicked: {
            root.clearTransactions();

            transactionwindow.visible = false;
            loader.setSource("Dashboard.qml", { "usernameRef": username });
        }

        sendButton.onClicked: {
            root.clearTransactions();
            transactionwindow.visible = false;
            loader.source = "SelectRecipent.qml";
        }

        backButton.onClicked: {
            root.clearTransactions();
            transactionwindow.visible = false;
            loader.setSource("Dashboard.qml", { "usernameRef": username });
        }

        tradingButton.onClicked: {
            root.clearTransactions();
            transactionwindow.visible = false;
            loader.source = "TradingDashboard.qml";
        }

        Connections {
            target: createtransaction
            onTransactionFound: function(fullname, receivingValue, receivingCurrency, isReceiving) {
                var transaction = isReceiving ? "Receiving" : "Sending";
                var transactionComponent = Qt.createComponent("SingleTransactionDetail.qml");

                if (transactionComponent.status === Component.Ready) {
                    var transactionDetail = transactionComponent.createObject(transactionListLayout, {
                        recipent: fullname,
                        value: receivingValue + " " + receivingCurrency,
                        transactionType: transaction,
                        arrowSrc: isReceiving ? "qrc:/resources/receiving.svg" : "qrc:/resources/sending.svg",
                        ellipse: isReceiving ? "qrc:/resources/ellipseGreen.png" : "qrc:/resources/ellipse_6.png",
                        arrowRotation: isReceiving ? -180 : 180
                    });

                    if (transactionDetail) {
                        transactionDetail.visible = true; // Ensure visibility
                    } else {
                        console.error("Failed to create transaction detail.");
                    }
                } else {
                    console.error("Error loading transaction component:", transactionComponent.errorString());
                }
            }
        }
    }

    function clearTransactions() {
        for (var i = transactionListLayout.children.length - 1; i >= 0; i--) {
            transactionListLayout.children[i].destroy();
        }
    }

    // Call clearTransactions() when needed, e.g., before loading new transactions
}
