import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832

    property string username: rootdashboard.usernameRef
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
        balance: dashboard.getDbVariable(rootdashboard.usernameRef, "balance");
        Component.onCompleted: {
            createtransaction.showTransactions(iban, showmore);
        }

        overviewButton.onClicked: {
            transactionwindow.visible = false
            loader.setSource("Dashboard.qml", { "usernameRef": username });
        }

        sendButton.onClicked: {
            transactionwindow.visible = false
            loader.source = "SelectRecipent.qml";
        }

        backButton.onClicked:
        {
            transactionwindow.visible = false
            loader.setSource("Dashboard.qml", { "usernameRef": username });
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
                                                                                  ellipseColor: isReceiving ? "../assets/ellipseGreen.png" : "../assets/ellipse_6.png",
                                                                                  arrowRotation: isReceiving ? -180 : 0,
                                                                                  arrowvec1color: isReceiving ? "#228556" : "#611C37",
                                                                                  arrowvec2color: isReceiving ? "#228556" : "#611C37"
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
