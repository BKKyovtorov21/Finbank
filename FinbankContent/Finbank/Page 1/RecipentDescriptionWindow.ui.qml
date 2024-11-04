import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Rectangle {

    property alias rectangle_42: rectangle_42
    property alias recipentIBAN: recipentIBAN.text
    property alias backButton: backButton
    property alias imageSource: image.source

    id: selectRecipentDescRiptionWindow
    width: 1280
    height: 832
    color: "#ffffff"

    property alias continueButton: continueButton
    property alias selectBankButton: selectBankButton
    property alias timelineAnimation: timelineAnimation

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
        id: continueButton
        x: 1055
        y: 757
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
            text: qsTr("Continue")
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
        x: 888
        y: 757
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

    Text {
        id: select_Recipent
        width: 128
        height: 20
        color: "#4d303030"
        text: qsTr("Select Recipent")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 67
        anchors.topMargin: 210
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: details_Recipient
        width: 142
        height: 20
        color: "#000000"
        text: qsTr("Details Recipient")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 74
        anchors.topMargin: 306
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    SvgPathItem {
        id: line_12_Stroke_
        width: 30
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 315
        strokeWidth: 1.5
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 30 1.5 L 0 1.5 L 0 0 L 30 0 L 30 1.5 Z"
        joinStyle: 0
        fillColor: "#4c85f7"
        antialiasing: true
    }

    Text {
        id: amount
        width: 68
        height: 20
        color: "#4d303030"
        text: qsTr("Amount")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 76
        anchors.topMargin: 249
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: cancel
        width: 49
        height: 20
        color: "#000000"
        text: qsTr("Cancel")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 260
        anchors.topMargin: 778
        font.pixelSize: 16
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Gelasio"
    }

    SvgPathItem {
        id: line_11_Stroke_
        width: 52
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 258
        anchors.topMargin: 796
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 52 1 L 0 1 L 0 0 L 52 0 L 52 1 Z"
        joinStyle: 0
        fillColor: "#000000"
        antialiasing: true
    }

    Text {
        id: select_recipient_bank_destination
        width: 617
        height: 42
        color: "#000000"
        text: qsTr("Select recipient bank destination")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 404
        anchors.topMargin: 159
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Item {
        id: group_45
        x: 446
        y: 252
        width: 531
        height: 85
        Rectangle {
            id: rectangle_42
            width: 531
            height: 85
            color: "#ffffff"
            radius: 15
            border.color: "#26000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }
    }

    Text {
        id: add_new
        width: 100
        height: 24
        color: "#80000000"
        text: qsTr("Add new")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 894
        anchors.topMargin: 376
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Item {
        id: group_64
        x: 433
        y: 375
        width: 543
        height: 22
        Text {
            id: bank_account
            width: 139
            height: 22
            color: "#000000"
            text: qsTr("Bank account")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: line_15_Stroke_
            width: 536
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 7
            anchors.topMargin: 20
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            rotation: -0.211
            path: "M 536.0037231445312 1 L 0 1 L 0 0 L 536.0037231445312 0 L 536.0037231445312 1 Z"
            joinStyle: 0
            fillColor: "#4d000000"
            antialiasing: true
        }
    }

    SvgPathItem {
        id: element15
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1232
        anchors.topMargin: 249
        anchors.bottomMargin: 568
        strokeWidth: 0.66667
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 15 1.5771810553199384 L 4.714285714285714 15 L 0 8.847874650354973 L 1.208571297781808 7.270693595035034 L 4.714285714285714 11.83445195088627 L 13.791428702218191 0 L 15 1.5771810553199384 Z"
        joinStyle: 0
        fillColor: "#11c465"
        antialiasing: true
    }

    SvgPathItem {
        id: element16
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1232
        anchors.topMargin: 212
        anchors.bottomMargin: 605
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
        color: "#727272"
        text: qsTr("Transfer type")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 74
        anchors.topMargin: 348
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    SvgPathItem {
        id: line_10_Stroke_
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 406
        strokeWidth: 1.5
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 20 1.5 L 0 1.5 L 0 0 L 20 0 L 20 1.5 Z"
        joinStyle: 0
        fillColor: "#4d171716"
        antialiasing: true
    }

    SvgPathItem {
        id: line_16_Stroke_
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 34
        anchors.topMargin: 357
        strokeWidth: 1.5
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 20 1.5 L 0 1.5 L 0 0 L 20 0 L 20 1.5 Z"
        joinStyle: 0
        fillColor: "#4d171716"
        antialiasing: true
    }

    Text {
        id: overview
        width: 79
        height: 20
        color: "#4d303030"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 70
        anchors.topMargin: 397
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Button {
        id: selectBankButton
        x: 446
        y: 417
        width: 531
        height: 85
        background: Rectangle {
            id: rectangle_43
            width: 531
            height: 85
            color: "#00f6f7f9"
            radius: 15
            border.color: "#26000000"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_44
            x: 9
            y: 18
            width: 50
            height: 50
            ArcItem {
                id: ellipse_9
                width: 50
                height: 50
                anchors.left: parent.left
                anchors.top: parent.top
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#80d9d9d9"
                end: 450.00001
                begin: 90
                arcWidth: 25
                antialiasing: true
            }

            SvgPathItem {
                id: element17
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 11
                anchors.rightMargin: 11
                anchors.topMargin: 8
                anchors.bottomMargin: 12
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 14.25 0 L 0 7.083333333333334 L 0 9.916666666666668 L 28.5 9.916666666666668 L 28.5 7.083333333333334 M 21 12.75 L 21 22.666666666666668 L 25.5 22.666666666666668 L 25.5 12.75 M 0 29.75 L 28.5 29.75 L 28.5 25.5 L 0 25.5 M 12 12.75 L 12 22.666666666666668 L 16.5 22.666666666666668 L 16.5 12.75 M 3 12.75 L 3 22.666666666666668 L 7.5 22.666666666666668 L 7.5 12.75 L 3 12.75 Z"
                joinStyle: 0
                fillColor: "#727272"
                antialiasing: true
            }
        }

        Text {
            id: national_bank_of_Bulgaria
            width: 213
            height: 20
            color: "#000000"
            text: qsTr("National bank of Bulgaria")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 78
            anchors.topMargin: 18
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: recipentIBAN
            width: 327
            height: 11
            color: "#666666"
            text: qsTr("**** 2345")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 73
            anchors.topMargin: 48
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: false
                loops: 1
                duration: 200
                to: 200
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 200
        enabled: true

        KeyframeGroup {
            target: ellipse_9
            property: "fillColor"
            Keyframe {
                value: "#66cd8b"
                frame: 200
            }
        }

        KeyframeGroup {
            target: element17
            property: "fillColor"
            Keyframe {
                value: "#ffffff"
                frame: 200
            }
        }
        KeyframeGroup {
            target: rectangle_43
            property: "border.color"
            Keyframe {
                value: "#66cd8b"
                frame: 200
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"7739ba80-c1e3-5115-ab75-95ae514a0125"}D{i:1;uuid:"55675afb-51e7-58d9-93ec-6b01b97de907"}
D{i:2;uuid:"d63b7c0c-288c-5be7-a7f6-394925d22772"}D{i:3;uuid:"f1baebd2-262c-5ecf-a46f-bc3b41c8cdd0"}
D{i:5;uuid:"44cd2baf-ae92-5aef-99ab-27e505ebce33"}D{i:10;uuid:"6ea3d91d-791b-597a-bffa-6aa0b383b6e8"}
D{i:11;uuid:"8b0481a6-b92b-52bc-bfce-0772edd11df4"}D{i:13;uuid:"2e41dceb-8dbc-5fc7-95b3-c9660d208d96"}
D{i:14;uuid:"2702a97d-5034-5f24-b3dc-dedc2ab5c115"}D{i:15;uuid:"6cfdd924-33a2-5cee-8a83-5825f61fcabb"}
D{i:16;uuid:"84552a03-437e-5371-aee8-09ca747b988f"}D{i:17;uuid:"fed9feae-abbf-57d9-afa9-423ad2020376"}
D{i:18;uuid:"7b0f31ce-9be6-571d-8408-dc4394b5d207"}D{i:19;uuid:"a8ac8b21-7669-5d25-92d2-3ac13c12717a"}
D{i:20;uuid:"c2de8f0f-ef4f-57a8-b517-58c371131595"}D{i:21;uuid:"c47e4aca-c940-5f15-8a2f-6854479dc7b0"}
D{i:22;uuid:"5304fdb8-6514-51f5-ae32-3a2ad2401d89"}D{i:23;uuid:"3ecda0ae-dcb3-5cba-8758-35bb34f46a03"}
D{i:24;uuid:"9bbdec1a-6d54-5d63-9973-b005aaed51da"}D{i:25;uuid:"85013ce8-a76e-5ad3-bd12-105148abc156"}
D{i:26;uuid:"b2fdfd74-4f6d-5e3c-a67c-793068c44880"}D{i:27;uuid:"0b92fa22-6dd7-5b2b-bb8e-f045181b4531"}
D{i:28;uuid:"014c976b-2f33-5252-a9e1-5bbbe37a0fc6"}D{i:38;uuid:"b971978c-58fd-52c0-bbfc-cfbd840b1365"}
D{i:39;uuid:"4375586e-6abf-5dfe-9778-9b0fcd810e63"}D{i:40;uuid:"1c1520ab-01bd-5090-b4b7-a7236bed6886"}
D{i:41;uuid:"ba430ed0-e77c-521c-9757-f21368e1a15d"}D{i:42;uuid:"cfb16788-4cf8-5379-a3ec-d4a758377583"}
D{i:43;uuid:"04ecbb99-f99a-5982-9804-4a6dbe9112ba"}D{i:44;uuid:"2ab4dac6-0f79-5de7-aa35-8075573be2cb"}
D{i:45;uuid:"6f6df179-49c5-53d3-949c-df386cefc879"}D{i:46;uuid:"93006719-07e5-55c7-8021-42f0d49b79dc"}
D{i:47;uuid:"e3884358-6df6-59e9-bb44-c4659a3a9209"}D{i:48;uuid:"44dae79c-1aeb-568c-ac68-1aa23fa168da"}
D{i:49;uuid:"23efa6b1-4d9a-59ea-a473-85d363496825"}D{i:50;uuid:"e28d6fbf-292e-5714-834a-32f17b378e51"}
D{i:51;uuid:"c8d0bdea-15a6-55f2-a5ed-a85911c388c8"}D{i:52;uuid:"e85641fe-ac2f-5edc-bf6a-ce0821936fb2"}
D{i:53;uuid:"d2159b1b-cfa3-50b4-adaa-0a17cb77905a"}D{i:54;uuid:"9932e5ac-1153-5356-aee3-f75ecb5f0c39"}
D{i:55;uuid:"4a130233-5c6e-5d54-8728-4b6b8e621bf6"}D{i:56;uuid:"b9296b93-0a31-50f2-a166-06b82b7bc25e"}
}
##^##*/

