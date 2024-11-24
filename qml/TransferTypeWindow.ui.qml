import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Rectangle {

    property alias timelineAnimation: timelineAnimation
    property alias payingMethodFinbank: payingMethodFinbank
    property alias selectedRectangle1: selectedRectangle1
    property alias continueButton: continueButton
    property alias backButton: backButton
    property alias imageSource: image.source
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

    Item {
        id: balanceGroup
        x: 15
        y: 254
        width: 457
        height: 186
        visible: false
        Rectangle {
            id: rectangle_25
            width: 457
            height: 186
            color: "#4dffffff"
            radius: 15
            border.color: "#727272"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: my_balance
            width: 96
            height: 21
            color: "#b22f2f2f"
            text: qsTr("My balance")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 16
            anchors.topMargin: 7
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        Image {
            id: element7
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            anchors.topMargin: 32
            source: "../assets/element7.png"
        }

        Text {
            id: element8
            width: 53
            height: 29
            color: "#249226"
            text: qsTr("+6,7%")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 195
            anchors.topMargin: 43
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Hanuman"
        }

        Text {
            id: compared_to_last_month
            width: 164
            height: 21
            color: "#b22f2f2f"
            text: qsTr("Compared to last month")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 270
            anchors.topMargin: 47
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        Text {
            id: element9
            width: 174
            height: 23
            color: "#000000"
            text: qsTr("6549  7329  9821  2472")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 16
            anchors.topMargin: 80
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Hanuman"
        }

        Item {
            id: copyButton
            x: 211
            y: 82
            width: 50
            height: 18
            Rectangle {
                id: rectangle_26
                width: 50
                height: 18
                color: "#33d9d9d9"
                radius: 3
                border.color: "#727272"
                border.width: 0.3
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: copy
                width: 28
                height: 12
                color: "#249226"
                text: qsTr("Copy")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 18
                anchors.topMargin: 3
                font.pixelSize: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal
                font.family: "Gelasio"
            }

            Item {
                id: group_3
                x: 4
                y: 2
                width: 12
                height: 13
                SvgPathItem {
                    id: element10
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 2
                    anchors.topMargin: 2
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#249226"
                    path: "M 0 4.000000224393957 C 0 2.114666739519902 1.1920928955078125e-7 1.1713335376440388 0.586000124613444 0.5860001574871656 C 1.1713334719340005 1.192092962121194e-7 2.1146666208902998 0 4 0 L 6 0 C 7.8853333791097 0 8.828666845957438 1.192092962121194e-7 9.414000193277994 0.5860001574871656 C 10.000000198682148 1.1713335376440388 10 2.114666739519902 10 4.000000224393957 L 10 7.333333744722253 C 10 9.218667229596308 10.000000198682148 10.162000749363628 9.414000193277994 10.747334129520501 C 8.828666845957438 11.333334167798371 7.8853333791097 11.333333969116211 6 11.333333969116211 L 4 11.333333969116211 C 2.1146666208902998 11.333333969116211 1.1713334719340005 11.333334167798371 0.586000124613444 10.747334129520501 C 1.1920928955078125e-7 10.162000749363628 0 9.218667229596308 0 7.333333744722253 L 0 4.000000224393957 Z"
                    joinStyle: 0
                    antialiasing: true
                }

                SvgPathItem {
                    id: element11
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 2
                    anchors.bottomMargin: 2
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#249226"
                    path: "M 2 11.333333969116211 C 1.4695670207341514 11.33333396911621 0.9608592589696248 11.122620531023431 0.585786501566569 10.74754775257936 C 0.21071374416351318 10.372474974135288 5.921189464667501e-16 9.86376686594157 0 9.333333856919232 L 0 5.333333632525275 C 0 2.819333552528833 -7.947285973752827e-8 1.5620000443926019 0.7813332875569661 0.7813333313885831 C 1.562666654586792 0.000666618384564277 2.8193333943684893 0 5.333333333333333 0 L 8 0 C 8.530432979265848 2.960594898418642e-16 9.039141058921814 0.21071375598423592 9.41421381632487 0.5857865344283067 C 9.789286573727924 0.9608593128723776 9.999999999999998 1.469567103174641 10 2.0000001121969784"
                    joinStyle: 0
                    antialiasing: true
                }
            }
        }

        Item {
            id: sendMoneyButton
            x: 16
            y: 118
            width: 200
            height: 37
            Rectangle {
                id: rectangle_27
                width: 200
                height: 37
                color: "#367c21"
                radius: 8
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: send_money
                width: 125
                height: 28
                color: "#ececec"
                text: qsTr("Send money")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 38
                anchors.topMargin: 7
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }
        }

        Item {
            id: requestMoneyButton
            x: 241
            y: 118
            width: 200
            height: 37
            Rectangle {
                id: rectangle_28
                width: 200
                height: 37
                color: "#33d9d9d9"
                radius: 8
                border.color: "#727272"
                border.width: 0.3
                anchors.left: parent.left
                anchors.top: parent.top
            }

            Text {
                id: request_money
                width: 156
                height: 28
                color: "#367c21"
                text: qsTr("Request money")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 22
                anchors.topMargin: 5
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }
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
        id: choose_your_transfer_type
        width: 467
        height: 44
        color: "#000000"
        text: qsTr("Choose your transfer type")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 406
        anchors.topMargin: 134
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
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
        id: line_8_Stroke_
        width: 30
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 26
        anchors.topMargin: 361
        strokeWidth: 1.5
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 30 1.5 L 0 1.5 L 0 0 L 30 0 L 30 1.5 Z"
        joinStyle: 0
        fillColor: "#4c85f7"
        antialiasing: true
    }

    Button {
        id: payingMethodFinbank
        x: 293
        y: 278
        width: 802
        height: 85
        background: Text {
            id: finbank_transfer_type
            width: 192
            height: 20
            color: "#534b4b"
            text: qsTr("Finbank+ transfer type")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 55
            anchors.topMargin: 10
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Item {
            id: group_39
            x: 0
            y: 0
            width: 45
            height: 45
            ArcItem {
                id: ellipse_8
                width: 45
                height: 45
                anchors.left: parent.left
                anchors.top: parent.top
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#d9d9d9"
                end: 450.00001
                begin: 90
                arcWidth: 22.5
                antialiasing: true
            }

            SvgPathItem {
                id: element18
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 13
                anchors.rightMargin: 12
                anchors.topMargin: 13
                anchors.bottomMargin: 14
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 17 4 L 16 4 L 16 3 C 15.999999999999996 2.204350531101227 15.683929860591888 1.4412888884544373 15.121320724487305 0.8786797523498535 C 14.558711588382721 0.3160706162452698 13.795649468898773 4.440892098500626e-16 13 0 L 3 0 C 2.204350531101227 8.881784197001252e-16 1.4412888884544373 0.3160706162452698 0.8786797523498535 0.8786797523498535 C 0.3160706162452698 1.4412888884544373 8.881784197001252e-16 2.204350531101227 0 3 L 0 15 C 8.881784197001252e-16 15.795649468898773 0.3160706162452698 16.55871158838272 0.8786797523498535 17.121320724487305 C 1.4412888884544373 17.68392986059189 2.204350531101227 17.999999999999996 3 18 L 17 18 C 17.795649468898773 17.999999999999996 18.55871158838272 17.68392986059189 19.121320724487305 17.121320724487305 C 19.68392986059189 16.55871158838272 19.999999999999996 15.795649468898773 20 15 L 20 7 C 19.999999999999996 6.204350531101227 19.68392986059189 5.441288888454437 19.121320724487305 4.8786797523498535 C 18.55871158838272 4.31607061624527 17.795649468898773 4 17 4 Z M 3 2 L 13 2 C 13.265216499567032 2 13.519570216536522 2.1053570359945297 13.707106590270996 2.292893409729004 C 13.89464296400547 2.480429783463478 14 2.734783500432968 14 3 L 14 4 L 3 4 C 2.734783500432968 4 2.480429783463478 3.8946429640054703 2.292893409729004 3.707106590270996 C 2.1053570359945297 3.519570216536522 2 3.265216499567032 2 3 C 2 2.734783500432968 2.1053570359945297 2.480429783463478 2.292893409729004 2.292893409729004 C 2.480429783463478 2.1053570359945297 2.734783500432968 1.9999999999999991 3 2 Z M 18 12 L 17 12 C 16.734783500432968 12 16.48042882978916 11.89464296400547 16.292892456054688 11.707106590270996 C 16.105356082320213 11.519570216536522 16 11.265216499567032 16 11 C 16 10.734783500432968 16.105356082320213 10.480429783463478 16.292892456054688 10.292893409729004 C 16.48042882978916 10.10535703599453 16.734783500432968 10 17 10 L 18 10 L 18 12 Z M 18 8 L 17 8 C 16.204350531101227 8.000000016767059 15.441288411617279 8.316070139408112 14.878679275512695 8.878679275512695 C 14.316070139408112 9.441288411617279 14.000000000000007 10.204350531101227 14 11 C 14.000000000000007 11.795649468898773 14.316070139408112 12.558711588382721 14.878679275512695 13.121320724487305 C 15.441288411617279 13.683929860591888 16.204350531101227 13.999999983232943 17 14 L 18 14 L 18 15 C 18 15.265216499567032 17.894643917679787 15.519571170210838 17.707107543945312 15.707107543945312 C 17.51957117021084 15.894643917679787 17.265216499567032 16 17 16 L 3 16 C 2.734783500432968 16 2.480429783463478 15.894643917679787 2.292893409729004 15.707107543945312 C 2.1053570359945297 15.519571170210838 2 15.265216499567032 2 15 L 2 5.829999923706055 C 2.3212675750255585 5.943016931414604 2.6594336330890656 6.000505237665493 3 6 L 17 6 C 17.265216499567032 6 17.51957117021084 6.10535703599453 17.707107543945312 6.292893409729004 C 17.894643917679787 6.480429783463478 18 6.734783500432968 18 7 L 18 8 Z"
                joinStyle: 0
                fillColor: "#69000000"
                antialiasing: true
            }
        }

        Text {
            id: use_money_in_your_Finbak_account_to_pay_for_your_transfer_instan
            width: 358
            height: 37
            color: "#666666"
            text: qsTr("Use money in your Finbak+ account to pay for your transfer instantly.Should arrive in seconds")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 66
            anchors.topMargin: 40
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Button {
        id: group_49
        x: 273
        y: 440
        width: 401
        height: 85
        background: Text {
            id: debit_card
            width: 142
            height: 20
            color: "#534b4b"
            text: qsTr("Debit card")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 48
            anchors.topMargin: 10
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: send_from_your_Visa_or_Mastercafd_Should_arrive_in_seconds
            width: 358
            height: 40
            color: "#666666"
            text: qsTr("Send from your Visa or Mastercafd. \nShould arrive in seconds")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 44
            anchors.topMargin: 45
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_41
            x: 0
            y: 0
            width: 45
            height: 45
            Item {
                id: group_40
                x: 0
                y: 0
                width: 45
                height: 45
                ArcItem {
                    id: ellipse_9
                    width: 45
                    height: 45
                    anchors.left: parent.left
                    anchors.top: parent.top
                    strokeWidth: 0
                    strokeStyle: 0
                    strokeColor: "transparent"
                    outlineArc: true
                    fillColor: "#d9d9d9"
                    end: 450.00001
                    begin: 90
                    arcWidth: 22.5
                    antialiasing: true
                }
            }

            Item {
                id: group
                x: 13
                y: 13
                width: 20
                height: 20
                SvgPathItem {
                    id: element19
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#727272"
                    path: "M 0 0 L 0 20 L 20 20 L 20 0 L 0 0 Z M 2.142857142857143 12.222222222222223 L 5 12.222222222222223 M 2.142857142857143 15.555555555555557 L 6.428571428571429 15.555555555555557"
                    joinStyle: 2
                    antialiasing: true
                }

                SvgPathItem {
                    id: element20
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 4
                    anchors.bottomMargin: 13
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#727272"
                    path: "M 0 0 L 0 2.222222089767456 L 20 2.222222089767456 L 20 0 L 0 0 Z"
                    joinStyle: 2
                    fillColor: "#000000"
                    antialiasing: true
                }
            }
        }
    }

    Button {
        id: group_51
        x: 322
        y: 602
        width: 412
        height: 75
        background: Text {
            id: transfer_the_money_from_your_bank_account
            width: 389
            height: 20
            color: "#534b4b"
            text: qsTr("Transfer the money from your bank account")
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
            id: transfer_the_money_using_you_bank_account_balance_Should_arrive_
            width: 394
            height: 40
            color: "#666666"
            text: qsTr("Transfer the money using you bank account balance.\nShould arrive in seconds")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 19
            anchors.topMargin: 35
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    SvgPathItem {
        id: line_10_Stroke_
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 410
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
        anchors.topMargin: 401
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Item {
        id: group_46
        x: 286
        y: 215
        width: 819
        height: 46
        Text {
            id: finbank_transfer_type1
            width: 192
            height: 20
            color: "#000000"
            text: qsTr("Finbank+ transfer type")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: total_Fee_0_USD
            width: 136
            height: 20
            color: "#666666"
            text: qsTr("Total Fee: $0 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 671
            anchors.topMargin: 20
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: line_12_Stroke_
            width: 819
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 45
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 819.0054931640625 1 L 0 1 L 0 0 L 819.0054931640625 0 L 819.0054931640625 1 Z"
            joinStyle: 0
            fillColor: "#b2b2b2"
            antialiasing: true
        }
    }

    Item {
        id: group_48
        x: 263
        y: 376
        width: 822
        height: 31
        Text {
            id: fast_and_easy_transfer
            width: 183
            height: 20
            color: "#000000"
            text: qsTr("Fast and easy transfer")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: total_Fee_0_USD1
            width: 136
            height: 20
            color: "#666666"
            text: qsTr("Total Fee: $0 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 674
            anchors.topMargin: 5
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: line_13_Stroke_
            width: 819
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 3
            anchors.topMargin: 30
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 819.0054931640625 1 L 0 1 L 0 0 L 819.0054931640625 0 L 819.0054931640625 1 Z"
            joinStyle: 0
            fillColor: "#b2b2b2"
            antialiasing: true
        }
    }

    Item {
        id: group_50
        x: 258
        y: 535
        width: 819
        height: 31
        Text {
            id: low_cost_transfer
            width: 145
            height: 20
            color: "#000000"
            text: qsTr("Low cost transfer")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 16
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: total_Fee_0_USD2
            width: 136
            height: 20
            color: "#666666"
            text: qsTr("Total Fee: $0 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 671
            anchors.topMargin: 5
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: line_14_Stroke_
            width: 819
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 30
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 819.0054931640625 1 L 0 1 L 0 0 L 819.0054931640625 0 L 819.0054931640625 1 Z"
            joinStyle: 0
            fillColor: "#b2b2b2"
            antialiasing: true
        }
    }

    Item {
        id: group_65
        x: 274
        y: 592
        width: 45
        height: 45
        ArcItem {
            id: ellipse_10
            width: 45
            height: 45
            anchors.left: parent.left
            anchors.top: parent.top
            strokeWidth: 0
            strokeStyle: 0
            strokeColor: "transparent"
            outlineArc: true
            fillColor: "#d9d9d9"
            end: 450.00001
            begin: 90
            arcWidth: 22.5
            antialiasing: true
        }

        SvgPathItem {
            id: element21
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 8
            anchors.rightMargin: 9
            anchors.topMargin: 5
            anchors.bottomMargin: 10
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 14.25 0 L 0 7.0833330154418945 L 0 9.916666030883789 L 28.5 9.916666030883789 L 28.5 7.0833330154418945 M 21 12.75 L 21 22.66666603088379 L 25.5 22.66666603088379 L 25.5 12.75 M 0 29.75 L 28.5 29.75 L 28.5 25.5 L 0 25.5 M 12 12.75 L 12 22.66666603088379 L 16.5 22.66666603088379 L 16.5 12.75 M 3 12.75 L 3 22.66666603088379 L 7.5 22.66666603088379 L 7.5 12.75 L 3 12.75 Z"
            joinStyle: 0
            fillColor: "#727272"
            antialiasing: true
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: false
                loops: 1
                duration: 1000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true

        KeyframeGroup {
            target: ellipse_8
            property: "fillColor"
            Keyframe {
                value: "#baa6c9"
                frame: 200
            }
        }

        KeyframeGroup {
            target: element18
            property: "fillColor"
            Keyframe {
                value: "#ffffff"
                frame: 200
            }
        }

        KeyframeGroup {
            target: selectedRectangle1
            property: "strokeColor"
            Keyframe {
                value: "#4fa16a"
                frame: 206
            }

            Keyframe {
                value: "#fdfff7"
                frame: 0
            }
        }
    }

    RectangleItem {
        id: selectedRectangle1
        x: 286
        y: 273
        width: 822
        height: 90
        visible: true
        strokeColor: "#ffffff"
        strokeWidth: 1
        fillColor: "#00ffffff"
        adjustBorderRadius: true
    }
}

/*##^##
Designer {
    D{i:0;uuid:"2f0f278b-419e-59b1-95d2-c916c73c4afa"}D{i:1;uuid:"764b2d79-f974-5752-8b4e-156063baf4f8"}
D{i:2;uuid:"014ad2a1-72bb-5a50-91a6-6eccea11f034"}D{i:3;uuid:"8451e625-274f-5312-9225-06566d23c1a7"}
D{i:4;uuid:"911cddec-5a24-5ba9-81d7-89d7d6a6cc6d"}D{i:5;uuid:"112191ac-e5c7-509f-8e8d-8e3267d9f5f1"}
D{i:6;uuid:"99e56a30-49b6-5c0c-8db8-731e15330b50"}D{i:7;uuid:"99ae6dc3-ae8b-52a2-a7c2-771853ed07f2"}
D{i:8;uuid:"e09954d9-21a1-59f9-a2a0-39aa10b88313"}D{i:9;uuid:"4147ef39-0da3-5a85-9d32-33c0c1ec08e2"}
D{i:10;uuid:"9d53fab0-2c92-562c-8863-4e0301d79f04"}D{i:11;uuid:"eb9f532f-0101-5ea5-ae6a-81a11b2994cd"}
D{i:12;uuid:"90fc9640-2b65-5028-b808-0b3e5bf1be67"}D{i:13;uuid:"c0dea8fc-190a-5709-84d2-73c438e12fd2"}
D{i:14;uuid:"b977e2a8-5386-581c-9893-42e12ce54b2c"}D{i:15;uuid:"76725ffc-e634-58cd-aaa0-7056ab48ab32"}
D{i:16;uuid:"ad3c71b2-4cc5-5ad0-9c3d-ef5a05e55352"}D{i:17;uuid:"6d189800-011d-5138-8397-e8b51c3c4814"}
D{i:18;uuid:"48ba34d8-019d-5f4f-8280-ac914a10df94"}D{i:19;uuid:"61133881-8274-506c-abde-d45dea6eef3c"}
D{i:20;uuid:"56dc572c-9f42-5f06-9eb1-4370eacb67c7"}D{i:21;uuid:"562bc585-4a32-515e-ac13-ffe92d6c5232"}
D{i:22;uuid:"bf8f9fa5-df12-5ea0-8d72-8622318d89ed"}D{i:23;uuid:"f717f4da-58d8-52aa-967b-d89344cb53b2"}
D{i:24;uuid:"e8bb77ac-dc72-5e3c-aed2-d5675c2e36af"}D{i:25;uuid:"4198467e-02b8-515b-9b9e-ab1a04cb4e56"}
D{i:26;uuid:"b0347cf5-ef85-5e06-9193-2b92d0206281"}D{i:27;uuid:"f94c1f9e-8510-5164-a4ae-4acf15fe83e7"}
D{i:28;uuid:"f7dd6452-db7d-563b-ad54-bbadc270a3ed"}D{i:29;uuid:"838379a5-ec78-5af1-ad9c-29b0b8afea62"}
D{i:30;uuid:"39c63616-125f-56d3-af60-16d68985ff8c"}D{i:31;uuid:"b36cac92-48f4-5ace-9081-2f5aa5356362"}
D{i:32;uuid:"1d2cd790-3ad4-5e3b-bab9-a8831cb24f0d"}D{i:33;uuid:"6fe14bc9-df48-5832-938a-3da4986c21c7"}
D{i:34;uuid:"bbc01860-565d-5a8a-81d1-e31b5bfde152"}D{i:35;uuid:"844cec59-a4df-5f40-be4a-f0f9c089434f"}
D{i:36;uuid:"d1bae4ee-2512-5d9c-bae5-7be03381e62a"}D{i:37;uuid:"bd46da16-8109-5a39-b0a5-957b7b5b981c"}
D{i:38;uuid:"e4b58764-498c-518c-8714-0ed251d3dbb5"}D{i:39;uuid:"a7608fbb-294b-559b-b581-2b9b69e87b03"}
D{i:40;uuid:"b8c50983-9674-5da5-9b2b-c847dbce2160"}D{i:41;uuid:"1ec6abaa-6165-57d3-a53e-e72972b2b738"}
D{i:42;uuid:"fa4786a1-8b37-54b1-a599-0399e6cdced9"}D{i:43;uuid:"976f0a61-5707-5256-9827-52076d4da23a"}
D{i:44;uuid:"806e50a1-430e-5e26-9dd1-6feb20d33103"}D{i:45;uuid:"931b5075-75b6-5851-a85e-f062de478e57"}
D{i:46;uuid:"6ac6d771-c716-5d96-97fb-6119fb460f74"}D{i:47;uuid:"9754ae2a-3f69-594c-acf6-ca98320a4cd0"}
D{i:57;uuid:"8f15050c-8c6f-5fbe-987e-e795461c20b5"}D{i:58;uuid:"87bc1934-3385-5a53-ad44-e796fb06bc65"}
D{i:59;uuid:"68692ed9-1f92-582f-a9f4-c7180bf57778"}D{i:60;uuid:"db47ec7d-e56e-5790-ae2a-d0f906a78f2f"}
D{i:61;uuid:"19f108f5-3678-5062-9eed-0399dda2f673"}D{i:62;uuid:"7d3c7e1e-a0dc-5319-b094-c580c77eb007"}
D{i:63;uuid:"814a270f-43cc-52ee-ad2d-2463ac20ba59"}D{i:64;uuid:"116b9042-7a62-5812-a810-ce07337c7900"}
D{i:65;uuid:"54142ef4-9f0e-53c5-b146-615b59fc3761"}D{i:66;uuid:"340a7479-b997-5072-9f75-8b1b21e2614a"}
D{i:67;uuid:"f6dcbb60-7ecf-5ebe-ba62-7562f8150ced"}D{i:68;uuid:"bf90c58b-07fc-5fff-b1ee-20178de0c3dc"}
D{i:93;uuid:"d478803a-bf0b-544b-b58f-839873387a42"}D{i:94;uuid:"62b5b29f-a3ea-535c-a58a-297dc09a4af6"}
D{i:95;uuid:"11eaa579-1f24-5ef0-8626-bfb8838f766f"}D{i:96;uuid:"34e86bf5-4aa3-5ae6-9ec1-035c4cfd6ef3"}
D{i:97;uuid:"a1b657cf-8424-5fde-99e4-17edcff47c44"}D{i:98;uuid:"d0394e1d-bcb9-5e69-9bc0-6fc93952cc96"}
D{i:99;uuid:"15ca791e-90c9-5548-a57d-6157077b9e62"}D{i:100;uuid:"2e87e0cb-b943-5b2f-801a-056f2edddb92"}
D{i:101;uuid:"c4964bba-0f21-5c67-b92c-06750cc994b7"}
}
##^##*/

