import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832

    property string username: ""
    property real balance: 0.0
    property real income: 0.0
    property real expenses: 0.0
    property string cardInfo: ""
    property string firstName: ""

    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    Component.onCompleted: {
        if (username !== "") {
            // Fetching variables from the backend and assigning to properties
            balance = dashboard.getDbVariable(username, "balance");
            income = dashboard.getDbVariable(username, "income");
            expenses = dashboard.getDbVariable(username, "expenses");
            cardInfo = dashboard.getDbVariable(username, "cardNumber");
            firstName = dashboard.getDbVariable(username, "first_name");
        } else {
            console.log("Username is empty");
        }
    }

    DashboardWindow {
        id: introwindow
        anchors.fill: parent

        balanceValue: balance
        incomeValue: income
        expensesValue: expenses
        debitcard: cardInfo
        firstName2: firstName
        expensePieValue: expenses  // Hardcoded for now, can be dynamically set
        incomePieValue: income

        transactionButton.onClicked:
        {
            introwindow.visible = false;
            loader.source = "Transactions.qml";
        }
    }
}
