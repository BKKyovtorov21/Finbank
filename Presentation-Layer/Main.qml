import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        anchors.centerIn: parent
        source: "qrc:/resources/apple.png"
        width: 50
        height: 50
    }
}
