import QtQuick
import QtQuick.Controls
Window {
    visible: true
    id: root
    width: 1280
    height: 832

    // This Loader will load the external QML file when the button is clicked
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    // The main component: IntroWindow
    OverviewTransactionWindow {
        id: overviewTransactionWindow
        anchors.fill: parent // Fill the parent window

    }
}
