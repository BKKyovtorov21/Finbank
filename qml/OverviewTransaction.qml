import QtQuick
import QtQuick.Controls

Item {
    visible: true
    id: root
    width: 1280
    height: 832

    // This Loader will load the external QML file when the button is clicked
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }


    Dashboard
    {
        id:dashbaordwindow
        visible: false
    }

    // The main component: IntroWindow
    OverviewTransactionWindow {
        id: overviewTransactionWindow
        imageSource: rootdashboard.pfp

        property string recipentIBANStr
        property string senderIBANStr
        anchors.fill: parent // Fill the parent window

        // Ensure precision for sending and receiving amounts
        moneySending: "$ " + (parseFloat(sendmoneywindow.moneySendingRef)).toFixed(2) + " " + sendmoneywindow.currencySendingRef
        sendingAndFees: "$ " + (parseFloat(sendmoneywindow.moneySendingRef) + 10).toFixed(2) + " " + sendmoneywindow.currencySendingRef
        recipentNameReceiving: recipentsWindow.fullNameRef.split(" ")[0] + " will get"

        // Calculate receiving value inline with precision
        recipentReceiving: "$ " + (parseFloat(sendmoneywindow.moneySendingRef) * parseFloat(sendmoneywindow.conversionRateRef)).toFixed(5) + " " + sendmoneywindow.currencyReceivingRef

        conversion: "Conversion rate 1 " + sendmoneywindow.currencySendingRef + " = " + parseFloat(sendmoneywindow.conversionRateRef).toFixed(5) + " " + sendmoneywindow.currencyReceivingRef
        recipentEmail: recipentsWindow.emailRef
        recipentFullname: recipentsWindow.fullNameRef
        recipentIBAN: recipentIBANStr

        Component.onCompleted:
        {
            var userComponent = Qt.createComponent("SelectedRecipent.qml");
            if (userComponent.status === Component.Ready) {
                var userInstance = userComponent.createObject(rectangle_44, {
                    userFullname: recipentsWindow.fullNameRef,
                    userEmail: recipentsWindow.emailRef,
                    userPfp: recipentsWindow.pfpRef
                });
            }
            recipentIBANStr = dashboard.getDbVariable(recipentsWindow.usernameRef, "IBAN");
            senderIBANStr = dashboard.getDbVariable(rootdashboard.usernameRef, "IBAN");

        }

        // Handle send button click event
        sendButton.onClicked:
        {
            createtransaction.makeTransaction(senderIBANStr, recipentIBANStr, moneySending, recipentReceiving);
            overviewTransactionWindow.visible = false;
            dashbaordwindow.visible = true;
        }
        backButton.onClicked:
        {
            overviewTransactionWindow.visible = false;
            transactionType.visible = true;
        }
    }
}
