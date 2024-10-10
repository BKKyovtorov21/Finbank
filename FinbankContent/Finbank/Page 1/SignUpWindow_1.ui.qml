import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: signUpWindow
    width: 1280
    height: 832
    color: "#ffffff"
    property alias enter_your_personal_data_to_create_your_accountText: enter_your_personal_data_to_create_your_account.text
    property alias already_have_an_account_Text: already_have_an_account_.text
    property alias firstNameTextField: firstNameTextField
    property alias lastNameTextField: lastNameTextField
    property alias birthDateTextField: birthDateTextField
    property alias phoneNumberTextField: phoneNumberTextField
    property alias maleCheckBox: maleCheckBox
    property alias femaleCheckBox: femaleCheckBox
    property alias signUp_PB: signUp_PB

    Rectangle {
        id: rectangle_14
        width: 1280
        height: 832
        color: "#292929"
        anchors.left: parent.left
        anchors.top: parent.top
    }

    Rectangle {
        id: rectangle_10
        width: 477
        height: 790
        color: "#323232"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 32
        anchors.topMargin: 14
    }

    Item {
        id: numberGroup
        x: 68
        y: 469
        width: 406
        height: 51

        Rectangle {
            id: rectangle_17
            width: 406
            height: 51
            color: "#4d171716"
            radius: 15
            border.color: "#838383"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

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
                id: element
                anchors.fill: parent
                anchors.margins: 3
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
            id: phoneNumberTextField
            width: 400
            height: 51
            placeholderText: qsTr("Enter your phone number")
            color: "#999999"
            anchors.fill: parent
            anchors.margins: 5
            font.pixelSize: 18
            font.family: "Gelasio"
            font.bold: true
            background: Rectangle {
                color: "transparent"
            }
        }
    }

    Item {
        id: femaleGroup
        x: 275
        y: 566
        width: 122
        height: 34

        CheckBox {
            id: femaleCheckBox
            text: qsTr("Female")
            anchors.fill: parent
            anchors.margins: 5
            font.pixelSize: 18
            font.family: "Gelasio"
            font.weight: Font.Bold
            checked: false // Default unchecked
            indicator: Rectangle {
                width: 33
                height: 34
                border.color: "#838383"
                border.width: 1
                color: "#00d9d9d9"
                radius: 5
                Rectangle {
                    visible: parent.CheckBox.checked
                    anchors.centerIn: parent
                    width: parent.width - 10
                    height: parent.height - 10
                    color: "#4d171716"
                }
            }
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
            source: "../assets/logo1_3.png"
        }
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
            font.family: "Gelasio"
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
            font.family: "Gelasio"
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
            id: rectangle_18
            color: "#ffffff"
            radius: 15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
        }

        Text {
            id: sign_up
            color: "#000000"
            text: qsTr("Sign up")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 58
            anchors.rightMargin: 78
            anchors.topMargin: 22
            anchors.bottomMargin: 23
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Rectangle {
            id: formkit_arrowright
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 138
            anchors.rightMargin: 53
            anchors.topMargin: 29
            anchors.bottomMargin: 23
            SvgPathItem {
                id: element1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 5
                anchors.rightMargin: 5
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 15.4375 1.3333332538604736 L 0.8125 1.3333332538604736 C 0.35749999806284904 1.3333332538604736 0 1.0399999396006265 0 0.6666666269302368 C 0 0.2933333142598471 0.35749999806284904 0 0.8125 0 L 15.4375 0 C 15.892500001937151 0 16.25 0.2933333142598471 16.25 0.6666666269302368 C 16.25 1.0399999396006265 15.892500001937151 1.3333332538604736 15.4375 1.3333332538604736 Z"
                joinStyle: 0
                fillColor: "#1f1f2e"
                antialiasing: true
            }

            SvgPathItem {
                id: element2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 15
                anchors.rightMargin: 3
                anchors.topMargin: 1
                anchors.bottomMargin: 1
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 0.812500554713054 10.69333457946505 C 0.7059398576066549 10.694400475343494 0.6002868609795593 10.677156303355087 0.5023348503308189 10.64271163639175 C 0.40438283968207855 10.608266969428414 0.3162994384312713 10.55738412525317 0.24375000175609038 10.493334440417318 C -0.08124999251390139 10.226667753922142 -0.08124999251390139 9.813333717315505 0.24375000175609038 9.546667030820329 L 5.36250091035189 5.34666665394961 L 0.24375000175609038 1.146666753916077 C -0.08124999251390139 0.8800000674209014 -0.08124999251390139 0.4666667063336115 0.24375000175609038 0.2000000198384358 C 0.5687499960260821 -0.06666666665673993 1.0724999835124116 -0.06666666665673993 1.3974999777824033 0.2000000198384358 L 7.084999986471997 4.86666708317455 C 7.409999980741989 5.1333337696697265 7.409999980741989 5.546667170493448 7.084999986471997 5.813333856988624 L 1.3974999777824033 10.480000801115443 C 1.2349999806474075 10.61333414436303 1.0237509154150601 10.680000940163175 0.828750926117381 10.680000940163175 L 0.812500554713054 10.69333457946505 Z"
                joinStyle: 0
                fillColor: "#1f1f2e"
                antialiasing: true
            }
            clip: true
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
        font.family: "Gelasio"
    }

    Item {
        id: firstNameGroup
        x: 68
        y: 228
        width: 406
        height: 51
        Rectangle {
            id: rectangle_15
            width: 406
            height: 51
            color: "#4d171716"
            radius: 15
            border.color: "#838383"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        TextField {
            id: firstNameTextField
            width: 400
            height: 51
            placeholderText: qsTr("Enter your first name")
            color: "#999999"
            anchors.fill: parent
            anchors.margins: 5
            font.pixelSize: 18
            font.family: "Gelasio"
            font.bold: true
            background: Rectangle {
                color: "transparent"
            }
        }
    }

    Item {
        id: lastNameGroup
        x: 68
        y: 309
        width: 406
        height: 51
        Rectangle {
            id: rectangle_16
            width: 406
            height: 51
            color: "#4d171716"
            radius: 15
            border.color: "#838383"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        TextField {
            id: lastNameTextField
            width: 400
            height: 51
            placeholderText: qsTr("Enter your last name")
            color: "#999999"
            anchors.fill: parent
            anchors.margins: 5
            font.pixelSize: 18
            font.family: "Gelasio"
            font.bold: true
            background: Rectangle {
                color: "transparent"
            }
        }
    }

    Item {
        id: birthGroup
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
                id: element3
                anchors.fill: parent
                anchors.margins: 5
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
                    id: element4
                    anchors.fill: parent
                    anchors.topMargin: 2
                    strokeWidth: 2
                    strokeStyle: 1
                    strokeColor: "#666666"
                    path: "M 8 0 L 15 0 C 15.550000011920929 0 16 0.44999998807907104 16 1 L 16 15 C 16 15.550000011920929 15.550000011920929 16 15 16 L 1 16 C 0.44999998807907104 16 0 15.550000011920929 0 15 L 0 1 C 0 0.44999998807907104 0.44999998807907104 0 1 0 L 8 0 Z"
                    joinStyle: 2
                    antialiasing: true
                }
                SvgPathItem {
                    id: element5
                    anchors.fill: parent
                    strokeWidth: 2
                    strokeStyle: 1
                    strokeColor: "#666666"
                    path: "M 0 2 L 0 0 M 10 2 L 10 0"
                    joinStyle: 2
                    antialiasing: true
                }
            }
            clip: true
        }

        Rectangle {
            id: rectangle_19
            width: 406
            height: 51
            color: "#4d171716"
            radius: 15
            border.color: "#838383"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        TextField {
            id: birthDateTextField
            width: 400
            height: 51
            placeholderText: qsTr("Enter your date of birth")
            color: "#999999"
            anchors.fill: parent
            anchors.margins: 5
            font.pixelSize: 18
            font.family: "Gelasio"
            font.bold: true
            background: Rectangle {
                color: "transparent"
            }
        }
    }

    Image {
        id: original_cd5a84919439aa0a6bea83d82eea7dc8_1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 509
        source: "../assets/original_cd5a84919439aa0a6bea83d82eea7dc8_1.png"
    }

    Item {
        id: maleGroup
        x: 144
        y: 566
        width: 94
        height: 34

        CheckBox {
            id: maleCheckBox
            text: qsTr("Male")
            anchors.fill: parent
            anchors.margins: 5
            anchors.rightMargin: -9
            font.pixelSize: 18
            font.family: "Gelasio"
            font.weight: Font.Bold
            checked: false // Default unchecked
            indicator: Rectangle {
                width: 33
                height: 34
                border.color: "#838383"
                border.width: 1
                color: "#00d9d9d9"
                radius: 5
                Rectangle {
                    visible: parent.CheckBox.checked
                    anchors.centerIn: parent
                    width: parent.width - 10
                    height: parent.height - 10
                    color: "#4d171716"
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"1364129f-b840-5f32-b01c-cefc577be2af"}D{i:1;uuid:"91d503fd-c641-5214-b1b7-094cc9bddcb7"}
D{i:3;uuid:"7ceeca58-436c-5ccf-9bad-61f3fa5e8147"}D{i:25;uuid:"9f959c98-c2ec-5bef-9f8c-adef726201b9"}
D{i:26;uuid:"e47fc227-5567-5ee1-bce9-2eaedec22fbd"}D{i:29;uuid:"8dabc040-96bd-53d6-88d2-a2828e7e5cf5"}
D{i:30;uuid:"a36c7186-1d5e-5125-9883-c7c0a9810b24"}
}
##^##*/

