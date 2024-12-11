import QtQuick
import QtQuick.Layouts

Rectangle {
    id: root
    height: 50
    width: Screen.width
    property string status
    property string recipent
    property string value
    property string transactionType
    property string ellipseColor
    property string arrow

    RowLayout {
        id: rowLayout
        anchors.fill: parent

        Image {
            id: ellipse
            source: root.ellipseColor
            Image {
                anchors.centerIn: parent
                source: root.arrow
            }
        }
        Text {
            id: transactionType
            text: root.transactionType
        }
        Text {
            Layout.leftMargin: 5
            font.bold: true
            id: recipent
            text: root.recipent
        }
        Text {
            Layout.leftMargin: 10
            text: "Sent"
            color: "#2F2F2F"
            opacity: 0.5
        }
        Item {
            Layout.fillWidth: true
        }
        Text {
            text: root.value
            Layout.alignment: Qt.AlignRight
        }
    }
}
