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
            balance = dashboardClass.getBalance(username)
        }
    }

    // The main component: IntroWindow
    DashboardWindow {
        id: introwindow
        anchors.fill: parent

        balanceValue2: balance

    }
}
