import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832

    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }


    RecipentDescriptionWindow {
        id: recipentDescription
        anchors.fill: parent

        continueButton.onClicked:
        {
            recipentDescription.visible = false;
            loader.source = "OverviewTransaction.qml"
        }

        selectBankButton.onClicked:
        {
            timelineAnimation.running = true;
        }
    }
}
