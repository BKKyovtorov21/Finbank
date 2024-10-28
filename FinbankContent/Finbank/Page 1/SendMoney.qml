import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 1920
    height: 1080
    visible: true

    SendMoneyWindow {
        id: sendmoneywindow
        anchors.fill: parent
        moneySending: moneySending_TF
        sendingValue: moneySending + 5 + "$ " + currencySending
        property real conversionRateCalc: 1.25
        property var exchangeRates: ({
            "USD": { "CAD": 1.38985, "EUR": 0.92497341, "GBP": 0.77098901, "JPY": 152.99768 },
            "CAD": { "USD": 0.8, "EUR": 0.68, "GBP": 0.6, "JPY": 88 },
            "EUR": { "USD": 1.18, "CAD": 1.47, "GBP": 0.88, "JPY": 130 },
            "GBP": { "USD": 1.34, "CAD": 1.66, "EUR": 1.14, "JPY": 148 },
            "JPY": { "USD": 0.009, "CAD": 0.011, "EUR": 0.0077, "GBP": 0.0067 }
        })

        recipentReceiving: moneySending * conversionRateCalc
        conversionRate: exchangeRates[currencySending][currencyReceiving]

        sendingCurrencyButton.onClicked: {
            loader.source = "Currencies.qml";
            loader.visible = true;
        }

        receivingCurrencyButton.onClicked: {
            loader.source = "Currencies.qml";
            loader.visible = true;
        }
    }

    // Loader to display Currencies.qml as an overlay
    Loader {
        id: loader
        anchors.centerIn: parent
        z: 1  // Ensures Currencies.qml appears above SendMoneyWindow
        visible: false  // Start hidden; shown only when needed
    }
}
