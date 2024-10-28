import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832

    property string username: ""

    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    TransactionsWindow {
        id: transactionwindow
        anchors.fill: parent

        overviewButton.onClicked:
        {
            transactionwindow.visible = false
            loader.setSource("Dashboard.qml", { "username": username });
        }

        sendButton.onClicked:
        {
            transactionwindow.visible = false;
            loader.source = "SendMoney.qml";
        }

    }
}
