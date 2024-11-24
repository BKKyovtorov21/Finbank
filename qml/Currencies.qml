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

    // Function to handle currency selection
    function selectCurrency(currency, imagePath) {
        currenciesWindow.visible = false
        if (sendMoneyWindowRef) {
            if (!sending) {
                sendMoneyWindowRef.currencyReceiving = currency;
                sendMoneyWindowRef.currencyReceivingImage = imagePath;
            } else {
                sendMoneyWindowRef.currencySending = currency;
                sendMoneyWindowRef.currencySendingImage = imagePath;
            }
        }
    }

    CurrenciesWindow {
        id: currenciesWindow
        visible: true

        usdButton.onClicked: selectCurrency("USD", "../assets/usd.png")
        cadButton.onClicked: selectCurrency("CAD", "../assets/cad.png")
        jpyButton.onClicked: selectCurrency("JPY", "../assets/jpy.png")
        audButton.onClicked: selectCurrency("AUD", "../assets/aud.png")
        bgnButton.onClicked: selectCurrency("BGN", "../assets/bgn.png")
        gbpButton.onClicked: selectCurrency("GBP", "../assets/gbp.png")
        sekButton.onClicked: selectCurrency("SEK", "../assets/sek.png")
        eurButton.onClicked: selectCurrency("EUR", "../assets/eur.png")

        // Add more currency buttons here if needed
    }
}
