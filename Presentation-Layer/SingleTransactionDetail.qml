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
    property string language

    ColumnLayout{
        anchors.fill: parent
    RowLayout {
        id: rowLayout
        Layout.fillWidth: true
        Layout.fillHeight:true
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
            font.pixelSize: 16
        }
        Text {
            Layout.leftMargin: 5
            font.bold: true
            id: recipent
            text: root.recipent
            font.pixelSize: 18
        }
        Text {
            Layout.leftMargin: 10
            text: root.language == "EN" ? qsTr("Sent") : qsTr("Изпратени")
            color: "#2F2F2F"
            opacity: 0.5
        }
        Item {
            Layout.fillWidth: true
        }
        Text {
            text: root.value
            Layout.alignment: Qt.AlignRight
            font.pixelSize: 16
            font.bold: true
            Layout.rightMargin: 50
        }
    }

    Rectangle
    {
        Layout.fillWidth:true
        Layout.preferredHeight: 1
        color: "grey"
        Layout.rightMargin: 50
    }
    }
}
