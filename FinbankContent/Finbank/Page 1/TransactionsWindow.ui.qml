import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Rectangle {
    id: transactions
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

    SvgPathItem {
        id: line_4_Stroke_
        width: 1000
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 136
        anchors.topMargin: 393
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        rotation: 0.301
        path: "M 1000 1 L 0 1 L 0 0 L 1000 0 L 1000 1 Z"
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
            source: "../assets/logo1_6.png"
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
            id: transactions1
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
        }
    }

    Item {
        id: searchbar1
        x: 144
        y: 452
        width: 387
        height: 52
        Rectangle {
            id: rectangle_24
            width: 387
            height: 52
            color: "#4dffffff"
            radius: 10
            border.color: "#b2727272"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        SvgPathItem {
            id: element4
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
            id: search1
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
        }
    }

    Item {
        id: chatButton
        x: 977
        y: 25
        width: 87
        height: 48
        Rectangle {
            id: rectangle_25
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
                id: element5
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
                id: element6
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
            anchors.left: parent.left
            anchors.top: parent.top
            source: "../assets/image_1.png"
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
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
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
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }

        SvgPathItem {
            id: element7
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
            id: rectangle_26
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
        }

        Image {
            id: element8
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            anchors.topMargin: 32
            source: "../assets/element8_1.png"
        }

        Text {
            id: element9
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
        }

        Text {
            id: element10
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
                id: rectangle_27
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
            }

            Item {
                id: group_3
                x: 4
                y: 2
                width: 12
                height: 13
                SvgPathItem {
                    id: element11
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
                    id: element12
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
                id: rectangle_28
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
            }
        }

        Item {
            id: requestMoneyButton
            x: 241
            y: 118
            width: 200
            height: 37
            Rectangle {
                id: rectangle_29
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
            }
        }
    }

    Text {
        id: overview
        width: 76
        height: 23
        color: "#802f2f2f"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 801
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Text {
        id: wallet
        width: 53
        height: 23
        color: "#802f2f2f"
        text: qsTr("Wallet")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 913
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Text {
        id: transaction
        width: 97
        height: 23
        color: "#367c21"
        text: qsTr("Transaction")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 992
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Text {
        id: trading
        width: 65
        height: 23
        color: "#802f2f2f"
        text: qsTr("Trading")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1109
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Text {
        id: settings
        width: 66
        height: 23
        color: "#802f2f2f"
        text: qsTr("Settings")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1194
        anchors.topMargin: 147
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Item {
        id: backButton
        x: 28
        y: 134
        width: 212
        height: 48
        Text {
            id: back_to_dashboard
            width: 149
            height: 23
            color: "#802f2f2f"
            text: qsTr("Back to dashboard")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 64
            anchors.topMargin: 13
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }

        ArcItem {
            id: ellipse_5
            width: 48
            height: 48
            anchors.left: parent.left
            anchors.top: parent.top
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#d4d4d4"
            outlineArc: true
            fillColor: "#00eeeeee"
            end: 450.00001
            begin: 90
            arcWidth: 24
            antialiasing: true
        }

        SvgPathItem {
            id: element13
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 18
            anchors.rightMargin: 182
            anchors.topMargin: 15
            anchors.bottomMargin: 15
            strokeWidth: 0.66667
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 0.45813079039234383 9.972448668734705 C 0.16478995337685903 9.718918676129011 0 9.375104449147791 0 9.016613015025492 C 0 8.658121580903192 0.16478995337685903 8.314307353921974 0.45813079039234383 8.06077736131628 L 9.30978489064531 0.4127378115173113 C 9.454125912480807 0.28361181052280826 9.62678500147514 0.1806163049027985 9.81768781925753 0.10976141506385657 C 10.008590637039921 0.03890652522491464 10.213914265586824 0.0016109590654152777 10.421677506642794 0.000051045129374248195 C 10.629440747698764 -0.0015088688066667811 10.835482597851238 0.03269839195856439 11.027781696632172 0.10067615232601193 C 11.220080795413105 0.16865391269345947 11.394786478480826 0.2690411846244408 11.54170282496379 0.39598039154941705 C 11.688619171446755 0.5229195984743933 11.80480495504164 0.6738681215058714 11.883480759288489 0.8400191024960638 C 11.962156563535338 1.0061700834862561 12.001746462958918 1.1841958527666978 11.999941056561141 1.3637082193559784 C 11.998135650163364 1.543220585945259 11.954970675172843 1.7206244248156313 11.872964951348347 1.8855689859155758 C 11.790959227523851 2.0505135470155205 11.671755483900453 2.1996957385267017 11.52230819522092 2.3244098038922147 L 3.7769135088973194 9.016613015025492 L 11.52230819522092 15.708818321319765 C 11.807335652417754 15.963800965597027 11.96505116028574 16.305307110847483 11.96148605860209 16.65978675487211 C 11.95792095691844 17.014266398896734 11.793360717990776 17.353355312586917 11.503247827004738 17.604019729325255 C 11.213134936018701 17.854684146063594 10.820681685844528 17.996869383748596 10.410415579223432 17.99994971613613 C 10.000149472602336 18.003030048523662 9.604895593014207 17.866760110100888 9.30978489064531 17.620489628738188 L 0.45813079039234383 9.972448668734705 Z"
            joinStyle: 0
            fillColor: "#666666"
            antialiasing: true
        }
    }

    Text {
        id: total_balances
        width: 116
        height: 23
        color: "#802f2f2f"
        text: qsTr("Total balances")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 132
        anchors.topMargin: 230
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Image {
        id: image_2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 144
        anchors.topMargin: 287
        source: "../assets/image_2.png"
    }

    Text {
        id: uSD
        width: 188
        height: 48
        color: "#000000"
        text: qsTr("1000.00 USD")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 200
        anchors.topMargin: 291
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Text {
        id: transactions2
        width: 188
        height: 48
        color: "#000000"
        text: qsTr("Transactions")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 126
        anchors.topMargin: 407
        font.pixelSize: 22
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Text {
        id: today_22_October
        width: 219
        height: 48
        color: "#802f2f2f"
        text: qsTr("Today, 22 October")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 126
        anchors.topMargin: 526
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Text {
        id: uSD_1_78_BGN_as_of_today
        width: 258
        height: 46
        color: "#802f2f2f"
        text: qsTr("1 USD = 1.78 BGN, as of today")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 194
        anchors.topMargin: 332
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Medium
    }

    Text {
        id: goals_1000_2000_USD
        width: 168
        height: 20
        color: "#000000"
        text: qsTr("Goals 1000/2000 USD")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 315
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
    }

    Rectangle {
        id: rectangle_30
        x: 1348
        y: 686
        width: 300
        height: 6
        color: "#5c615c"
        radius: 10
        border.color: "#b2727272"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 343
    }

    Rectangle {
        id: rectangle_32
        width: 10
        height: 6
        visible: true
        color: "#0d7b0e"
        radius: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 343
    }

    Item {
        id: sendButton
        x: 666
        y: 237
        width: 104
        height: 36
        Rectangle {
            id: rectangle_34
            width: 104
            height: 36
            color: "#1c1f31"
            radius: 15
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: send
            width: 57
            height: 20
            color: "#ffffff"
            text: qsTr("Send")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 31
            anchors.topMargin: 8
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }

        Item {
            id: group_6
            x: 21
            y: 8
            width: 10
            height: 20
            SvgPathItem {
                id: element14
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                anchors.topMargin: 2
                anchors.bottomMargin: 0
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 0.6318917274475098 18.165313720703125 C 0.278032358570357 18.165313720703125 0 17.76567682101313 0 17.257048034667967 L 0 0.9082656860351562 C 0 0.3996368996899946 0.278032358570357 0 0.6318917274475098 0 C 0.9857510963246625 0 1.2637834548950195 0.3996368996899946 1.2637834548950195 0.9082656860351562 L 1.2637834548950195 17.257048034667967 C 1.2637834548950195 17.76567682101313 0.9857510963246625 18.165313720703125 0.6318917274475098 18.165313720703125 Z"
                joinStyle: 0
                fillColor: "#ffffff"
                antialiasing: true
            }

            SvgPathItem {
                id: element15
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 12
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 9.491014005736496 8.19255617936904 C 9.40814037502657 8.19400835428474 9.325972637041556 8.170515786913 9.249794092998313 8.123588425286588 C 9.17361554895507 8.076661063660175 9.105112552543984 8.007337488334318 9.048689918435006 7.920076295606017 L 5.067771927483771 2.198002417888636 L 1.0868537858778085 7.920076295606017 C 0.8340970919255702 8.28338258171982 0.44232421912437714 8.28338258171982 0.1895675251721389 7.920076295606017 C -0.06318916878009931 7.5567700094922134 -0.06318916878009931 6.993645649034062 0.1895675251721389 6.6303393629202585 L 4.612809415106455 0.2724797213524597 C 4.865566109058694 -0.09082656476134415 5.257339320833023 -0.09082656476134415 5.510096014785262 0.2724797213524597 L 9.933338695656897 6.6303393629202585 C 10.186095389609134 6.993645649034062 10.186095389609134 7.5567700094922134 9.933338695656897 7.920076295606017 C 9.806960348680777 8.101729438662918 9.642668016458286 8.19255617936904 9.491014005736496 8.19255617936904 Z"
                joinStyle: 0
                fillColor: "#ffffff"
                antialiasing: true
            }
        }
    }

    Item {
        id: sendButton1
        x: 789
        y: 237
        width: 114
        height: 36
        Rectangle {
            id: rectangle_35
            width: 114
            height: 36
            color: "#1c1f31"
            radius: 15
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_7
            x: 20
            y: 9
            width: 10
            height: 20
            SvgPathItem {
                id: element16
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                anchors.bottomMargin: 2
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 0.6102063655853271 18.181777954101562 C 0.2684907994026986 18.181777954101562 0 17.781778841278765 0 17.272689056396484 L 0 0.9090888977050782 C 0 0.39999911282279754 0.2684907994026986 0 0.6102063655853271 0 C 0.9519219317679557 0 1.2204127311706543 0.39999911282279754 1.2204127311706543 0.9090888977050782 L 1.2204127311706543 17.272689056396484 C 1.2204127311706543 17.781778841278765 0.9519219317679557 18.181777954101562 0.6102063655853271 18.181777954101562 Z"
                joinStyle: 0
                fillColor: "#ffffff"
                antialiasing: true
            }

            SvgPathItem {
                id: element17
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 12
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 4.881650793696093 8.199981342802985 C 4.801621235460843 8.201434833869085 4.722273344994365 8.17792097446731 4.648709110212322 8.130951081142369 C 4.575144875430279 8.083981187817427 4.508992777427488 8.014595649396494 4.45450646563531 7.9272553691888685 L 0.18306191203783004 1.5636329179209192 C -0.061020631284087884 1.1999973562437976 -0.061020631284087884 0.6363622397082029 0.18306191203783004 0.2727266780310813 C 0.427144455359748 -0.09090888364604033 0.8054723947808858 -0.09090888364604033 1.0495549381028038 0.2727266780310813 L 4.893855200010632 5.999986158080903 L 8.738154734495808 0.2727266780310813 C 8.982237277817726 -0.09090888364604033 9.360565253609996 -0.09090888364604033 9.604647796931914 0.2727266780310813 C 9.848730340253832 0.6363622397082029 9.848730340253832 1.1999973562437976 9.604647796931914 1.5636329179209192 L 5.333203352447833 7.9272553691888685 C 5.211162080786874 8.10907315002743 5.05250854492453 8.199981342802985 4.906059024387049 8.199981342802985 L 4.881650793696093 8.199981342802985 Z"
                joinStyle: 0
                fillColor: "#ffffff"
                antialiasing: true
            }
        }

        Text {
            id: request
            width: 78
            height: 20
            color: "#ffffff"
            text: qsTr("Request")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 30
            anchors.topMargin: 8
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Item {
        id: sendButton2
        x: 922
        y: 237
        width: 130
        height: 36
        Rectangle {
            id: rectangle_36
            width: 130
            height: 36
            color: "#1c1f31"
            radius: 15
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group
            x: 28
            y: 9
            width: 12
            height: 18
            SvgPathItem {
                id: element18
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.topMargin: 3
                anchors.bottomMargin: 3
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "#ffffff"
                path: "M 8.230824841925857e-8 5.294000148773193 L 8.230824841925857e-8 7.4120001792907715 C -0.000091474367466955 7.968232452869415 0.07620105520632198 8.519042074680328 0.22452024801758813 9.032971382141113 C 0.3728394408288543 9.546900689601898 0.5902797121155328 10.013882637023926 0.8644227034148816 10.407244682312012 C 1.1385656947142304 10.800606727600098 1.4640406986691366 11.112642660737038 1.8222593173528578 11.325533866882324 C 2.180477936036579 11.53842507302761 2.5644227249367773 11.647999778995473 2.952165234662094 11.64799976348877 L 11.808659609059676 11.64799976348877 M 8.230824841925857e-8 1.1810238476073209e-7 L 8.856496036383456 1.1810238476073209e-7 C 9.244297214210183 -0.00013125901846677834 9.628316750925139 0.10934656858444214 9.986615851274887 0.3221789598464966 C 10.344914951624636 0.535011351108551 10.670471372112624 0.8470276892185211 10.944688217909322 1.2404028177261353 C 11.21890506370602 1.6337779462337494 11.43640738939033 2.1008026003837585 11.584770167781185 2.6147971153259277 C 11.73313294617204 3.128791630268097 11.809449224463116 3.6796831488609314 11.809357643127441 4.235999584197998 L 11.809357643127441 6.353000164031982"
                joinStyle: 2
                antialiasing: true
            }

            SvgPathItem {
                id: element19
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "#ffffff"
                path: "M 9.595408353865496 11.647000312805176 L 11.81005573272705 14.822999954223633 L 9.595408353865496 18 M 2.214646547868612 6.352999687194824 L 0 3.1760001182556152 L 2.214646547868612 0"
                joinStyle: 2
                antialiasing: true
            }
        }

        Text {
            id: convert
            width: 67
            height: 20
            color: "#ffffff"
            text: qsTr("Convert")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 51
            anchors.topMargin: 8
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
        }
    }

    Item {
        id: sendButton3
        x: 1071
        y: 234
        width: 40
        height: 45
        Rectangle {
            id: rectangle_37
            width: 40
            height: 40
            color: "#1c1f31"
            radius: 100
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element20
            width: 40
            height: 40
            color: "#ffffff"
            text: qsTr("...")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1
            anchors.topMargin: 5
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }
    }

    Item {
        id: group_10
        x: 147
        y: 580
        width: 1000
        height: 45
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
            rotation: 0.301
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
                id: ellipse_6
                anchors.left: parent.left
                anchors.top: parent.top
                source: "../assets/ellipse_6.png"
            }

            Item {
                id: group_9
                x: 7
                y: 5
                width: 16
                height: 21
                SvgPathItem {
                    id: element21
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 7
                    anchors.rightMargin: 7
                    anchors.topMargin: 2
                    anchors.bottomMargin: 0
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 1.0112359523773193 19.073577880859375 C 0.4449438166350461 19.073577880859375 0 18.653959169754216 0 18.119898986816406 L 0 0.9536788940429688 C 0 0.4196187111051586 0.4449438166350461 0 1.0112359523773193 0 C 1.5775280881195926 0 2.0224719047546387 0.4196187111051586 2.0224719047546387 0.9536788940429688 L 2.0224719047546387 18.119898986816406 C 2.0224719047546387 18.653959169754216 1.5775280881195926 19.073577880859375 1.0112359523773193 19.073577880859375 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element22
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 12
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 15.188764789154662 8.602183749920778 C 15.056139541387088 8.603708533540003 14.924643955693403 8.579041338483346 14.802733063268871 8.529767610141276 C 14.680822170844339 8.480493881799205 14.571194695928442 8.407704129724484 14.480899800383263 8.316079879899211 L 8.11011297266112 2.307902474817621 L 1.7393259038415347 8.316079879899211 C 1.334831508300182 8.697551469745902 0.7078651997316624 8.697551469745902 0.30337080419030965 8.316079879899211 C -0.1011235913510431 7.934608290052521 -0.1011235913510431 7.3433277279592994 0.30337080419030965 6.961856138112609 L 7.382022319312045 0.2861036994904795 C 7.7865167148533985 -0.09536789035621052 8.413483565891168 -0.09536789035621052 8.81797796143252 0.2861036994904795 L 15.896630742315837 6.961856138112609 C 16.30112513785719 7.3433277279592994 16.30112513785719 7.934608290052521 15.896630742315837 8.316079879899211 C 15.694383544545161 8.506815674822557 15.43146141743832 8.602183749920778 15.188764789154662 8.602183749920778 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
                    antialiasing: true
                }
            }
        }

        Item {
            id: group_11
            x: 47
            y: 3
            width: 346
            height: 25
            Text {
                id: sending_money_to
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
            }

            Text {
                id: todor_Atanasov
                width: 186
                height: 22
                color: "#000000"
                text: qsTr("Todor Atanasov")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 161
                anchors.topMargin: 1
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
            }
        }

        Text {
            id: sent
            width: 43
            height: 23
            color: "#802f2f2f"
            text: qsTr("Sent")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 398
            anchors.topMargin: 5
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
        }
    }

    Item {
        id: group_12
        x: 144
        y: 714
        width: 1000
        height: 45
        SvgPathItem {
            id: line_5_Stroke_1
            width: 1000
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 42
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            rotation: 0.301
            path: "M 1000 1 L 0 1 L 0 0 L 1000 0 L 1000 1 Z"
            joinStyle: 0
            fillColor: "#aba4a4"
            antialiasing: true
        }

        Item {
            id: group_13
            x: 0
            y: 0
            width: 30
            height: 30
            Image {
                id: ellipse_7
                anchors.left: parent.left
                anchors.top: parent.top
                source: "../assets/ellipse_7.png"
            }

            Item {
                id: group_14
                x: 7
                y: 5
                width: 16
                height: 21
                SvgPathItem {
                    id: element23
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 7
                    anchors.rightMargin: 7
                    anchors.topMargin: 2
                    anchors.bottomMargin: 0
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 1.0112359523773193 19.073577880859375 C 0.4449438166350461 19.073577880859375 0 18.653959169754216 0 18.119898986816406 L 0 0.9536788940429688 C 0 0.4196187111051586 0.4449438166350461 0 1.0112359523773193 0 C 1.5775280881195926 0 2.0224719047546387 0.4196187111051586 2.0224719047546387 0.9536788940429688 L 2.0224719047546387 18.119898986816406 C 2.0224719047546387 18.653959169754216 1.5775280881195926 19.073577880859375 1.0112359523773193 19.073577880859375 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element24
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 12
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 15.188764789154662 8.602183749920778 C 15.056139541387088 8.603708533540003 14.924643955693403 8.579041338483346 14.802733063268871 8.529767610141276 C 14.680822170844339 8.480493881799205 14.571194695928442 8.407704129724484 14.480899800383263 8.316079879899211 L 8.11011297266112 2.307902474817621 L 1.7393259038415347 8.316079879899211 C 1.334831508300182 8.697551469745902 0.7078651997316624 8.697551469745902 0.30337080419030965 8.316079879899211 C -0.1011235913510431 7.934608290052521 -0.1011235913510431 7.3433277279592994 0.30337080419030965 6.961856138112609 L 7.382022319312045 0.2861036994904795 C 7.7865167148533985 -0.09536789035621052 8.413483565891168 -0.09536789035621052 8.81797796143252 0.2861036994904795 L 15.896630742315837 6.961856138112609 C 16.30112513785719 7.3433277279592994 16.30112513785719 7.934608290052521 15.896630742315837 8.316079879899211 C 15.694383544545161 8.506815674822557 15.43146141743832 8.602183749920778 15.188764789154662 8.602183749920778 Z"
                    joinStyle: 0
                    fillColor: "#611c37"
                    antialiasing: true
                }
            }
        }

        Item {
            id: group_15
            x: 47
            y: 3
            width: 358
            height: 25
            Text {
                id: sending_money_to1
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
            }

            Text {
                id: boyan_Kiovtorov1
                width: 186
                height: 22
                color: "#000000"
                text: qsTr("Boyan Kiovtorov")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 173
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
            }
        }

        Text {
            id: sent1
            width: 43
            height: 23
            color: "#802f2f2f"
            text: qsTr("Sent")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 410
            anchors.topMargin: 4
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
        }
    }

    Item {
        id: group_16
        x: 147
        y: 647
        width: 1000
        height: 45
        SvgPathItem {
            id: line_5_Stroke_2
            width: 1000
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 42
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            rotation: 0.301
            path: "M 1000 1 L 0 1 L 0 0 L 1000 0 L 1000 1 Z"
            joinStyle: 0
            fillColor: "#aba4a4"
            antialiasing: true
        }

        Item {
            id: group_17
            x: 0
            y: 0
            width: 30
            height: 30
            Image {
                id: ellipse_8
                anchors.left: parent.left
                anchors.top: parent.top
                source: "../assets/ellipse_8.png"
            }

            Item {
                id: group_18
                x: 23
                y: 26
                width: 16
                height: 21
                SvgPathItem {
                    id: element25
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: -9
                    anchors.rightMargin: 23
                    anchors.topMargin: -21
                    anchors.bottomMargin: 23
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    rotation: 180
                    path: "M 1.0112359523773193 19.073577880859375 C 0.4449438166350461 19.073577880859375 0 18.653959169754216 0 18.119898986816406 L 0 0.9536788940429688 C 0 0.4196187111051586 0.4449438166350461 0 1.0112359523773193 0 C 1.5775280881195926 0 2.0224719047546387 0.4196187111051586 2.0224719047546387 0.9536788940429688 L 2.0224719047546387 18.119898986816406 C 2.0224719047546387 18.653959169754216 1.5775280881195926 19.073577880859375 1.0112359523773193 19.073577880859375 Z"
                    joinStyle: 0
                    fillColor: "#228556"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element26
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: -16
                    anchors.rightMargin: 16
                    anchors.topMargin: -9
                    anchors.bottomMargin: 21
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    rotation: 180
                    path: "M 15.188764789154662 8.602183749920778 C 15.056139541387088 8.603708533540003 14.924643955693403 8.579041338483346 14.802733063268871 8.529767610141276 C 14.680822170844339 8.480493881799205 14.571194695928442 8.407704129724484 14.480899800383263 8.316079879899211 L 8.11011297266112 2.307902474817621 L 1.7393259038415347 8.316079879899211 C 1.334831508300182 8.697551469745902 0.7078651997316624 8.697551469745902 0.30337080419030965 8.316079879899211 C -0.1011235913510431 7.934608290052521 -0.1011235913510431 7.3433277279592994 0.30337080419030965 6.961856138112609 L 7.382022319312045 0.2861036994904795 C 7.7865167148533985 -0.09536789035621052 8.413483565891168 -0.09536789035621052 8.81797796143252 0.2861036994904795 L 15.896630742315837 6.961856138112609 C 16.30112513785719 7.3433277279592994 16.30112513785719 7.934608290052521 15.896630742315837 8.316079879899211 C 15.694383544545161 8.506815674822557 15.43146141743832 8.602183749920778 15.188764789154662 8.602183749920778 Z"
                    joinStyle: 0
                    fillColor: "#228556"
                    antialiasing: true
                }
            }
        }

        Item {
            id: group_19
            x: 47
            y: 2
            width: 366
            height: 25
            Text {
                id: received_money_from
                width: 199
                height: 25
                color: "#000000"
                text: qsTr("Received money from")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
            }

            Text {
                id: vicho_Vichev
                width: 186
                height: 22
                color: "#000000"
                text: qsTr("Vicho Vichev")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 181
                anchors.topMargin: 2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Bold
            }
        }

        Text {
            id: received
            width: 85
            height: 23
            color: "#802f2f2f"
            text: qsTr("Received")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 407
            anchors.topMargin: 5
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
        }
    }

    Text {
        id: bGN
        width: 128
        height: 27
        color: "#000000"
        text: qsTr("-500 BGN")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1006
        anchors.topMargin: 593
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.DemiBold
    }

    Text {
        id: view_all_activities
        width: 301
        height: 29
        color: "#5a9dfe"
        text: qsTr("View all activities")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 499
        anchors.topMargin: 783
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Bold
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
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
            target: rectangle_32
            property: "width"
            Keyframe {
                value: 300
                frame: 540
            }

            Keyframe {
                value: 10
                frame: 0
            }
        }
    }

    Rectangle {
        id: rectangle_33
        width: 0
        height: 6
        visible: true
        color: "#074808"
        radius: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 674
        anchors.topMargin: 343
    }

}

/*##^##
Designer {
    D{i:0;uuid:"c21d5e9b-f74f-56d7-8d30-1f69541d092d"}D{i:1;uuid:"5cd638cc-f4c9-58bf-8018-d1c646daca05"}
D{i:2;uuid:"fe938cb8-255d-5669-a9ef-9c7feee3c527"}D{i:3;uuid:"0edf13cf-3dbc-5374-bd55-502660b68aaa"}
D{i:4;uuid:"e1a52586-937f-5d6e-ad99-4df65a4a35b0"}D{i:5;uuid:"8a7fdf5c-82ba-53eb-a28e-0a0de5b1691a"}
D{i:6;uuid:"88b8fd89-0108-5e3c-813b-83b842af38df"}D{i:7;uuid:"b02ccc6b-0974-51d3-a2a5-6114b3af3b8f"}
D{i:8;uuid:"fc7bf608-cf18-5d0e-a602-f38f1cde659f"}D{i:9;uuid:"20f753cf-b839-52d6-bcf2-ddf7da39857b"}
D{i:10;uuid:"bcefb792-7fd6-5eb2-b9ec-4455376d1c25"}D{i:11;uuid:"e9f9c202-e6cf-5441-aab4-27b5b1a8908b"}
D{i:12;uuid:"e2b06e81-5ed4-594c-a4bb-0f179ba591cd"}D{i:13;uuid:"f3b45a18-38b2-5fe8-ab17-b1d0fc43f5be"}
D{i:14;uuid:"e8f86b6e-306c-56e7-8cc2-6716687253fe"}D{i:15;uuid:"028baedd-e6ee-5a51-8156-2c5c2f3f97a0"}
D{i:16;uuid:"38ca74aa-483a-5a5a-b8e9-a2a3c4a474f0"}D{i:17;uuid:"b531a0c2-cd30-572f-8b38-a3da35e2aa16"}
D{i:18;uuid:"8ecb5812-af82-5c6f-b389-ea409333f037"}D{i:19;uuid:"3b711b1b-d981-5ee6-ad30-da67e56b195b"}
D{i:20;uuid:"feab364e-6925-56cd-80a3-6cec314ddff6"}D{i:21;uuid:"f48a3469-967a-5ec9-8f33-18ca00854896"}
D{i:22;uuid:"ef86c75c-3359-5060-942d-971fddfb402c"}D{i:23;uuid:"ea3b2226-e695-5d3b-83e2-544ea2e62b15"}
D{i:24;uuid:"9e08c231-2b09-56e0-aff8-d02652287a28"}D{i:25;uuid:"79c526a3-114a-5d15-9e81-3d9166e27dc3"}
D{i:26;uuid:"b34bfe75-c233-527f-9eb7-d3d120a22ee2"}D{i:27;uuid:"e4a92dcb-7a5d-56af-815b-7c1050c4265a"}
D{i:28;uuid:"c75aa98e-da6f-5b9c-a309-04beadf30c31"}D{i:29;uuid:"49206a94-0d30-5637-a197-1727b7ef4467"}
D{i:30;uuid:"108e1189-f9e1-5908-8c05-020f30979151"}D{i:31;uuid:"3abcf01e-0742-5f2f-bc5d-b3356336aab9"}
D{i:32;uuid:"360cd7d6-6cdb-59c9-a92e-162df5b37bf6"}D{i:33;uuid:"720f9f65-cd74-58c5-b58d-df08f5006e03"}
D{i:34;uuid:"6c6ac8c4-99d4-5156-a300-529674ac5dd7"}D{i:35;uuid:"dee7cca0-bc72-555a-8306-10b8841cb561"}
D{i:36;uuid:"48e8440e-930a-5942-b481-1d88b11b757c"}D{i:37;uuid:"a5e61b5d-ecca-5bf7-8e6f-9c1017f84688"}
D{i:38;uuid:"b7c57e76-0744-5bd1-9392-7e19afdd7d5f"}D{i:39;uuid:"b201a9fa-0ca2-571a-be24-d87204617005"}
D{i:40;uuid:"73879265-db52-5c20-b470-5792da62aa41"}D{i:41;uuid:"bac8dfd0-660c-50ad-a8df-6c0178526a4f"}
D{i:42;uuid:"73d6a7f0-b778-5549-82f4-877b3e7e81b7"}D{i:43;uuid:"31ad1fb4-e689-5a71-8acb-4d71a8261ee6"}
D{i:44;uuid:"278e697d-1058-57ed-9156-1ae23cd51c11"}D{i:45;uuid:"05791f3d-75e1-5c49-85a6-7eea5216d2af"}
D{i:46;uuid:"de78d3df-0255-5bc1-9314-ada112d2a54e"}D{i:47;uuid:"3655db80-0abc-53c2-89de-68156698b2f3"}
D{i:48;uuid:"70870497-0c7a-5b43-9470-57d3efbbebfc"}D{i:49;uuid:"92ba2b4f-b566-5558-8317-40ef9bca69d1"}
D{i:50;uuid:"ed7f69e2-5960-55b4-beae-19b3489eefd9"}D{i:51;uuid:"46aaca4c-b47e-57a1-be12-c0164825de9f"}
D{i:52;uuid:"93e0f8cb-d920-5290-947f-a8c885f22919"}D{i:53;uuid:"879ebbad-f4bf-5544-ad9e-429b04ea24b0"}
D{i:54;uuid:"e1c43386-6f63-5c1c-aa30-e42c1c32a471"}D{i:55;uuid:"2c15cc78-9e3a-5aa6-b9ed-e2629261852a"}
D{i:56;uuid:"08579ec0-da51-5fd3-a3b5-c9a79c800845"}D{i:57;uuid:"ab8bde12-bfac-570c-bac9-b4579695c3cc"}
D{i:58;uuid:"9362383b-78d1-51ec-b1d5-4bf4b7a57a81"}D{i:59;uuid:"c4945e37-28cc-559d-bbcc-2d0be6ffd592"}
D{i:60;uuid:"feb4888e-3512-5d4b-a3c0-899694656f52"}D{i:61;uuid:"b315c888-8d9a-547b-b75a-26d0b75d415d"}
D{i:62;uuid:"6bdc6c34-a234-5701-9983-9b47fb25e270"}D{i:63;uuid:"650ab467-d1ec-5687-b6de-c9cdd329259d"}
D{i:64;uuid:"d6d6a8a4-802e-5dd1-8d40-81a350a915ea"}D{i:65;uuid:"af291c23-9671-5a6e-aba5-610eb817db8d"}
D{i:66;uuid:"e96a2c7a-318d-528d-8fbc-912f420b45e2"}D{i:67;uuid:"55fca9fa-c41e-5ca5-80c3-76e0678b1c28"}
D{i:68;uuid:"77004f69-0f62-53e1-9ef1-2be7248664f9"}D{i:69;uuid:"feab364e-6925-56cd-80a3-6cec314ddff6"}
D{i:70;uuid:"ea2466d5-4f95-595d-a2f0-9a6849088f48"}D{i:71;uuid:"4a2e90ec-7c14-53b3-9dd9-d6ccfe9058d8"}
D{i:72;uuid:"9fb82395-26c0-50d8-b4b0-a09ce53c0155"}D{i:73;uuid:"af4de4d8-e0b4-56d8-87e8-886ec6bfa4b7"}
D{i:74;uuid:"217d2ab7-8f6e-58c9-ac31-77ea85ba05d9"}D{i:75;uuid:"c09ba328-d5ab-5e2f-a2bf-5a640b2f55ed"}
D{i:76;uuid:"b48d7592-473a-5235-b4cf-ee7806c57f25"}D{i:77;uuid:"ff1118e4-af1e-545c-88e8-a6ecf0140e80"}
D{i:78;uuid:"8fe3d997-5972-51e9-ad20-65c65e89ff3e"}D{i:79;uuid:"ebd815d2-f13d-5fab-bba0-bad6740f8557"}
D{i:80;uuid:"8b8eed0e-e1df-580e-b8dc-ef03b5711b82"}D{i:81;uuid:"3dfeb073-95db-549d-8bf2-33bee240bed4"}
D{i:82;uuid:"450d83d4-4f13-5cfb-bdcb-72361b50d46c"}D{i:83;uuid:"bdbe9770-a978-5045-9589-0743818f1c7c"}
D{i:84;uuid:"2cfd1884-bc45-50e0-9da0-03bdfdba65ab"}D{i:85;uuid:"38ee491c-767b-5af0-8289-ed29a17c9d56"}
D{i:86;uuid:"a9c5324b-a10a-5e7d-b38d-c1fe2fba12c9"}D{i:87;uuid:"b84012d0-25f8-5467-8dca-e329c9aa4237"}
D{i:88;uuid:"229eaf30-a608-526d-9b8a-abe3bb0a0d9d"}D{i:89;uuid:"04f4bff0-6a5b-5218-a1e7-018ea83d632c"}
D{i:90;uuid:"ae9e62d2-4772-5612-9e00-74dff35e25d9"}D{i:91;uuid:"f3a1032d-6ef2-5762-b3aa-68a64e532e2c"}
D{i:92;uuid:"2afcdad3-e859-5a85-8b24-2087566e9dbc"}D{i:93;uuid:"9f87ad53-6425-5506-af4e-d9cc62c373fa"}
D{i:94;uuid:"39e658dd-8586-5e9b-92ad-c9db5ba85e5d"}D{i:95;uuid:"f016133e-06ea-564b-b7e1-fa0b4a1d6c47"}
D{i:96;uuid:"81fb6318-2a8a-591c-86b4-f1b54a5919d5"}D{i:97;uuid:"21bcba04-a37e-5106-83f0-4774ab6eb615"}
D{i:98;uuid:"be261868-2187-58b0-8a70-1f3a9c162b78"}D{i:99;uuid:"54b1bce4-b2a7-5040-a65e-19a7726a76dd"}
D{i:100;uuid:"79c9a26a-1b2d-5567-b8a1-d735ed9dc14c"}D{i:101;uuid:"0d81271b-880f-5ea6-962a-cccba7427d80"}
D{i:102;uuid:"14edcd85-9b71-581e-ba71-21f95bb6a07e"}D{i:103;uuid:"8eec318c-dc40-5999-b13c-786c5a154573"}
D{i:104;uuid:"8ddc460d-d722-5928-a448-3e50f70170ae"}D{i:105;uuid:"aac1e0bc-222b-5bb6-adcb-9efbe1f239d4"}
D{i:106;uuid:"9b077291-7641-552c-bfd5-def3db18d9af"}D{i:107;uuid:"c8220480-098e-5a54-9536-fd9b9b0fd67c"}
D{i:108;uuid:"937c1055-d521-5a32-a11b-1ea3ff0162d8"}D{i:109;uuid:"7547b65a-8262-5373-9b2a-482bc75d90fd"}
D{i:110;uuid:"d33d9af0-d352-5264-a404-aad3f815c1dc"}D{i:111;uuid:"8f9e43a2-35bd-5423-a98c-c83d8453dc5e"}
D{i:112;uuid:"3d282963-c856-54b6-ab96-42e328f2b6bc"}D{i:113;uuid:"b60cbf78-e6f7-547f-ae2a-bcfd38360eaa"}
D{i:114;uuid:"2c2236e4-0a1f-5858-97b3-1fc770a44501"}D{i:115;uuid:"5cbb5cf9-00eb-5801-9b25-722360c47781"}
D{i:116;uuid:"891a7e70-0c98-5bdb-8bd0-48a62bf96246"}D{i:117;uuid:"68cca793-b796-5a32-8eb8-e4fc1227933e"}
D{i:118;uuid:"d95e9ccc-571e-5c48-b964-dcede6f6f79f"}D{i:119;uuid:"7c3c515a-6410-5eaf-80fe-3da2a3abd6ce"}
D{i:120;uuid:"655ae3ed-dcf2-5d4b-a321-c60e3f67ac5f"}D{i:121;uuid:"155315b4-8bd0-5450-8708-3c4bd964ad83"}
D{i:122;uuid:"639c9381-d21b-5ff1-b1f2-ea5507701d74"}D{i:123;uuid:"76e4139e-678b-5009-a481-6a6d21c584bf"}
D{i:124;uuid:"65ee05ea-574f-5c53-b0b4-4eb7c0ed8b7a"}D{i:125;uuid:"49a9537e-23af-5610-8da1-8d677fef1c69"}
D{i:126;uuid:"894b565b-9759-5cfd-9b6d-87d50fc0bfe6"}D{i:132;uuid:"ea2466d5-4f95-595d-a2f0-9a6849088f48"}
}
##^##*/

