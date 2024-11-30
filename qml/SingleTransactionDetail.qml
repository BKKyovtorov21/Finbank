import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0

Rectangle {
    id: singleTransactionDetail
    width: 1000
    height: 46
    color: "#ffffff"
    property alias recipent: recipent.text
    property alias status: status.text
    property alias value: value.text
    property alias transactionType: transactionType.text
    property alias ellipse: ellipse.source
    property alias arrowSrc: element.source
    property alias arrowRotation: element.rotation


    Item {
        id: group_10
        x: 0
        y: 3
        width: 1000
        height: 43

        Item {
            id: group_8
            x: 0
            y: 0
            width: 30
            height: 30
            Image {
                id: ellipse
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 8
                anchors.topMargin: 4
                width: 30
                height:30
                source: "qrc:/resources/ellipse_6.png"
            }

            Item {
                id: arrow
                x: 15
                y: 7
                width: 16
                height: 16
                rotation: 0
                Image {
                    id: element
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 3
                    source: "qrc:/resources/rightArrow.svg"
                    rotation: -90
                    height: 20
                    width: 20
                    antialiasing: true
                }
            }
        }

        Item {
            id: group_9
            x: 47
            y: 3
            width: 346
            height: 25
            Text {
                id: transactionType
                width: 165
                height: 25
                color: "#000000"
                text: qsTr("Sending money to")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }

            Text {
                id: recipent
                width: 186
                height: 22
                color: "#000000"
                text: "Vicho"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 161
                anchors.topMargin: 1
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }
        }

        Text {
            id: status
            width: 103
            height: 23
            color: "#802f2f2f"
            text: "Completed"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 398
            anchors.topMargin: 5
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: value
            width: 128
            height: 27
            color: "#000000"
            text: "value"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 864
            anchors.topMargin: 3
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }
}
