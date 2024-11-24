import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
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
    property alias ellipseColor: ellipse.source
    property alias arrowRotation: arrow.rotation
    property alias arrowvec1color: element.fillColor
    property alias arrowvec2color: element1.fillColor


    Item {
        id: group_10
        x: 0
        y: 3
        width: 1000
        height: 43
        SvgPathItem {
            id: line_5_Stroke_
            width: 1000
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 42
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 1000 1 L 0 1 L 0 0 L 1000 0 L 1000 1 Z"
            joinStyle: 0
            fillColor: "#aba4a4"
            antialiasing: true
        }

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
                anchors.topMargin: 0
                source: "../assets/ellipse_6.png"
            }

            Item {
                id: arrow
                x: 15
                y: 7
                width: 16
                height: 16
                rotation: 0
                SvgPathItem {
                    id: element
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 7
                    anchors.rightMargin: -7
                    anchors.topMargin: 2
                    anchors.bottomMargin: 0
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 1.0112359523773193 14.870924949645996 C 0.4449438166350461 14.870924949645996 0 14.543764602526537 0 14.127378702163696 L 0 0.7435462474822998 C 0 0.3271603471194595 0.4449438166350461 0 1.0112359523773193 0 C 1.5775280881195926 0 2.0224719047546387 0.3271603471194595 2.0224719047546387 0.7435462474822998 L 2.0224719047546387 14.127378702163696 C 2.0224719047546387 14.543764602526537 1.5775280881195926 14.870924949645996 1.0112359523773193 14.870924949645996 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 15.188764789154662 6.706787087989033 C 15.056139541387088 6.707975902293248 14.924643955693403 6.688743852605354 14.802733063268871 6.6503270488461075 C 14.680822170844339 6.611910245086861 14.571194695928442 6.555158915012431 14.480899800383263 6.483723061798939 L 8.11011297266112 1.799381525486166 L 1.7393259038415347 6.483723061798939 C 1.334831508300182 6.781141578724015 0.7078651997316624 6.781141578724015 0.30337080419030965 6.483723061798939 C -0.1011235913510431 6.186304544873862 -0.1011235913510431 5.72530615719559 0.30337080419030965 5.427887640270513 L 7.382022319312045 0.22306389323365872 C 7.7865167148533985 -0.07435462369141754 8.413483565891168 -0.07435462369141754 8.81797796143252 0.22306389323365872 L 15.896630742315837 5.427887640270513 C 16.30112513785719 5.72530615719559 16.30112513785719 6.186304544873862 15.896630742315837 6.483723061798939 C 15.694383544545161 6.6324323202614766 15.43146141743832 6.706787087989033 15.188764789154662 6.706787087989033 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
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

/*##^##
Designer {
    D{i:0;uuid:"254bf2a8-0e17-571b-a665-2bbc1cfa1af9"}
}
##^##*/

