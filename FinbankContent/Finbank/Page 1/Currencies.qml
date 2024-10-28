import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 247
    height: 450
    anchors.fill: parent

    // Define a property to hold the reference
    property var sendMoneyWindowRef
    property bool sending: false
    CurrenciesWindow {
        id: currenciesWindow
        visible: true

        usdButton.onClicked: {
            currenciesWindow.visible = false
            if (sendMoneyWindowRef) {
                sendMoneyWindowRef.currencySendingImage = "../assets/usd.png"
                if(!sending)
                {
                    sendMoneyWindowRef.currencyReceiving = "USD"
                }
                else
                {
                    sendMoneyWindowRef.currencySending = "USD"

                }
            }
        }

        cadButton.onClicked:
        {
            currenciesWindow.visible = false
            if (sendMoneyWindowRef) {
                sendMoneyWindowRef.currencySendingImage = "../assets/cad.png"
                if(!sending)
                {
                    sendMoneyWindowRef.currencyReceiving = "CAD"
                }
                else
                {
                    sendMoneyWindowRef.currencySending = "USD"
                }
            }
        }
    }
}
