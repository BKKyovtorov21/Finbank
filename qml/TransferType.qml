import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832
    property string paymentMethod: "";
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    TransferTypeWindow {
        id: transactionType
        anchors.fill: parent

        payingMethodFinbank.onClicked:
        {
            timelineAnimation.running = true;
            selectedRectangle1.visible = true;
            root.paymentMethod = "Finbank Pro"
        }

        continueButton.onClicked:
        {
            transactionType.visible = false;
            loader.source = "OverviewTransaction.qml"
        }


        backButton.onClicked:
        {
            transactionType.visible = false;
            loader.source = "RecipentDescription.qml"
        }

    }
}
