import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: signUpWindow
    width: 1280
    height: 832
    color: "#ffffff"
    property alias enter_your_phone_numberText: enter_your_phone_number.text
    property alias enter_your_personal_data_to_create_your_accountText: enter_your_personal_data_to_create_your_account.text
    property alias maleText: male.text
    property alias femaleText: female.text
    property alias sign_up_accountText: sign_up_account.text
    property alias sign_up1Text: sign_up1.text
    property alias enter_your_last_nameText: enter_your_last_name.text
    property alias enter_your_date_of_birthText: enter_your_date_of_birth.text
    property alias sign_upText: sign_up.text
    property alias already_have_an_account_Text: already_have_an_account_.text
    property alias enter_your_first_nameText: enter_your_first_name.text

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
        id: passwordGroup
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
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 3
                anchors.rightMargin: 3
                anchors.topMargin: 3
                anchors.bottomMargin: 3
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

        Text {
            id: enter_your_phone_number
            width: 243
            height: 29
            color: "#999999"
            text: qsTr("Enter your phone number\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 11
            anchors.topMargin: 17
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: femaleGroup
        x: 275
        y: 566
        width: 122
        height: 34
        Text {
            id: female
            width: 85
            height: 29
            color: "#999999"
            text: qsTr("Female")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 38
            anchors.topMargin: 5
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Rectangle {
            id: rectangle_20
            width: 33
            height: 34
            color: "#00d9d9d9"
            border.color: "#838383"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
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

    Rectangle {
        id: signUpButton
        width: 217
        height: 64
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 148
        anchors.topMargin: 646
        Rectangle {
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
        id: usernameGroup
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

        Text {
            id: enter_your_first_name
            width: 221
            height: 29
            color: "#999999"
            text: qsTr("Enter your first name")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 3
            anchors.topMargin: 11
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: emailGroup
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

        Text {
            id: enter_your_last_name
            width: 221
            height: 29
            color: "#999999"
            text: qsTr("Enter your last name")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 11
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: passwordGroup1
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
                    id: element4
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
                    id: element5
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

        Text {
            id: enter_your_date_of_birth
            width: 221
            height: 29
            color: "#999999"
            text: qsTr("Enter your date of birth\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 11
            anchors.topMargin: 17
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Rectangle {
        id: signUpButton1
        width: 217
        height: 64
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 148
        anchors.topMargin: 646
        Rectangle {
            id: rectangle_21
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
            anchors.leftMargin: 26
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
            id: formkit_arrowright1
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
                id: element6
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
                id: element7
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
        Text {
            id: male
            width: 57
            height: 29
            color: "#999999"
            text: qsTr("Male\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 38
            anchors.topMargin: 5
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Rectangle {
            id: rectangle_22
            width: 33
            height: 34
            color: "#00d9d9d9"
            border.color: "#838383"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"1364129f-b840-5f32-b01c-cefc577be2af"}D{i:1;uuid:"91d503fd-c641-5214-b1b7-094cc9bddcb7"}
D{i:2;uuid:"d11efce1-23d5-5fac-9dfe-02dc8405a674"}D{i:3;uuid:"7ceeca58-436c-5ccf-9bad-61f3fa5e8147"}
D{i:4;uuid:"d7166a02-6b61-54e8-8044-7e62cf8514af"}D{i:5;uuid:"67a8061e-7e51-5ef2-a144-ff4bca225d99"}
D{i:6;uuid:"de2ccab0-9f84-5541-aa96-a2e1f26fd8b8"}D{i:7;uuid:"316ad668-2b45-50ff-9194-848ec737f034"}
D{i:8;uuid:"8fa3bf41-3575-5bed-8b23-345762dfb3f1"}D{i:9;uuid:"0c613077-aa79-5f27-8053-af173ad2327f"}
D{i:10;uuid:"20be4881-8cf6-5110-9b8d-4b64faacc391"}D{i:11;uuid:"54f72cd1-cb9e-59cb-8ad7-ff1f855d88b6"}
D{i:12;uuid:"da92ec7c-90fe-5c6f-a03d-09e743002813"}D{i:13;uuid:"ec61cec6-3fc3-52af-b81b-9897f873484f"}
D{i:14;uuid:"71652563-920b-5c07-ad84-b854b42ed785"}D{i:15;uuid:"ef5c8537-c570-5928-9a35-7ccaf554dc25"}
D{i:16;uuid:"d68d04c4-1936-54e8-bdfc-4853cddd152b"}D{i:17;uuid:"926844ed-016a-5c76-9ce2-45e0b001d7bc"}
D{i:18;uuid:"493dbe57-3a5f-5263-8bfb-4d9060fc831c"}D{i:19;uuid:"e00e62eb-ef3e-50b6-8622-3f2e203b92c0"}
D{i:20;uuid:"a130295d-c67e-5265-b64e-2ecf7eb1ee42"}D{i:21;uuid:"2870f62e-5c3f-5cdf-8cd5-f8c59236db9d"}
D{i:22;uuid:"572d7470-3670-5408-856e-01ee409c8436"}D{i:23;uuid:"9f959c98-c2ec-5bef-9f8c-adef726201b9"}
D{i:24;uuid:"e47fc227-5567-5ee1-bce9-2eaedec22fbd"}D{i:25;uuid:"3ea96e5a-a18c-577b-828f-91c3a5d351ef"}
D{i:26;uuid:"8dabc040-96bd-53d6-88d2-a2828e7e5cf5"}D{i:27;uuid:"a36c7186-1d5e-5125-9883-c7c0a9810b24"}
D{i:28;uuid:"539fbfdb-aee2-5af4-8408-b28850ee6dd5"}D{i:29;uuid:"ad0425c9-e37c-5473-8311-02b62a2fb302"}
D{i:30;uuid:"0bb94725-1022-5d47-8459-725c67cd0560"}D{i:31;uuid:"38d8844e-2ef8-56c9-918c-d25fa456c1e8"}
D{i:32;uuid:"a5e979cf-6392-5a11-8881-4ccfac5b429d"}D{i:33;uuid:"28fa1c33-07f2-5a83-add8-752ccb1904d1"}
D{i:34;uuid:"24ec4754-66b5-51c6-b3d5-ac46565d239d"}D{i:35;uuid:"63ce06eb-8c9c-5b1d-ab41-06c3ba761814"}
D{i:36;uuid:"9ee4ed26-20d4-5cc7-9493-05b4fc00705a"}D{i:37;uuid:"33543a30-9582-50fb-8fc0-03adaf1e9ea9"}
D{i:38;uuid:"663c4514-bee1-54fd-af97-1c4ab676c4f2"}D{i:39;uuid:"69ae40f5-c0ef-5f5e-aa05-d881a3afb94c"}
D{i:40;uuid:"8f12e3a0-235a-577c-9040-12d50a572b11"}D{i:41;uuid:"6cb0623e-af4a-5bfd-b08f-a2bd71276aa0"}
D{i:42;uuid:"00358ca7-b98c-58a2-b64b-1875abd986d8"}D{i:43;uuid:"c310c71c-8207-5fac-92a1-5680c54b1fd2"}
D{i:44;uuid:"d06ea801-2cfe-58ba-8383-7ccb5c760f47"}D{i:45;uuid:"41e6f429-fab6-507e-9ce8-bc3ea7db41e0"}
D{i:46;uuid:"b004a4c6-b59e-540c-bab0-17f6224dbf67"}D{i:47;uuid:"7ebec841-0220-58a0-bc16-819d14dca0eb"}
D{i:48;uuid:"e89d16f2-828c-506e-b729-ac251b138b58"}
}
##^##*/

