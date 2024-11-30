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

        usdButton.onClicked: selectCurrency("USD", "qrc:/resources/usd.png")
        cadButton.onClicked: selectCurrency("CAD", "qrc:/resources/cad.png")
        jpyButton.onClicked: selectCurrency("JPY", "qrc:/resources/jpy.png")
        audButton.onClicked: selectCurrency("AUD", "qrc:/resources/aud.png")
        bgnButton.onClicked: selectCurrency("BGN", "qrc:/resources/bgn.png")
        gbpButton.onClicked: selectCurrency("GBP", "qrc:/resources/gbp.png")
        sekButton.onClicked: selectCurrency("SEK", "qrc:/resources/sek.png")
        eurButton.onClicked: selectCurrency("EUR", "qrc:/resources/eur.png")

        // Add more currency buttons here if needed
    }
}
