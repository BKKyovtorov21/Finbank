import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtMultimedia

Rectangle {
    id: signUpWindow_1
    width: 1280
    height: 832
    color: "#292929"
    property alias firstNameField: firstNameField
    property alias lastNameField: lastNameField
    property alias birthField: birthField
    property alias phoneField: phoneField
    property alias signUp_PB: signUp_PB
    Rectangle {
        id: rectangle_14
        width: 1280
        height: 832
        color: "#292929"
        anchors.left: parent.left
        anchors.top: parent.top

        AnimatedImage {
            id: animatedImage
            x: 518
            y: 0
            width: 754
            height: 824
            source: "../assets/signin.gif"
        }
    }

    Rectangle {
        id: rectangle_10
        width: 501
        height: 816
        color: "#323232"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 8
        anchors.topMargin: 8
    }

    Item {
        id: firstNameGroup
        x: 68
        y: 228
        width: 406
        height: 51
        TextField {
            id: firstNameField
            x: 0
            y: -8
            width: 406
            height: 51
            placeholderText: qsTr("Enter your first name")
            placeholderTextColor: "white"
            font.pixelSize: 18

            font.weight: Font.Bold
            color: "#999999"
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            padding: 10 // Add some padding for better text spacing
        }
    }

    Item {
        id: lastNameGroup
        x: 68
        y: 309
        width: 406
        height: 51
        TextField {
            id: lastNameField
            x: 0
            y: -8
            width: 406
            height: 51
            placeholderText: qsTr("Enter your last name")
            placeholderTextColor: "white"
            font.pixelSize: 18

            font.weight: Font.Bold
            color: "#999999"
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            padding: 10 // Add some padding for better text spacing
        }
    }

    Item {
        id: passwordGroup
        x: 68
        y: 390
        width: 406
        height: 51
        Rectangle {
            id: line_md_calendar
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 359
            anchors.topMargin: 12
            SvgPathItem {
                id: element2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 5
                anchors.rightMargin: 5
                anchors.topMargin: 5
                anchors.bottomMargin: 16
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 0 0 L 14 0 L 14 3 L 0 3 L 0 0 Z"
                joinStyle: 0
                fillColor: "#666666"
                antialiasing: true
            }

            Item {
                id: group
                x: 4
                y: 2
                width: 16
                height: 18
                SvgPathItem {
                    id: element3
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 2
                    strokeWidth: 2
                    strokeStyle: 1
                    strokeColor: "#666666"
                    path: "M 8 0 L 15 0 C 15.550000011920929 0 16 0.44999998807907104 16 1 L 16 15 C 16 15.550000011920929 15.550000011920929 16 15 16 L 1 16 C 0.44999998807907104 16 0 15.550000011920929 0 15 L 0 1 C 0 0.44999998807907104 0.44999998807907104 0 1 0 L 8 0 Z"
                    joinStyle: 2
                    antialiasing: true
                }

                SvgPathItem {
                    id: element4
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 3
                    anchors.rightMargin: 3
                    anchors.bottomMargin: 16
                    strokeWidth: 2
                    strokeStyle: 1
                    strokeColor: "#666666"
                    path: "M 0 2 L 0 0 M 10 2 L 10 0"
                    joinStyle: 2
                    antialiasing: true
                }

                SvgPathItem {
                    id: vector_Stroke_
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 2
                    anchors.rightMargin: 2
                    anchors.topMargin: 8
                    anchors.bottomMargin: 8
                    strokeWidth: 2
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 0 1 C 0 0.44771522283554077 0.44771522283554077 0 1 0 L 11 0 C 11.552285194396973 0 12 0.44771522283554077 12 1 C 12 1.5522847771644592 11.552285194396973 2 11 2 L 1 2 C 0.44771522283554077 2 0 1.5522847771644592 0 1 Z"
                    joinStyle: 2
                    fillColor: "#666666"
                    antialiasing: true
                }

                SvgPathItem {
                    id: vector_Stroke_1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 2
                    anchors.rightMargin: 5
                    anchors.topMargin: 12
                    anchors.bottomMargin: 4
                    strokeWidth: 2
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 0 1 C 0 0.44771522283554077 0.44771522283554077 0 1 0 L 8 0 C 8.552284717559814 0 9 0.44771522283554077 9 1 C 9 1.5522847771644592 8.552284717559814 2 8 2 L 1 2 C 0.44771522283554077 2 0 1.5522847771644592 0 1 Z"
                    joinStyle: 2
                    fillColor: "#666666"
                    antialiasing: true
                }
            }
            clip: true
        }

        TextField {
            id: birthField
            x: 0
            y: -8
            width: 406
            height: 51
            placeholderText: qsTr("Enter your date of birth")
            placeholderTextColor: "white"
            font.pixelSize: 18

            font.weight: Font.Bold
            color: "#999999"
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            padding: 10 // Add some padding for better text spacing
        }
    }

    Item {
        id: passwordGroup1
        x: 68
        y: 469
        width: 406
        height: 51

        Rectangle {
            id: ic_baseline_phone
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 359
            anchors.topMargin: 14
            SvgPathItem {
                id: element5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.rightMargin: -2
                anchors.topMargin: -2
                anchors.bottomMargin: 8
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 3.619999885559082 7.789999961853027 C 5.059999942779541 10.619999885559082 7.380000114440918 12.929999113082886 10.210000038146973 14.379999160766602 L 12.40999984741211 12.180000305175781 C 12.679999858140945 11.910000294446945 13.080000311136246 11.81999958306551 13.430000305175781 11.9399995803833 C 14.550000309944153 12.309999585151672 15.759999990463257 12.510000228881836 17 12.510000228881836 C 17.55000001192093 12.510000228881836 18 12.960000216960907 18 13.510000228881836 L 18 17 C 18 17.55000001192093 17.55000001192093 18 17 18 C 7.609999656677246 18 0 10.390000343322754 0 1 C 0 0.44999998807907104 0.44999998807907104 0 1 0 L 4.5 0 C 5.050000011920929 0 5.5 0.44999998807907104 5.5 1 C 5.5 2.25 5.699999690055847 3.4500001668930054 6.069999694824219 4.570000171661377 C 6.179999694228172 4.9200001657009125 6.099999696016312 5.310000151395798 5.819999694824219 5.590000152587891 L 3.619999885559082 7.789999961853027 Z"
                joinStyle: 0
                fillColor: "#666666"
                antialiasing: true
            }
            clip: true
        }

        TextField {
            id: phoneField
            x: 0
            y: -8
            width: 406
            height: 51
            placeholderText: qsTr("Enter your phone number")
            placeholderTextColor: "white"
            font.pixelSize: 18

            font.weight: Font.Bold
            color: "#999999"
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            padding: 10 // Add some padding for better text spacing
        }
    }

    Button {
        id: signUp_PB
        width: 217
        height: 64
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 148
        anchors.topMargin: 646
        background: Rectangle {
            id: rectangle_22
            color: "#ffffff"
            radius: 15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
        }

        Text {
            id: sign_up1
            color: "#000000"
            text: qsTr("Sign up")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 52
            anchors.rightMargin: 52
            anchors.topMargin: 23
            anchors.bottomMargin: 23
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }
    }

    Text {
        id: already_have_an_account_
        width: 281
        height: 27
        color: "#6e6e6e"
        text: qsTr("Already have an account?")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 117
        anchors.topMargin: 738
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Item {
        id: instructions
        x: 85
        y: 113
        width: 372
        height: 85
        Text {
            id: enter_your_personal_data_to_create_your_account
            width: 373
            height: 27
            color: "#868ca7"
            text: qsTr("Enter your personal data to create your account")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 58
            font.pixelSize: 13
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }

        Text {
            id: sign_up_account
            width: 299
            height: 49
            color: "#ffffff"
            text: qsTr("Sign up account")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            font.pixelSize: 35
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Rectangle {
        id: logo
        width: 82
        height: 85
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 217
        anchors.topMargin: 14
        Image {
            id: logo1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../assets/logo1_4.png"
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"1364129f-b840-5f32-b01c-cefc577be2af"}D{i:1;uuid:"91d503fd-c641-5214-b1b7-094cc9bddcb7"}
D{i:3;uuid:"d11efce1-23d5-5fac-9dfe-02dc8405a674"}D{i:10;uuid:"9f959c98-c2ec-5bef-9f8c-adef726201b9"}
D{i:20;uuid:"8dabc040-96bd-53d6-88d2-a2828e7e5cf5"}D{i:29;uuid:"b004a4c6-b59e-540c-bab0-17f6224dbf67"}
D{i:30;uuid:"7ebec841-0220-58a0-bc16-819d14dca0eb"}
}
##^##*/

