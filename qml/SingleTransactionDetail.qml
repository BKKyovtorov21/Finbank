import QtQuick
import QtQuick.Layouts

Rectangle {
    id: root
    height: 50
    property real widthRef
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
            source: "qrc:/resources/ellipse_6.png"
            Image {
                anchors.centerIn: parent
                source: "qrc:/resources/rightArrow.svg"
                rotation: -90
            }
        }
        Text {
            id: transactionType
            text: qsTr("Sending money to")
        }
        Text {
            Layout.leftMargin: 5
            font.bold: true
            id: recipent
            text: qsTr("Vicho")
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
            text: "-500 BGN"
            Layout.alignment: Qt.AlignRight
        }
    }
}
