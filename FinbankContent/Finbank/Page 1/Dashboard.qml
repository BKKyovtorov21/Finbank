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
    // This Loader will load the external QML file when the button is clicked
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

        Component.onCompleted:
        {
            balance = dashboard.getDbVariable(username, "balance");
            income = dashboard.getDbVariable(username, "income");
            expenses = dashboard.getDbVariable(username, "expenses");

        }
    // The main component: IntroWindow
    DashboardWindow {
        id: introwindow
        anchors.fill: parent

        balanceValue: balance
        incomeValue: income
        expensesValue: expenses

        expensePieValue: 40
    }
}
