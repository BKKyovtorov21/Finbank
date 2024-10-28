import QtQuick
import QtQuick.Controls

Rectangle {
    id: currencies
    width: 247
    height: 450

    color: "#ffffff"
    radius: 30
    border.width: 1

    property alias usdButton: usdButton
    property alias cadButton: cadButton
    property alias eurButton: eurButton
    property alias gbpButton: gbpButton
    property alias jpyButton: jpyButton
    property alias audButton: audButton
    property alias sekButton: sekButton
    property alias bgnButton: bgnButton

    Item {
        id: group_27
        x: 14
        y: 15
        width: 63
        height: 79
        Image {
            id: image_2
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            source: "../assets/usd.png"
        }

        Text {
            id: uSD
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 65
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_28
        x: 151
        y: 15
        width: 63
        height: 79
        Image {
            id: image
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            source: "../assets/cad.png"
        }

        Text {
            id: cAD
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("CAD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 65
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_29
        x: 151
        y: 351
        width: 63
        height: 79
        Image {
            id: image1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            source: "../assets/eur.png"
        }

        Text {
            id: eUR
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("EUR")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 65
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_30
        x: 151
        y: 237
        width: 63
        height: 82
        Image {
            id: image2
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            source: "../assets/gbp.png"
        }

        Text {
            id: gBP
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("GBP")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 68
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_31
        x: 10
        y: 124
        width: 63
        height: 79
        Image {
            id: image3
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 8
            source: "../assets/jpy.png"
        }

        Text {
            id: jPY
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("JPY")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 65
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_32
        x: 151
        y: 124
        width: 63
        height: 79
        Image {
            id: image4
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            source: "../assets/aud.png"
        }

        Text {
            id: aUD
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("AUD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 65
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_33
        x: 10
        y: 348
        width: 63
        height: 82
        Image {
            id: image5
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            source: "../assets/sek.png"
        }

        Text {
            id: sEK
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("SEK")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 68
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_34
        x: 14
        y: 237
        width: 63
        height: 82
        Image {
            id: image6
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            source: "../assets/bgn.png"
        }

        Text {
            id: bGN
            width: 64
            height: 14
            color: "#000000"
            text: qsTr("BGN")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 68
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Button {
        id: usdButton
        x: 10
        y: 8
        width: 76
        height: 94
        opacity: 0
    }

    Button {
        id: cadButton
        x: 142
        y: 8
        width: 82
        height: 94
        opacity: 0
    }

    Button {
        id: eurButton
        x: 142
        y: 342
        width: 82
        height: 94
        opacity: 0
    }

    Button {
        id: gbpButton
        x: 142
        y: 225
        width: 82
        height: 94
        opacity: 0
    }

    Button {
        id: jpyButton
        x: 8
        y: 116
        width: 82
        height: 94
        opacity: 0
    }

    Button {
        id: audButton
        x: 145
        y: 116
        width: 82
        height: 94
        opacity: 0
    }

    Button {
        id: sekButton
        x: 8
        y: 344
        width: 82
        height: 94
        opacity: 0
    }

    Button {
        id: bgnButton
        x: 8
        y: 231
        width: 82
        height: 94
        opacity: 0
    }
}

/*##^##
Designer {
    D{i:0;uuid:"d27e021a-6f0f-5389-b054-6bbd3312ea6f"}D{i:1;uuid:"8b7ef67c-183b-56cf-9d04-e0c9657e1fc8"}
D{i:2;uuid:"a244d9ff-8b32-5851-82ac-343218cfef54"}D{i:3;uuid:"e943b20d-b52d-5ffb-97be-08063b35de23"}
D{i:4;uuid:"0e84707f-6e88-58e3-95ca-56df6acf0703"}D{i:5;uuid:"cb5f7017-9d47-5bc1-bc5e-6b566d3b3a8e"}
D{i:6;uuid:"1d3125b6-e818-558a-8092-c94bb98e3f06"}D{i:7;uuid:"567a5973-2753-5dd9-bf67-0c2994b56040"}
D{i:8;uuid:"786a65ac-8b7f-531d-a324-ed255133e689"}D{i:9;uuid:"5d47fab9-b216-5a3c-8d0d-e42b301d7118"}
D{i:10;uuid:"e13624da-2e59-57ba-aed0-c165d2779699"}D{i:11;uuid:"5399d9e0-05c4-56af-9e7d-29bb721e36bf"}
D{i:12;uuid:"ad7260eb-f50c-5c9d-a886-530df5098263"}D{i:13;uuid:"3101c847-1549-5cbf-a634-c92c708f4a4f"}
D{i:14;uuid:"ea41356e-12d9-56df-ae3d-bfabf122c9f9"}D{i:15;uuid:"622a7714-634b-5c8d-a898-3a165b98488b"}
D{i:16;uuid:"b2a2c04e-18de-5704-a1b6-180c81ed9d33"}D{i:17;uuid:"e4517483-f19a-5672-8371-53511b19f699"}
D{i:18;uuid:"17e93aad-0f9b-5181-a1f7-51aac21c98d6"}D{i:19;uuid:"34687452-82bc-57ed-9b20-b5033d6cd384"}
D{i:20;uuid:"1e10024e-9e93-59f6-b6af-ed313635d58c"}D{i:21;uuid:"92b073a4-55dd-5ee8-96eb-c90e8b64481e"}
D{i:22;uuid:"f01fb958-aca1-56a8-a3e7-53f1864e42f5"}D{i:23;uuid:"623a94f6-06cb-5b71-a04e-585a52c74cca"}
D{i:24;uuid:"9d233a89-4285-5e10-9c3f-97e0e29e1157"}
}
##^##*/

