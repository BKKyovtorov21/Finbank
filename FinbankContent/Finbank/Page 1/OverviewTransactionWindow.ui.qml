import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    property alias rectangle_44: rectangle_44
    property alias moneySending: moneySending.text
    property alias sendingAndFees: sendingAndFees.text
    property alias recipentNameReceiving: recipentNameReceiving.text
    property alias conversion: conversion.text
    property alias recipentReceiving: recipentReceiving.text
    property alias recipentEmail: recipentEmail.text
    property alias recipentFullname: recipentFullname.text
    property alias recipentIBAN: recipentIBAN.text
    property alias sendButton: sendButton
    property alias backButton: backButton
    property alias imageSource: image.source
    id: overviewTransactionWindow
    width: 1280
    height: 832
    color: "#ffffff"

    Rectangle {
        id: solar_copy_linear
        width: 16
        height: 16
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 86
        clip: true
    }

    SvgPathItem {
        id: line_3_Stroke_
        width: 1208
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 36
        anchors.topMargin: 99
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 1208.006591796875 1 L 0 1 L 0 0 L 1208.006591796875 0 L 1208.006591796875 1 Z"
        joinStyle: 0
        fillColor: "#aba4a4"
        antialiasing: true
    }

    Rectangle {
        id: logo
        width: 86
        height: 88
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 12
        Image {
            id: logo1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../assets/logo1.png"
        }
    }

    Item {
        id: chooseAccount
        x: 101
        y: 28
        width: 177
        height: 56
        Rectangle {
            id: rectangle_21
            width: 177
            height: 56
            color: "#fafafa"
            radius: 10
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        SvgPathItem {
            id: element
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 157
            anchors.rightMargin: 10
            anchors.topMargin: 31
            anchors.bottomMargin: 21
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#666666"
            rotation: 180
            path: "M 0 4 L 5 0 L 10 4"
            joinStyle: 0
            antialiasing: true
        }

        Text {
            id: personal_account
            width: 141
            height: 23
            color: "#2f2f2f"
            text: qsTr("Personal account")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 9
            anchors.topMargin: 18
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: element1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 157
            anchors.rightMargin: 10
            anchors.topMargin: 24
            anchors.bottomMargin: 28
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#666666"
            path: "M 0 4 L 5 0 L 10 4"
            joinStyle: 0
            antialiasing: true
        }
    }

    Item {
        id: choosenPage
        x: 342
        y: 28
        width: 128
        height: 56
        Rectangle {
            id: rectangle_22
            width: 128
            height: 56
            color: "#fafafa"
            radius: 10
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: transactions
            width: 107
            height: 23
            color: "#196e1a"
            text: qsTr("Transactions")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 11
            anchors.topMargin: 19
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    SvgPathItem {
        id: element2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 304
        anchors.rightMargin: 957
        anchors.topMargin: 49
        anchors.bottomMargin: 768
        strokeWidth: 0.66667
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 11.266765879830523 14.999986304570152 C 11.087435416453909 15.000821512844574 10.90974221034774 14.966319086167877 10.744112248014885 14.898503169407787 C 10.578482285682028 14.830687252647698 10.428252222864785 14.73092504721642 10.302236808644041 14.605068313374716 C 10.046635633950467 14.35263350847125 9.903066570985521 14.010444714360126 9.903066570985521 13.653669912978097 C 9.903066570985521 13.296895111596069 10.046635633950467 12.95470888537804 10.302236808644041 12.702274080474574 L 15.761838075493593 7.3170119379638106 L 10.302236808644041 1.9317502234352315 C 10.174572883127722 1.6709720931221894 10.135556452553612 1.3765401455989679 10.190980438223546 1.0921570324833911 C 10.24640442389348 0.8077739193678144 10.393314101848125 0.5485974588757627 10.60990308995538 0.3530968294994309 C 10.826492078062634 0.15759620012309908 11.10121624140715 0.03619267815174746 11.39329865378966 0.006904616909822484 C 11.685381066172171 -0.02238344433210249 11.979252027888265 0.042005595267863766 12.231294951017002 0.19051497130893041 L 18.600831497901982 6.4733208176125965 C 18.856432672595556 6.725755622516062 19 7.067941420751908 19 7.424716222133937 C 19 7.781491023515966 18.856432672595556 8.123678961662726 18.600831497901982 8.376113766566192 L 12.231294951017002 14.551214459360923 C 12.109970716155976 14.686852351503877 11.961840830695891 14.796621194974472 11.795985137025243 14.873789766249827 C 11.630129443354594 14.950958337525181 11.450043197615624 14.993900596041065 11.266765879830523 14.999986304570152 Z M 1.2574968906063428 14.999986304570152 C 0.9063663710443837 14.973501036785944 0.5797223593606816 14.812402864093858 0.34756334613141737 14.551214459360923 C 0.1237402164342142 14.304379935062547 1.6163666751277457e-15 13.984833163842879 1.6163666751277457e-15 13.653669912978097 C 0 13.322506662113316 0.1237402164342142 13.002960746858012 0.34756334613141737 12.756126222559637 L 5.807164612980969 7.370864080048874 L 0.34756334613141737 1.9856023655202943 C 0.22592196470678344 1.7343732399232734 0.1862334112101406 1.4521255171594034 0.23396310125296507 1.1777243662354242 C 0.28169279129578956 0.903323215311445 0.4144932437084562 0.6502648269933384 0.6140768845994765 0.4533987605864246 C 0.8136605254904968 0.25653269417951075 1.0702104416206775 0.1255413176602739 1.3483994752395805 0.07846152551096222 C 1.6265885088584835 0.03138173336165054 1.9127332975823097 0.07052988552503768 2.1674304350812683 0.19051497130893041 L 8.536965246405746 6.4733208176125965 C 8.79256642109932 6.725755622516062 8.936135484064266 7.067941420751908 8.936135484064266 7.424716222133937 C 8.936135484064266 7.781491023515966 8.79256642109932 8.123678961662726 8.536965246405746 8.376113766566192 L 2.1674304350812683 14.551214459360923 C 1.9352714218520042 14.812402864093858 1.608627410168302 14.973501036785944 1.2574968906063428 14.999986304570152 Z"
        joinStyle: 0
        fillColor: "#b2b2b2"
        antialiasing: true
    }

    Item {
        id: searchbar
        x: 518
        y: 30
        width: 387
        height: 52
        Rectangle {
            id: rectangle_23
            width: 387
            height: 52
            color: "#4dececec"
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        SvgPathItem {
            id: element3
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 13
            anchors.rightMargin: 356
            anchors.topMargin: 19
            anchors.bottomMargin: 16
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#000000"
            path: "M 18 17 L 13.6570492891393 12.898324328631562 M 13.6570492891393 12.898324328631562 C 14.399928642135901 12.196716107094069 14.989212248995793 11.363786352191921 15.39125566952893 10.447090966349245 C 15.793299090062066 9.53039558050657 16.00022887138912 8.547887578608355 16.000228879216625 7.55566363740785 C 16.00022888704413 6.563439696207345 15.79330096758689 5.58093169430913 15.391257576855734 4.664236308466454 C 14.98921418612458 3.747540922623778 14.399928642135901 2.9146109988437363 13.6570492891393 2.2130027210136127 C 12.914169936142699 1.5113944431834894 12.032244372909094 0.9548483359951139 11.061625729075672 0.5751406891934678 C 10.09100708524225 0.19543304239182174 9.050704494997083 -7.392641508222264e-9 8.000114439608312 4.1941278728217626e-16 C 6.949524384219542 7.3926457023501376e-9 5.909221793974374 0.19543301424550608 4.938603150140952 0.5751406891934678 C 3.96798450630753 0.9548483641414296 3.0860584066382604 1.5113944431834894 2.343179113245622 2.2130027210136127 C 0.8428666692733466 3.6299645862393577 -1.5808361118645898e-8 5.551777008701226 0 7.55566363740785 C 1.5808361118645898e-8 9.559550266114474 0.8428666692733466 11.48136257599108 2.343179113245622 12.898324328631562 C 3.843491557217897 14.315286081272044 5.878352126860122 15.11132725988558 8.000114439608312 15.1113272748157 C 10.121876752356503 15.11132728974582 12.1567367259591 14.315286081272044 13.6570492891393 12.898324328631562 Z"
            joinStyle: 2
            antialiasing: true
        }

        Text {
            id: search
            width: 62
            height: 19
            color: "#802f2f2f"
            text: qsTr("Search")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 38
            anchors.topMargin: 18
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: chatButton
        x: 934
        y: 25
        width: 87
        height: 48
        Rectangle {
            id: rectangle_24
            width: 87
            height: 48
            color: "#4dececec"
            radius: 10
            border.color: "#727272"
            border.width: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_2
            x: 8
            y: 14
            width: 23
            height: 21
            SvgPathItem {
                id: element4
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 0.66667
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 11.821999692916869 18.59742223269367 C 12.631599688529967 18.541419394801377 13.43046706020832 18.415599815046477 14.218600368499756 18.219963230559163 C 15.188442921638488 18.503066461458616 16.21173041462898 18.56741682165295 17.210899543762206 18.40813407905796 C 17.250579015351832 18.403122862186017 17.29050008356571 18.400130489747944 17.33049964904785 18.39917213823698 C 17.686999651789666 18.399172138236978 18.15504904091358 18.598543810507977 18.83699903488159 19.018565088441367 L 18.83699903488159 18.328608871176943 C 18.837166276611967 18.208398102624137 18.870438669808205 18.090432175404697 18.933344173431394 17.987006177681117 C 18.996249677054582 17.883580179957537 19.08648624755442 17.798480972346542 19.19464998245239 17.740579509337934 C 19.491349966824053 17.580411387875483 19.767351091653104 17.393361265993544 20.019201087951657 17.18951094324236 C 21.012801113724706 16.379709930602562 21.57400026321411 15.30109595700954 21.57400026321411 14.158638102394102 C 21.573617585684403 13.78083030958752 21.511905243992803 13.405457208525577 21.391149806976316 13.046421724245063 C 21.69014979600906 12.508794500507227 21.933950735628606 11.942045508820941 22.11220073699951 11.355135788739297 C 22.68720073699951 12.183977787876216 22.997699999890756 13.158427425064867 23 14.158638102394102 C 23 15.711036787294521 22.247900223731992 17.160390176702673 20.94725017547607 18.21884378908355 C 20.729666201025246 18.39513956529017 20.501151917874815 18.558228061747204 20.263000965118408 18.707187314787063 L 20.263000965118408 20.322310639516036 C 20.263000965118408 20.87785877404983 19.596000607311726 21.195954965713288 19.12565059661865 20.86665828408055 C 18.68066791445017 20.54659856349534 18.22013486474752 20.247569929041507 17.74564971923828 19.970611609352765 C 17.609220036119222 19.892517289417658 17.467435830831526 19.823657856779434 17.32130031585693 19.764521151889408 C 16.93030031174421 19.821270694398198 16.53240019083023 19.85002057681537 16.12760019302368 19.85076728130148 C 14.503800261020661 19.85076728130148 13.003049635887145 19.38258198047142 11.821999692916869 18.59742223269367 Z M 3.236100149154663 15.364938836623192 C 1.1845001041889192 13.69605428161949 0 11.41561820758742 0 8.976134655259024 C 0 3.9874019344241676 4.8966998815536495 0 10.875549745559692 0 C 16.854399609565732 0 21.752251052856444 3.9874019344241676 21.752251052856444 8.976134655259024 C 21.752251052856444 13.964867376093881 16.854399609565732 17.951149869042435 10.875549745559692 17.951149869042435 C 10.203183075785637 17.951149869042435 9.540783447027206 17.901494673392342 8.888350105285644 17.80218297191569 C 8.606600099802018 17.866026206194945 7.480749857425689 18.508937487372712 5.858099842071533 19.648035148264956 C 5.271599853038787 20.061336072132253 4.436699771881103 19.662596098999764 4.436699771881103 18.967040871821506 L 4.436699771881103 16.211702314021032 C 4.016307799518108 15.958478433489212 3.6150813102722164 15.67624884828455 3.236100149154663 15.36717985591311 M 8.92859992980957 16.104176114878864 C 8.976899929158389 16.104176114878864 9.026733394898473 16.107909893529214 9.078100061416626 16.115376938651064 C 9.672169306874276 16.21133200140563 10.273366856575011 16.259284723109005 10.875549745559692 16.25874449206106 C 15.926349973678587 16.25874449206106 19.968600368499754 12.966896783406384 19.968600368499754 8.976134655259024 C 19.968600368499754 4.985372527111664 15.926349973678587 1.6946458621866218 10.875549745559692 1.6946458621866218 C 5.827049899101257 1.6946458621866218 1.7824999451637267 4.986492502671949 1.7824999451637267 8.976134655259024 C 1.7824999451637267 10.905992475815118 2.7266499221324914 12.722724486469955 4.396449947357177 14.082473355278617 C 4.818116623163223 14.424464027909433 5.27658340781927 14.730987389135464 5.771850061416625 15.002041119026414 C 6.049000057578086 15.153248785090888 6.22034990787506 15.433261585097695 6.22034990787506 15.735676917226641 L 6.22034990787506 17.325038133645684 C 7.503749972581862 16.496196134508764 8.347849455475806 16.104176114878864 8.927449464797974 16.104176114878864"
                joinStyle: 0
                fillColor: "#666666"
                antialiasing: true
            }

            SvgPathItem {
                id: element5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 5
                anchors.rightMargin: 6
                anchors.topMargin: 8
                anchors.bottomMargin: 10
                strokeWidth: 0.66667
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 1.4375 2.800141869041205 C 1.8187487095594406 2.800141869041207 2.184382447600364 2.6526348247579707 2.4539659976959225 2.390070586209331 C 2.723549547791481 2.1275063476606912 2.875 1.7713928385746267 2.875 1.4000709345206026 C 2.875 1.0287490304665785 2.723549547791481 0.6726355213805137 2.4539659976959225 0.41007128283187394 C 2.184382447600364 0.14750704428323408 1.8187487095594406 0 1.4375 0 C 1.0562512904405594 0 0.6906175523996352 0.14750704428323408 0.4210340023040771 0.41007128283187394 C 0.151450452208519 0.6726355213805137 0 1.0287490304665785 0 1.4000709345206026 C 0 1.7713928385746267 0.151450452208519 2.1275063476606912 0.4210340023040771 2.390070586209331 C 0.6906175523996352 2.6526348247579707 1.0562512904405594 2.8001418690412034 1.4375 2.800141869041205 Z M 6.108800315856933 2.800141869041205 C 6.490049025416374 2.800141869041207 6.855682763457297 2.6526348247579707 7.125266313552856 2.390070586209331 C 7.394849863648414 2.1275063476606912 7.546300315856933 1.7713928385746267 7.546300315856933 1.4000709345206026 C 7.546300315856933 1.0287490304665785 7.394849863648414 0.6726355213805137 7.125266313552856 0.41007128283187394 C 6.855682763457297 0.14750704428323408 6.490049025416374 0 6.108800315856933 0 C 5.727551606297492 0 5.361917868256569 0.14750704428323408 5.092334318161011 0.41007128283187394 C 4.822750768065452 0.6726355213805137 4.671300315856933 1.0287490304665785 4.671300315856933 1.4000709345206026 C 4.671300315856933 1.7713928385746267 4.822750768065452 2.1275063476606912 5.092334318161011 2.390070586209331 C 5.361917868256569 2.6526348247579707 5.727551606297492 2.8001418690412034 6.108800315856933 2.800141869041205 Z M 10.78125 2.8012623786926274 C 11.16249870955944 2.8012623786926274 11.528133544325827 2.653755334409393 11.797717094421385 2.391191095860753 C 12.067300644516942 2.1286268573121134 12.218749999999998 1.772513348226049 12.218749999999998 1.4011914441720248 C 12.218749999999998 1.0298695401180007 12.067300644516942 0.6737560310319359 11.797717094421385 0.4111917924832961 C 11.528133544325827 0.14862755393465626 11.16249870955944 0.0011205096514222046 10.78125 0.0011205096514222046 C 10.40000129044056 0.0011205096514222046 10.034367552399633 0.14862755393465626 9.764784002304076 0.4111917924832961 C 9.495200452208518 0.6737560310319359 9.34375 1.0298695401180007 9.34375 1.4011914441720248 C 9.34375 1.772513348226049 9.495200452208518 2.1286268573121134 9.764784002304076 2.391191095860753 C 10.034367552399633 2.653755334409393 10.40000129044056 2.8012623786926256 10.78125 2.8012623786926274 Z"
                joinStyle: 0
                fillColor: "#666666"
                antialiasing: true
            }
        }

        Text {
            id: chat
            width: 40
            height: 23
            color: "#802f2f2f"
            text: qsTr("Chat")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 36
            anchors.topMargin: 15
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }
    }

    Item {
        id: profile
        x: 1083
        y: 20
        width: 181
        height: 52
        Image {
            id: image
            width: 70
            height: 70

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: -23
            anchors.topMargin: -9
            source: "../assets/user.png"
        }

        Text {
            id: boyan_Kiovtorov
            width: 112
            height: 19
            color: "#000000"
            text: qsTr("Boyan Kiovtorov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 53
            anchors.topMargin: 8
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        Text {
            id: kiovtorov
            width: 78
            height: 19
            color: "#802f2f2f"
            text: qsTr("@kiovtorov")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 58
            anchors.topMargin: 33
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: element6
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 168
            anchors.topMargin: 33
            anchors.bottomMargin: 13
            strokeWidth: 1.4
            strokeStyle: 1
            strokeColor: "#000000"
            rotation: 180
            path: "M 0 6 L 6.5 0 L 13 6"
            joinStyle: 0
            antialiasing: true
        }
    }

    Button {
        id: sendButton
        x: 1088
        y: 761
        width: 141
        height: 51
        background: Rectangle {
            id: rectangle_34
            width: 141
            height: 51
            color: "#1c1f31"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element12
            width: 68
            height: 20
            color: "#ffffff"
            text: qsTr("Send")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 18
            anchors.topMargin: 15
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_6
            x: 122
            y: 18
            width: 14
            height: 27
            SvgPathItem {
                id: element13
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: -16
                anchors.rightMargin: 28
                anchors.topMargin: -5
                anchors.bottomMargin: 8
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                rotation: 90
                path: "M 0.8951799869537354 24.627973556518555 C 0.39387919212536815 24.627973556518555 0 24.086158141211033 0 23.39657487869263 L 0 1.2313986778259278 C 0 0.541815415307525 0.39387919212536815 0 0.8951799869537354 0 C 1.3964807817821026 0 1.7903599739074707 0.541815415307525 1.7903599739074707 1.2313986778259278 L 1.7903599739074707 23.39657487869263 C 1.7903599739074707 24.086158141211033 1.3964807817821026 24.627973556518555 0.8951799869537354 24.627973556518555 Z"
                joinStyle: 0
                fillColor: "#ffffff"
                antialiasing: true
            }

            SvgPathItem {
                id: element14
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: -13
                anchors.rightMargin: 13
                anchors.topMargin: 2
                anchors.bottomMargin: 14
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                rotation: 90
                path: "M 13.445603174793371 11.10721576356447 C 13.328198864620976 11.109184577663754 13.211794569142205 11.07733407716977 13.103874965080944 11.013711403197513 C 12.995955361019684 10.950088729225257 12.898909449437312 10.856101957357273 12.818977384449592 10.737795915360273 L 7.179343563935342 2.979984094073765 L 1.539709529993562 10.737795915360273 C 1.1816375468945577 11.23035540714469 0.6266259770928676 11.23035540714469 0.2685539939938634 10.737795915360273 C -0.08951798910514075 10.245236423575856 -0.08951798910514075 9.481769730594369 0.2685539939938634 8.989210238809951 L 6.534813338067479 0.36941962801294864 C 6.8928853211664824 -0.12313986377146913 7.447897371180117 -0.12313986377146913 7.805969354279121 0.36941962801294864 L 14.072229818847271 8.989210238809951 C 14.430301801946275 9.481769730594369 14.430301801946275 10.245236423575856 14.072229818847271 10.737795915360273 C 13.893193827297768 10.984075661252483 13.660446356649242 11.10721576356447 13.445603174793371 11.10721576356447 Z"
                joinStyle: 0
                fillColor: "#ffffff"
                antialiasing: true
            }
        }
    }

    Button {
        id: backButton
        x: 921
        y: 761
        width: 141
        height: 51
        background: Rectangle {
            id: rectangle_35
            width: 141
            height: 51
            color: "#ffffff"
            radius: 25
            border.color: "#000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: back
            width: 37
            height: 20
            color: "#000000"
            text: qsTr("Back")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 51
            anchors.topMargin: 16
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_36
        x: 33
        y: 205
        width: 143
        height: 20
        SvgPathItem {
            id: element15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 128
            anchors.bottomMargin: 5
            strokeWidth: 0.66667
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 15 1.5771810553199384 L 4.714285714285714 15 L 0 8.847874650354973 L 1.208571297781808 7.270693595035034 L 4.714285714285714 11.83445195088627 L 13.791428702218191 0 L 15 1.5771810553199384 Z"
            joinStyle: 0
            fillColor: "#11c465"
            antialiasing: true
        }

        Text {
            id: select_Recipent
            width: 113
            height: 20
            color: "#000000"
            text: qsTr("Select Recipent")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 31
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_37
        x: 33
        y: 254
        width: 117
        height: 20
        SvgPathItem {
            id: element16
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 102
            anchors.bottomMargin: 5
            strokeWidth: 0.66667
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 15 1.5771810553199384 L 4.714285714285714 15 L 0 8.847874650354973 L 1.208571297781808 7.270693595035034 L 4.714285714285714 11.83445195088627 L 13.791428702218191 0 L 15 1.5771810553199384 Z"
            joinStyle: 0
            fillColor: "#11c465"
            antialiasing: true
        }

        Text {
            id: amount
            width: 103
            height: 20
            color: "#000000"
            text: qsTr("Amount")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_38
        x: 36
        y: 303
        width: 145
        height: 20
        SvgPathItem {
            id: element17
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 130
            anchors.bottomMargin: 5
            strokeWidth: 0.66667
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 15 1.5771810553199384 L 4.714285714285714 15 L 0 8.847874650354973 L 1.208571297781808 7.270693595035034 L 4.714285714285714 11.83445195088627 L 13.791428702218191 0 L 15 1.5771810553199384 Z"
            joinStyle: 0
            fillColor: "#11c465"
            antialiasing: true
        }

        Text {
            id: details_recipent
            width: 117
            height: 20
            color: "#000000"
            text: qsTr("Details recipent")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 29
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    SvgPathItem {
        id: element18
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1232
        anchors.topMargin: 354
        anchors.bottomMargin: 463
        strokeWidth: 0.66667
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 15 1.5771810553199384 L 4.714285714285714 15 L 0 8.847874650354973 L 1.208571297781808 7.270693595035034 L 4.714285714285714 11.83445195088627 L 13.791428702218191 0 L 15 1.5771810553199384 Z"
        joinStyle: 0
        fillColor: "#11c465"
        antialiasing: true
    }

    Text {
        id: transfer_type
        width: 99
        height: 20
        color: "#000000"
        text: qsTr("Transfer type")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 74
        anchors.topMargin: 352
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    SvgPathItem {
        id: line_10_Stroke_
        width: 30
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 410
        strokeWidth: 1.5
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 30 1.5 L 0 1.5 L 0 0 L 30 0 L 30 1.5 Z"
        joinStyle: 0
        fillColor: "#4c85f7"
        antialiasing: true
    }

    Text {
        id: overview
        width: 70
        height: 20
        color: "#000000"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 75
        anchors.topMargin: 401
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Text {
        id: review_details_of_your_transfer
        width: 505
        height: 46
        color: "#000000"
        text: qsTr("Review details of your transfer")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 460
        anchors.topMargin: 123
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Item {
        id: group_52
        x: 471
        y: 190
        width: 481
        height: 76
        Rectangle {
            id: rectangle_44
            width: 481
            height: 76
            color: "#ffffff"
            radius: 15
            border.color: "#26000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }
    }

    Rectangle {
        id: mdi_information
        width: 16
        height: 16
        opacity: 0.1
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 604
        anchors.topMargin: 288
        SvgPathItem {
            id: element19
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 1
            anchors.rightMargin: 1
            anchors.topMargin: 1
            anchors.bottomMargin: 1
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 7.333333158493042 4.666666555404663 L 5.999999856948853 4.666666555404663 L 5.999999856948853 3.3333332538604736 L 7.333333158493042 3.3333332538604736 M 7.333333158493042 9.999999761581421 L 5.999999856948853 9.999999761581421 L 5.999999856948853 5.999999856948853 L 7.333333158493042 5.999999856948853 M 6.666666507720947 0 C 5.7911873867228625 -4.440891992621508e-16 4.9242806850048515 0.1724384584640234 4.115443449446912 0.5074698009299482 C 3.3066062138889722 0.842501143395873 2.5716786168810843 1.333564209932544 1.952621413406814 1.952621413406814 C 0.7023788920471132 3.2028639347665147 1.1842378646990688e-15 4.898556592498858 0 6.666666507720947 C 1.480297330873836e-15 8.434776422943036 0.7023788920471132 10.13046908067538 1.952621413406814 11.380711602035081 C 2.5716786168810843 11.999768805509351 3.3066062138889722 12.490832507828884 4.115443449446912 12.825863850294809 C 4.9242806850048515 13.160895192760734 5.7911873867228625 13.333333015441893 6.666666507720947 13.333333015441895 C 8.434776422943036 13.333333015441893 10.13046908067538 12.630954123394782 11.380711602035081 11.380711602035081 C 12.630954123394782 10.13046908067538 13.333333015441895 8.434776422943036 13.333333015441895 6.666666507720947 C 13.333333015441895 5.7911873867228625 13.160895192760734 4.9242806850048515 12.825863850294809 4.115443449446912 C 12.490832507828884 3.3066062138889722 11.999768805509351 2.5716786168810843 11.380711602035081 1.952621413406814 C 10.761654398560811 1.333564209932544 10.026726801552924 0.842501143395873 9.217889565994984 0.5074698009299482 C 8.409052330437044 0.1724384584640234 7.542145628719032 8.881783985243016e-16 6.666666507720947 0 Z"
            joinStyle: 0
            fillColor: "#666666"
            antialiasing: true
        }
        clip: true
    }

    Item {
        id: group_53
        x: 469
        y: 286
        width: 512
        height: 29
        Text {
            id: transfer_details
            width: 136
            height: 20
            color: "#000000"
            text: qsTr("Transfer details")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: edit
            width: 94
            height: 17
            color: "#6d9cdf"
            text: qsTr("Edit\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 419
            anchors.topMargin: 3
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: element20
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 431
            anchors.rightMargin: 69
            anchors.topMargin: 6
            anchors.bottomMargin: 11
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 5.640394898559394 9.696084811411945 L 10.077835725189908 5.25864398478143 C 9.33133663343676 4.946788717025986 8.653335735393858 4.4913902389784 8.0823077251716 3.9182919237362555 C 7.508929003972485 3.347140643607903 7.0533203198013075 2.6689264997135265 6.741355443034498 1.9221635595800017 L 2.3039149024960195 6.359604529256535 C 1.9577273029836728 6.7057921287688815 1.7843333390392802 6.879185913905752 1.6355386769731006 7.069979065692072 C 1.4599802479674115 7.295255766757174 1.3093090814147366 7.5388641368946585 1.1861548906098491 7.796552705400732 C 1.0823586167726607 8.014944869826216 1.0049612710058309 8.247736547094183 0.8501668298027033 8.712119888584319 L 0.03299612549131539 11.161832728471193 C -0.004614289047939105 11.273996345031192 -0.010194351051950878 11.394426975413062 0.01688299287506857 11.509587897772832 C 0.04396033680208802 11.624748820132602 0.10262178556524539 11.730074899610305 0.18627350556010336 11.813726619605163 C 0.26992522555496135 11.89737833960002 0.37525103682138017 11.956039792833367 0.4904119591811512 11.983117136760386 C 0.6055728815409223 12.010194480687405 0.7260036549688084 12.004613703453304 0.8381672715288072 11.967003288914048 L 3.2878795392316102 11.149832884105262 C 3.7528628514831395 10.995038442902134 3.985054557989711 10.917641526273359 4.203446722415197 10.81384525243617 C 4.462237442609937 10.690649667689797 4.704428459157882 10.54085471164021 4.930020362123856 10.364461036934864 C 5.120813513910177 10.215666374868684 5.294207299047047 10.04227241092429 5.640394898559394 9.696084811411945 Z M 11.308991605678203 4.027488104293136 C 11.751436408511202 3.585043301460138 12.000000004661915 2.98495928338141 12 2.3592478201694123 C 11.999999995338088 1.733536356957415 11.751436408511202 1.1334524819247052 11.308991605678203 0.6910076790917075 C 10.866546802845205 0.24856287625870965 10.266462641720459 4.661913420636153e-9 9.640751178508461 2.6644397172098814e-16 C 9.015039715296464 -4.6619128877482096e-9 8.41495612635579 0.24856287625870965 7.9725113235227925 0.6910076790917075 L 7.4403303561960294 1.2231886464184711 L 7.463129602744043 1.2897862949708072 C 7.725310889063427 2.040226447568485 8.154488137956632 2.721328940898726 8.718285171964201 3.281714828035799 C 9.295426325292748 3.8623839610701216 10.000375233546466 4.30002363358629 10.776811210535511 4.559669071619899 L 11.308991605678203 4.027488104293136 Z"
            joinStyle: 0
            fillColor: "#6d9cdf"
            antialiasing: true
        }

        SvgPathItem {
            id: line_17_Stroke_
            width: 481
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 2
            anchors.topMargin: 28
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 481 1 L 0 1 L 0 0 L 481 0 L 481 1 Z"
            joinStyle: 0
            fillColor: "#26000000"
            antialiasing: true
        }
    }

    Item {
        id: group_54
        x: 447
        y: 332
        width: 504
        height: 24
        Text {
            id: you_send
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("You send")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: moneySending
            width: 89
            height: 24
            color: "#000000"
            text: qsTr("$1.000 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 416
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_57
        x: 456
        y: 439
        width: 490
        height: 24
        Text {
            id: you_will_pay
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("You will pay")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 2
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: sendingAndFees
            width: 107
            height: 24
            color: "#000000"
            text: qsTr("$1.010 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 384
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_55
        x: 458
        y: 366
        width: 489
        height: 18
        Text {
            id: finbank_fees
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Finbank fees")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: uSD2
            width: 53
            height: 18
            color: "#80000000"
            text: qsTr("$5 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 437
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_56
        x: 475
        y: 403
        width: 490
        height: 24
        Text {
            id: payment_method_fees
            width: 142
            height: 15
            color: "#000000"
            text: qsTr("Payment method fees")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: uSD3
            width: 89
            height: 24
            color: "#80000000"
            text: qsTr("$5 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 402
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.DemiBold
            font.family: "Gelasio"
        }
    }

    Rectangle {
        id: mdi_information1
        width: 16
        height: 16
        opacity: 0.1
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 610
        anchors.topMargin: 542
        SvgPathItem {
            id: element21
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 1
            anchors.rightMargin: 1
            anchors.topMargin: 1
            anchors.bottomMargin: 1
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 7.333333158493042 4.666666555404663 L 5.999999856948853 4.666666555404663 L 5.999999856948853 3.3333332538604736 L 7.333333158493042 3.3333332538604736 M 7.333333158493042 9.999999761581421 L 5.999999856948853 9.999999761581421 L 5.999999856948853 5.999999856948853 L 7.333333158493042 5.999999856948853 M 6.666666507720947 0 C 5.7911873867228625 -4.440891992621508e-16 4.9242806850048515 0.1724384584640234 4.115443449446912 0.5074698009299482 C 3.3066062138889722 0.842501143395873 2.5716786168810843 1.333564209932544 1.952621413406814 1.952621413406814 C 0.7023788920471132 3.2028639347665147 1.1842378646990688e-15 4.898556592498858 0 6.666666507720947 C 1.480297330873836e-15 8.434776422943036 0.7023788920471132 10.13046908067538 1.952621413406814 11.380711602035081 C 2.5716786168810843 11.999768805509351 3.3066062138889722 12.490832507828884 4.115443449446912 12.825863850294809 C 4.9242806850048515 13.160895192760734 5.7911873867228625 13.333333015441893 6.666666507720947 13.333333015441895 C 8.434776422943036 13.333333015441893 10.13046908067538 12.630954123394782 11.380711602035081 11.380711602035081 C 12.630954123394782 10.13046908067538 13.333333015441895 8.434776422943036 13.333333015441895 6.666666507720947 C 13.333333015441895 5.7911873867228625 13.160895192760734 4.9242806850048515 12.825863850294809 4.115443449446912 C 12.490832507828884 3.3066062138889722 11.999768805509351 2.5716786168810843 11.380711602035081 1.952621413406814 C 10.761654398560811 1.333564209932544 10.026726801552924 0.842501143395873 9.217889565994984 0.5074698009299482 C 8.409052330437044 0.1724384584640234 7.542145628719032 8.881783985243016e-16 6.666666507720947 0 Z"
            joinStyle: 0
            fillColor: "#666666"
            antialiasing: true
        }
        clip: true
    }

    Item {
        id: group_59
        x: 469
        y: 540
        width: 512
        height: 29
        Text {
            id: recipient_details
            width: 141
            height: 20
            color: "#000000"
            text: qsTr("Recipient details")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: edit1
            width: 94
            height: 17
            color: "#6d9cdf"
            text: qsTr("Edit\n")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 419
            anchors.topMargin: 3
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: element22
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 431
            anchors.rightMargin: 69
            anchors.topMargin: 6
            anchors.bottomMargin: 11
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 5.640394898559394 9.696084811411945 L 10.077835725189908 5.25864398478143 C 9.33133663343676 4.946788717025986 8.653335735393858 4.4913902389784 8.0823077251716 3.9182919237362555 C 7.508929003972485 3.347140643607903 7.0533203198013075 2.6689264997135265 6.741355443034498 1.9221635595800017 L 2.3039149024960195 6.359604529256535 C 1.9577273029836728 6.7057921287688815 1.7843333390392802 6.879185913905752 1.6355386769731006 7.069979065692072 C 1.4599802479674115 7.295255766757174 1.3093090814147366 7.5388641368946585 1.1861548906098491 7.796552705400732 C 1.0823586167726607 8.014944869826216 1.0049612710058309 8.247736547094183 0.8501668298027033 8.712119888584319 L 0.03299612549131539 11.161832728471193 C -0.004614289047939105 11.273996345031192 -0.010194351051950878 11.394426975413062 0.01688299287506857 11.509587897772832 C 0.04396033680208802 11.624748820132602 0.10262178556524539 11.730074899610305 0.18627350556010336 11.813726619605163 C 0.26992522555496135 11.89737833960002 0.37525103682138017 11.956039792833367 0.4904119591811512 11.983117136760386 C 0.6055728815409223 12.010194480687405 0.7260036549688084 12.004613703453304 0.8381672715288072 11.967003288914048 L 3.2878795392316102 11.149832884105262 C 3.7528628514831395 10.995038442902134 3.985054557989711 10.917641526273359 4.203446722415197 10.81384525243617 C 4.462237442609937 10.690649667689797 4.704428459157882 10.54085471164021 4.930020362123856 10.364461036934864 C 5.120813513910177 10.215666374868684 5.294207299047047 10.04227241092429 5.640394898559394 9.696084811411945 Z M 11.308991605678203 4.027488104293136 C 11.751436408511202 3.585043301460138 12.000000004661915 2.98495928338141 12 2.3592478201694123 C 11.999999995338088 1.733536356957415 11.751436408511202 1.1334524819247052 11.308991605678203 0.6910076790917075 C 10.866546802845205 0.24856287625870965 10.266462641720459 4.661913420636153e-9 9.640751178508461 2.6644397172098814e-16 C 9.015039715296464 -4.6619128877482096e-9 8.41495612635579 0.24856287625870965 7.9725113235227925 0.6910076790917075 L 7.4403303561960294 1.2231886464184711 L 7.463129602744043 1.2897862949708072 C 7.725310889063427 2.040226447568485 8.154488137956632 2.721328940898726 8.718285171964201 3.281714828035799 C 9.295426325292748 3.8623839610701216 10.000375233546466 4.30002363358629 10.776811210535511 4.559669071619899 L 11.308991605678203 4.027488104293136 Z"
            joinStyle: 0
            fillColor: "#6d9cdf"
            antialiasing: true
        }

        SvgPathItem {
            id: line_18_Stroke_
            width: 481
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 2
            anchors.topMargin: 28
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 481 1 L 0 1 L 0 0 L 481 0 L 481 1 Z"
            joinStyle: 0
            fillColor: "#26000000"
            antialiasing: true
        }
    }

    Item {
        id: group_60
        x: 434
        y: 586
        width: 517
        height: 24
        Text {
            id: email
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Email")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentEmail
            width: 298
            height: 24
            color: "#000000"
            text: qsTr("vichovichev07@gmail.com")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 220
            font.pixelSize: 14
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_63
        x: 449
        y: 685
        width: 508
        height: 24
        Text {
            id: bank_name
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Bank name")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: cENAIDJA_Bank_Central_Asia_BCA_
            width: 251
            height: 24
            color: "#000000"
            text: qsTr("CENAIDJA - Bank Central Asia (BCA)")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 258
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_61
        x: 464
        y: 620
        width: 488
        height: 24
        Text {
            id: account_Holder
            width: 120
            height: 15
            color: "#000000"
            text: qsTr("Account Holder")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentFullname
            width: 264
            height: 24
            color: "#000000"
            text: qsTr("Vicho Vichev")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 225
            font.pixelSize: 14
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_62
        x: 455
        y: 652
        width: 507
        height: 24
        Text {
            id: routing_number
            width: 142
            height: 15
            color: "#000000"
            text: qsTr("IBAN")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 21
            anchors.topMargin: 0
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentIBAN
            width: 371
            height: 24
            color: "#000000"
            text: qsTr("**** 4238")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 137
            font.pixelSize: 14
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_58
        x: 470
        y: 469
        width: 487
        height: 54
        Rectangle {
            id: rectangle_45
            width: 481
            height: 54
            color: "#0d000000"
            radius: 15
            border.color: "#f6f7f9"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1
        }

        Text {
            id: recipentNameReceiving
            width: 261
            height: 16
            color: "#000000"
            text: qsTr("Vicho will get")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 20
            anchors.topMargin: 10
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: conversion
            width: 466
            height: 11
            color: "#4d000000"
            text: qsTr("Conversion rate  1 CAD = 11.205,44 IDR ")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 13
            anchors.topMargin: 32
            font.pixelSize: 11
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: recipentReceiving
            width: 115
            height: 23
            color: "#000000"
            text: qsTr("$1.361,61 CAD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 373
            anchors.topMargin: 20
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"ec01dd84-d619-58bf-83c4-5e4c8b82e569"}D{i:1;uuid:"68818733-365f-5897-983b-ced5511c3499"}
D{i:2;uuid:"13376f83-4f01-548c-a2e4-0958d9769d53"}D{i:3;uuid:"c9564b11-6321-5026-925f-ee599373102d"}
D{i:4;uuid:"c14548b6-8a51-55f3-bb81-f31f78d9676f"}D{i:5;uuid:"bef7c05b-cece-5503-b03c-969e55250892"}
D{i:6;uuid:"dd7b96ff-dbfd-5a7c-9db4-c3b0e7eea920"}D{i:7;uuid:"c38f0a8b-300b-59f0-b107-4adb783d3499"}
D{i:8;uuid:"d3dc7ec6-c821-5e6b-ae3c-f5cd76f3ab14"}D{i:9;uuid:"b95cd687-57c0-5c76-9252-6e09055bb73f"}
D{i:10;uuid:"af3004a1-30ce-5441-8e13-12f568b4cbea"}D{i:11;uuid:"ebc0e1cd-8de9-5703-9e3f-192c01fe2824"}
D{i:12;uuid:"f39ef46e-dbb8-5b61-9562-63451d3bd705"}D{i:13;uuid:"046080d9-59b3-55c2-ab92-35f684e19fce"}
D{i:14;uuid:"743d84cb-cd81-5b12-87ba-1e615a0f1059"}D{i:15;uuid:"52d4b712-0e60-5b83-9d76-95cec15ae246"}
D{i:16;uuid:"b0b96056-9b9e-5dbc-a754-d384f501b43c"}D{i:17;uuid:"7add1974-d7a5-5b33-b3af-28a584f3c25f"}
D{i:18;uuid:"37661b0a-a6fb-5456-8268-cca9f1de4943"}D{i:19;uuid:"6700bb8e-d64a-5c05-b165-85eaf75f0a15"}
D{i:20;uuid:"b19975ea-1e36-5f8a-b6ff-6458bb7895cc"}D{i:21;uuid:"5e6864b4-b898-538b-9b78-61a8d28b98a1"}
D{i:22;uuid:"4e8d3bf1-7029-544e-8af2-48f0f63ecf81"}D{i:23;uuid:"aaeda682-4e09-599e-b33e-60a7e1354c5a"}
D{i:24;uuid:"de5628d5-1625-5a91-b716-746b841008b7"}D{i:25;uuid:"55fe97da-ac7a-5cdd-93dd-29ff79624d64"}
D{i:26;uuid:"eeeb6328-d7da-5505-a92b-f50e5a536afe"}D{i:27;uuid:"bd71cfc3-59b5-51ed-a350-f653f979a5e8"}
D{i:28;uuid:"bbfdef8e-8b09-532e-985c-340270304fb5"}D{i:38;uuid:"277c9e65-ef0c-5d98-b5dc-18936ad0d8c3"}
D{i:39;uuid:"47ffb1fc-dc4c-5d0e-ba20-7ca3e285991c"}D{i:40;uuid:"efb36045-a495-5433-8b30-81148bebe1bf"}
D{i:41;uuid:"c883790e-da13-5cf9-b30c-60d31f4d77b2"}D{i:42;uuid:"974c2070-8341-5ffa-8eac-271043f2792f"}
D{i:43;uuid:"2300d09e-d957-5673-8e65-ff7765517e42"}D{i:44;uuid:"ebf32042-6b30-526a-8a0d-13548bb57ff0"}
D{i:45;uuid:"8b2ed04d-0018-51ec-b72e-d03f98b999e1"}D{i:46;uuid:"9c47d832-a346-5292-87bc-943cdf0eca1e"}
D{i:47;uuid:"bd95bac8-ead4-5cfa-a00d-7cf65f8b220b"}D{i:48;uuid:"cdbe51e8-4f31-5d80-a836-cd14b83ec757"}
D{i:49;uuid:"b5f81695-c73b-5865-bacf-39eb0ee5da48"}D{i:50;uuid:"fc7a76d1-85a2-5624-85f5-a83f3cc95cf7"}
D{i:51;uuid:"a16ed94a-0851-5a68-99bd-27d477245f25"}D{i:52;uuid:"8d99fed4-0d6a-5ea1-a55a-b0211e6dd942"}
D{i:53;uuid:"ef2407f9-b2f2-5ea0-ada4-0f783d9305db"}D{i:54;uuid:"c0deaf5e-f0ac-580f-9325-1840ccf28a2f"}
D{i:55;uuid:"88cecd1b-0c41-5097-9dc9-dddd391247d1"}D{i:56;uuid:"bb149b0e-d24e-5d87-830f-07502946140c"}
D{i:57;uuid:"eacb03ba-06ab-5fda-aafa-88f1764b4d8a"}D{i:58;uuid:"095da311-a241-57e7-b8ea-98b837db0257"}
D{i:59;uuid:"fe726ab1-3520-5322-b00e-cd60cbf363ce"}D{i:60;uuid:"d4513642-a3f8-5562-8eaf-9dfed429c5c6"}
D{i:61;uuid:"fc42bc69-ccaa-524d-b508-be465ba31aa3"}D{i:62;uuid:"d94dd950-fcd2-5560-a7be-7b0303dd8b8f"}
D{i:63;uuid:"763dba48-1645-53a7-bd64-075042f54218"}D{i:64;uuid:"14ff3892-8f5a-5383-aab0-ed6b4dadea99"}
D{i:65;uuid:"a0aad1a6-72fa-501f-8add-90d77ea3c001"}D{i:66;uuid:"beb34c84-89bd-5208-b6ca-3196575d9cc7"}
D{i:67;uuid:"22556e4d-bc30-54e1-afd0-f1d2e3c62456"}D{i:68;uuid:"c86d2081-e4eb-5587-a8e5-d22f327e149d"}
D{i:69;uuid:"00ee53cd-6c39-528f-8e92-278e38b69376"}D{i:70;uuid:"4828fdc6-8b44-5fc3-b4d0-dc752dbcec14"}
D{i:71;uuid:"1088a7a0-e10a-5aad-85da-b2f7cda3aa80"}D{i:72;uuid:"76748725-ccaa-5cbc-836e-213a25582631"}
D{i:73;uuid:"ea31333c-c1da-59e4-9ec9-0963090aa8f2"}D{i:74;uuid:"d501ab53-378b-5721-a45a-0dcce280a9a5"}
D{i:75;uuid:"ed3039c8-7cbb-58b1-a6f3-53a9e8950340"}D{i:76;uuid:"b29bab72-c8a3-56fe-b765-5255079c4a04"}
D{i:77;uuid:"da6c5ed6-d30c-5d8e-bf71-87808263dc7f"}D{i:78;uuid:"3426d839-5fbe-5ccc-9f99-968052089e64"}
D{i:79;uuid:"d12b435d-665e-5f47-a566-349ed9772319"}D{i:80;uuid:"f95979af-fb37-5784-8c00-12709869ccdb"}
D{i:81;uuid:"4f73bb87-b91a-5c8e-8e0c-e14aa31a8efb"}D{i:82;uuid:"80d9937a-3e42-5dcc-ac24-54a14e715c44"}
D{i:83;uuid:"63cd08e0-c3f4-52ec-a983-9ecb0295ad3f"}D{i:84;uuid:"d250c7a3-4b1f-54f8-9911-b102765f4460"}
D{i:85;uuid:"2bb0f6a3-d96a-5a6e-b65b-b28bb8339175"}D{i:86;uuid:"a756f9cb-02c8-57bc-91cb-3ae16ce011c7"}
D{i:87;uuid:"09e84374-bd07-5f6b-9714-bf28e2410e71"}D{i:88;uuid:"0a0ad66f-7626-56b7-b2dc-e21d97f2bbef"}
D{i:89;uuid:"97548914-f76d-56d7-bca2-92eba3dcd0e0"}D{i:90;uuid:"17aadcd9-65c8-5c42-8f4b-f730f80fbe2f"}
D{i:91;uuid:"3a565467-1c21-5c7c-8fb0-705ec0f0f32d"}D{i:92;uuid:"515ed3e8-1c57-5af9-8601-cefe96668633"}
D{i:93;uuid:"59a13bec-cbc3-5a5b-bdd4-2943c6fca39f"}D{i:94;uuid:"3b12182a-4f53-51d5-a2f4-165951583be0"}
D{i:95;uuid:"55a80e8b-a153-5b55-a820-7e24ec15bc0f"}D{i:96;uuid:"5bbd804d-7048-5045-bc52-d4007a96dc96"}
}
##^##*/

