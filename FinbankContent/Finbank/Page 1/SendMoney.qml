import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    id: root
    width: 1280
    height: 832
    visible: true
    property real conversionRateCalc: 1.00
    property var exchangeRates: ({
        "USD": { "CAD": 1.38985, "EUR": 0.92497341, "GBP": 0.77098901, "JPY": 152.99768, "AUD": 1.5201647, "BGN": 1.8087855, "SEK": 10.650345},
        "CAD": { "USD": 0.71985076, "EUR": 0.66573259, "GBP": 0.55500691, "JPY": 110.21818, "AUD": 1.0941791, "BGN": 1.3020598, "SEK": 7.6669516},
        "EUR": { "USD": 1.0813607, "CAD": 1.502073, "GBP": 0.83367314, "JPY": 165.54594, "AUD": 1.6433089, "BGN": 1.95583, "SEK": 11.516442},
        "GBP": { "USD": 1.2970765, "CAD": 1.8017372, "EUR": 1.1995457, "JPY": 198.58938, "AUD": 1.9712598, "BGN": 2.3460603, "SEK": 13.814177},
        "JPY": { "USD": 0.0065312896, "CAD": 0.0090723603, "EUR": 0.0060400338, "GBP": 0.005035342, "AUD": 0.0099274843, "BGN": 0.011812687, "SEK": 0.069554658 }
    })
    property bool currencyChanged: false

    SendMoneyWindow {
        id: sendmoneywindow
        anchors.fill: parent
        moneySending: moneySending_TF
        sendingValue: moneySending + 5 + "$ " + currencySending
        recipentReceiving: moneySending * conversionRate;

        onCurrencySendingChanged: updateConversionRate()
            onCurrencyReceivingChanged: updateConversionRate()

        sendingCurrencyButton.onClicked: {
            loader.source = "";  // Clear the source to unload
            loader.source = "Currencies.qml";
            loader.visible = true;
            loader.item.sending = true;
        }

        receivingCurrencyButton.onClicked: {
            loader.source = "";  // Clear the source to unload
            loader.source = "Currencies.qml";
            loader.visible = true;
            loader.item.sending = false
        }
        function updateConversionRate() {
               // Check if the selected currencies are in the map
               if (root.exchangeRates[currencySending] && root.exchangeRates[currencySending][currencyReceiving]) {
                   conversionRate = exchangeRates[currencySending][currencyReceiving];
                   console.log(conversionRate)
               } else {
                   conversionRate = 1; // Default to 1 if conversion is not found
               }
               currencyChanged = false
           }

    }



    // Loader to display Currencies.qml as an overlay
    Loader {
            id: loader
            x: 1019
            y: 258
            width:247

            height:450
            z: 1  // Ensures Currencies.qml appears above SendMoneyWindow
            visible: false  // Start hidden; shown only when needed

            onLoaded:
            {
                loader.item.sendMoneyWindowRef = sendmoneywindow // Pass the SendMoneyWindow reference

            }
        }
}
