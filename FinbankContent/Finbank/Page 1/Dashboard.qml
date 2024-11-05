import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: rootdashboard
    width: 1280
    height: 832

    property string usernameRef: ""
    property real balance: 0.0
    property real income: 0.0
    property real expenses: 0.0
    property string cardInfo: ""
    property string firstName: ""
    property string lastName: ""
    property string pfp: ""

    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    Component.onCompleted: {
        if (usernameRef !== "") {
            balance = dashboard.getDbVariable(usernameRef, "balance");
            income = dashboard.getDbVariable(usernameRef, "income");
            expenses = dashboard.getDbVariable(usernameRef, "expenses");
            cardInfo = dashboard.getDbVariable(usernameRef, "cardNumber");
            firstName = dashboard.getDbVariable(usernameRef, "first_name");
            lastName = dashboard.getDbVariable(usernameRef, "last_name");
            pfp = dashboard.getDbVariable(usernameRef, "pfp");
            dashbaordwindow.imageSource = pfp;
        } else {
            console.log("Username is empty");
        }
    }

    DashboardWindow {
        id: dashbaordwindow
        anchors.fill: parent
        balanceValue: balance
        incomeValue: income
        expensesValue: expenses
        debitcard: cardInfo
        firstName2: firstName
        expensePieValue: expenses  // Hardcoded for now, can be dynamically set
        incomePieValue: income
        username: "@" + usernameRef
        userFullname: firstName + " " + lastName;

        transactionButton.onClicked:
        {
            dashbaordwindow.visible = false;
            loader.setSource("Transactions.qml", { "username": usernameRef });
        }

    }
}
