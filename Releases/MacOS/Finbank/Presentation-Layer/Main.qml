import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    id: mainWindow
    width: Screen.width
    height: Screen.height
    minimumWidth: 400
    minimumHeight: 400
    visible: true

    // Property to track the current page
    property string currentPage: "SignIn.qml"

    Loader {
        id: contentLoader
        anchors.fill: parent
        source: mainWindow.currentPage
    }
}
