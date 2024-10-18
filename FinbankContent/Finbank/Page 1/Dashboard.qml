import QtQuick
import QtQuick.Controls
import QtCharts
import com.mycompany.dashboard
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

    DashboardClass
    {
        id: dashboardClass
        Component.onCompleted:
        {
            balance = dashboardClass.getDbVariable(username, "balance");
            income = dashboardClass.getDbVariable(username, "income");
            expenses = dashboardClass.getDbVariable(username, "expenses");
        }
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
