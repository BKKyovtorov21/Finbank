import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832

    property string username: ""
    property string iban: dashboard.getDbVariable(rootdashboard.usernameRef, "IBAN");
    property bool showmore: false
    ScrollView {
        id: transactionScrollView
        x: 142
        y: 555
        width: 1094
        height: 220
        clip: true
        z:10
        Column {
            id: transactionListLayout
            spacing: 10
            width:1094
            height:220
            z:10
        }
    }

    TransactionsWindow {
        id: transactionwindow
        anchors.fill: parent
        imageSource: rootdashboard.pfp
        Component.onCompleted: {
            createtransaction.showTransactions(iban, showmore);
        }

        overviewButton.onClicked: {
            transactionwindow.visible = false
            loader.setSource("Dashboard.qml", { "username": username });
        }

        sendButton.onClicked: {
            console.log("ds");
            transactionwindow.visible = false
            loader.source = "SelectRecipent.qml";
        }

        Connections {
            target: createtransaction
            onTransactionFound: function(fullname, receivingValue, receivingCurrency, isReceiving) {
                var transaction = isReceiving ? "Receiving" : "Send";
                var transactionComponent = Qt.createComponent("SingleTransactionDetail.qml");

                if (transactionComponent.status === Component.Ready) {
                    var transactionDetail = transactionComponent.createObject(transactionListLayout, {
                        recipent: fullname,
                        status: "Sent",
                        value: receivingValue + " " + receivingCurrency,
                                                                                  transactionType: transaction
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
}
