import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0
import QtQuick.Layouts

Item {
    id: root
    property bool isPhone: true
    property string fullName
    property string email
    property string pfp

    property alias overlayButton: overlayButton

    width: 300
    height: root.isPhone ? 100 : 200

    RowLayout {
        visible: root.isPhone
        anchors.fill: parent
        Image {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            source: root.pfp
            Layout.preferredWidth: 50
            Layout.preferredHeight: 50
            Layout.leftMargin: 20
        }
        ColumnLayout {
            Text {
                Layout.leftMargin: 5
                text: root.fullName
                font.pixelSize: 20
                color: "#504F56"
                font.bold: true
            }
            Text {
                Layout.leftMargin: 5
                text: root.email
                font.pixelSize: 15
                color: "#727272"
            }
        }
    }

    ColumnLayout {
        visible: !root.isPhone
        anchors.fill: parent
        RowLayout {
            Layout.preferredWidth: parent.width
            Image {
                Layout.alignment: Qt.AlignLeft
                source: root.pfp
                Layout.preferredWidth: 100
                Layout.preferredHeight: 100
                Layout.topMargin: 20
                Layout.leftMargin: 20
            }
            Image {
                Layout.alignment: Qt.AlignRight
                source: "qrc:/resources/more2.svg"
            }
        }
        Text {
            Layout.leftMargin: 25
            Layout.bottomMargin: 10
            text: root.fullName
            font.pixelSize: 30
            color: "#727272"
        }
        Text {
            Layout.leftMargin: 25
            Layout.bottomMargin: 10
            text: root.email
            font.pixelSize: 20
            color: "#727272"
        }
    }

    // Invisible Button Overlay
    Rectangle {
        id: overlayButton
        anchors.fill: parent
        color: "transparent" // Fully transparent
        opacity: 0          // Invisible
        enabled: true        // Still clickable
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Button clicked!");
                // Add your button click logic here
            }
        }
    }
}
