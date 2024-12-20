import QtQuick 2.15
import QtQuick.Controls 2.15


Rectangle {
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

        property string currencyReceivingRef: currencyReceiving
        moneySending: moneySending_TF
        property real moneySendingRef: moneySending
        sendingValue: moneySending + 5 + "$ " + currencySending
        total: moneySending + 5 + "$ " + currencySending

        recipentReceiving: moneySending * conversionRate;
        property string recipentReceivingRef: recipentReceiving
        property string currencySendingRef: currencySending
        property string conversionRateRef: conversionRate
        onCurrencySendingChanged: updateConversionRate()
            onCurrencyReceivingChanged: updateConversionRate()

        sendingCurrencyButton.onClicked: {
            loader.height = 450
            loader.width = 246
            loader.x = 1019
            loader.y = 258
            loader.z = 1
            loader.source = "";  // Clear the source to unload
            loader.source = "Currencies.qml";
            loader.visible = true;
            loader.item.sending = true;
            loader.item.sendMoneyWindowRef = sendmoneywindow // Pass the SendMoneyWindow reference

        }

        receivingCurrencyButton.onClicked: {
            loader.height = 450
            loader.width = 246
            loader.x = 1019
            loader.y = 258
            loader.z = 1
            loader.source = "";  // Clear the source to unload
            loader.source = "Currencies.qml";
            loader.visible = true;
            loader.item.sending = false
            loader.item.sendMoneyWindowRef = sendmoneywindow // Pass the SendMoneyWindow reference

        }
        continueButton.onClicked:
        {
            loader.height = 1280
            loader.width = 832
            loader.x = 0
            loader.y = 0
            loader.z = 1
            loader.source = "";
            loader.source = "RecipentDescription.qml"
            loader.visible = true;
            sendmoneywindow.visible = false;

        }

        backButton.onClicked:
        {
            loader.source = "";
            loader.source = "SelectRecipent.qml"
            loader.visible = true;
            sendmoneywindow.visible = false;
        }

        function updateConversionRate() {
               // Check if the selected currencies are in the map
               if (root.exchangeRates[currencySending] && root.exchangeRates[currencySending][currencyReceiving]) {
                   conversionRate = exchangeRates[currencySending][currencyReceiving];
               } else {
                   conversionRate = 1; // Default to 1 if conversion is not found
               }
               currencyChanged = false
           }

    }



    // Loader to display Currencies.qml as an overlay
    Loader {
            id: loader
            visible: false  // Start hidden; shown only when needed
        }
}
