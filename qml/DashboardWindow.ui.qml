import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.0
import QtCharts
import QtQuick.Timeline 1.0

Rectangle {
    id: dashboard
    width: 1280
    height: 832
    color: "#ffffff"

    property alias sendMoneyButton: sendMoneyButton
    property alias requestMoneyButton: requestMoneyButton
    property alias copyButton: copyButton
    property alias stackView: stackView
    property alias incomePieValue: incomePie.value
    property alias expensePieValue: expensesPie.value
    property alias element10: element10.text
    property real balanceValue: 5000.0
    property real incomeValue: 3000.0
    property real expensesValue: 2000.0
    property string debitcard: "7196 9672 6435 3383"
    property string firstName2: "Boyan"
    property alias transactionButton: transactionButton
    property alias tradingButton: tradingButton
    property alias imageSource: image.source
    property alias username: username.text
    property alias userFullname: userFullname.text

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
            id: dashboard1
            width: 91
            height: 23
            color: "#196e1a"
            text: qsTr("Dashboard")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 19
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

        TextField {
            id: searchField
            width: parent.width - 40
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 32
            anchors.verticalCenter: parent.verticalCenter
            placeholderText: qsTr("Search")
            font.pixelSize: 18
            anchors.verticalCenterOffset: 0
            color: "#802f2f2f"
        }

        SvgPathItem {
            id: searchIcon
            width: 16
            height: 16
            anchors.left: parent.left
            anchors.leftMargin: 7
            anchors.verticalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            strokeWidth: 1
            strokeColor: "#000000"
            path: "M 18 17 L 13.6570492891393 12.898324328631562 M 13.6570492891393 12.898324328631562 C 14.399928642135901 12.196716107094069 14.989212248995793 11.363786352191921 15.39125566952893 10.447090966349245 C 15.793299090062066 9.53039558050657 16.00022887138912 8.547887578608355 16.000228879216625 7.55566363740785 C 16.00022888704413 6.563439696207345 15.79330096758689 5.58093169430913 15.391257576855734 4.664236308466454 C 14.98921418612458 3.747540922623778 14.399928642135901 2.9146109988437363 13.6570492891393 2.2130027210136127 C 12.914169936142699 1.5113944431834894 12.032244372909094 0.9548483359951139 11.061625729075672 0.5751406891934678 C 10.09100708524225 0.19543304239182174 9.050704494997083 -7.392641508222264e-9 8.000114439608312 4.1941278728217626e-16 C 6.949524384219542 7.3926457023501376e-9 5.909221793974374 0.19543301424550608 4.938603150140952 0.5751406891934678 C 3.96798450630753 0.9548483641414296 3.0860584066382604 1.5113944431834894 2.343179113245622 2.2130027210136127 C 0.8428666692733466 3.6299645862393577 -1.5808361118645898e-8 5.551777008701226 0 7.55566363740785 C 1.5808361118645898e-8 9.559550266114474 0.8428666692733466 11.48136257599108 2.343179113245622 12.898324328631562 C 3.843491557217897 14.315286081272044 5.878352126860122 15.11132725988558 8.000114439608312 15.1113272748157 C 10.121876752356503 15.11132728974582 12.1567367259591 14.315286081272044 13.6570492891393 12.898324328631562 Z"
            antialiasing: true
        }
    }

    Button {
        id: chatButton
        x: 934
        y: 25
        width: 87
        height: 48
        background: Rectangle {
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
        width: 187
        height: 53
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
            id: userFullname
            width: 112
            height: 19
            color: "#000000"
            text: qsTr("test")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 58
            anchors.topMargin: 8
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }

        Text {
            id: username
            width: 78
            height: 19
            color: "#802f2f2f"
            text: qsTr("@test")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 58
            anchors.topMargin: 33
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
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

    Text {
        id: good_morning_Boyan
        width: 388
        height: 44
        color: "#000000"
        text: qsTr("Good morning, " + firstName)
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 28
        anchors.topMargin: 136
        font.letterSpacing: 0.344
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
    }

    Text {
        id: this_is_your_finance_report
        width: 216
        height: 23
        color: "#b22f2f2f"
        text: qsTr("This is your finance report")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 29
        anchors.topMargin: 194
        font.letterSpacing: 0.172
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
    }

    Item {
        id: group_4
        x: 489
        y: 254
        width: 226
        height: 186
        Rectangle {
            id: rectangle_30
            width: 226
            height: 186
            color: "#4dffffff"
            radius: 15
            border.color: "#727272"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element13
            width: 55
            height: 26
            color: "#249226"
            text: qsTr("+6,7%")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 14
            anchors.topMargin: 144
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
        }

        Text {
            id: compared_to_last_month1
            width: 141
            height: 17
            color: "#b22f2f2f"
            text: qsTr("Compared to last month")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 74
            anchors.topMargin: 145
            font.pixelSize: 13
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }

        Item {
            id: group_5
            x: 22
            y: 11
            width: 40
            height: 40
            ArcItem {
                id: ellipse_3
                width: 40
                height: 40
                anchors.left: parent.left
                anchors.top: parent.top
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#d9d9d9"
                end: 450.00001
                begin: 90
                arcWidth: 20
                antialiasing: true
            }

            ArcItem {
                id: ellipse_4
                width: 36
                height: 36
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 2
                anchors.topMargin: 2
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#ffffff"
                end: 450.00001
                begin: 90
                arcWidth: 18
                antialiasing: true
            }

            Item {
                id: group
                x: 13
                y: 13
                width: 14
                height: 14
                SvgPathItem {
                    id: element14
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 11
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 2 0 C 1.4695670207341514 7.53605947267372e-16 0.9608592589696248 0.26818113441589736 0.585786501566569 0.7455464717751663 C 0.21071374416351318 1.2229118091344353 5.921189464667501e-16 1.8703580646113287 0 2.5454545974731446 L 0 3.1818182468414307 L 14 3.1818182468414307 L 14 2.5454545974731446 C 13.999999999999998 1.8703580646113287 13.789286573727924 1.2229118091344353 13.41421381632487 0.7455464717751663 C 13.039141058921814 0.26818113441589736 12.530432979265848 3.76802973633686e-16 12 0 L 2 0 Z"
                    joinStyle: 0
                    fillColor: "#367c21"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element15
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    anchors.topMargin: 5
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 14 0 L 0 0 L 0 6.363636425563268 C 4.440892098500626e-16 7.038732951198508 0.21071374416351318 7.6861796043339154 0.585786501566569 8.163544936583223 C 0.9608592589696248 8.640910268832531 1.4695670207341514 8.90909099578857 2 8.909090995788574 L 12 8.909090995788574 C 12.530432979265848 8.90909099578857 13.039141058921814 8.640910268832531 13.41421381632487 8.163544936583223 C 13.789286573727924 7.6861796043339154 13.999999999999998 7.038732951198508 14 6.363636425563268 L 14 0 Z M 2 3.181818212781634 C 2 3.013044081372824 2.0526783565680184 2.8511828226780795 2.1464465459187823 2.7318414896157526 C 2.240214735269546 2.6125001565534256 2.367391755183538 2.545454570225307 2.5 2.545454570225307 L 6.5 2.545454570225307 C 6.6326082448164625 2.545454570225307 6.759784946839014 2.6125001565534256 6.853553136189778 2.7318414896157526 C 6.947321325540543 2.8511828226780795 7 3.013044081372824 7 3.181818212781634 C 7 3.350592344190444 6.947321325540543 3.512453602885188 6.853553136189778 3.631794935947515 C 6.759784946839014 3.7511362690098418 6.6326082448164625 3.8181818553379605 6.5 3.8181818553379605 L 2.5 3.8181818553379605 C 2.367391755183538 3.8181818553379605 2.240214735269546 3.7511362690098418 2.1464465459187823 3.631794935947515 C 2.0526783565680184 3.512453602885188 2.0000000000000004 3.350592344190444 2 3.181818212781634 Z M 2.5 5.090909140450614 C 2.367391755183538 5.090909140450614 2.240214735269546 5.1579547267787325 2.1464465459187823 5.27729605984106 C 2.0526783565680184 5.396637392903387 2.0000000000000004 5.55849865159813 2 5.72727278300694 C 2.0000000000000004 5.89604691441575 2.0526783565680184 6.05790898228871 2.1464465459187823 6.177250315351038 C 2.240214735269546 6.296591648413365 2.367391755183538 6.363636425563268 2.5 6.363636425563268 L 4.5 6.363636425563268 C 4.6326082448164625 6.363636425563268 4.759784946839014 6.296591648413365 4.853553136189778 6.177250315351038 C 4.947321325540543 6.05790898228871 5 5.89604691441575 5 5.72727278300694 C 5 5.55849865159813 4.947321325540543 5.396637392903387 4.853553136189778 5.27729605984106 C 4.759784946839014 5.1579547267787325 4.6326082448164625 5.090909140450614 4.5 5.090909140450614 L 2.5 5.090909140450614 Z"
                    joinStyle: 0
                    fillColor: "#367c21"
                    antialiasing: true
                }
            }
        }

        Text {
            id: monthly_Income
            width: 138
            height: 23
            color: "#000000"
            text: qsTr("Monthly Income")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 16
            anchors.topMargin: 63
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
        }
        Text {
            property real incomeValue: incomeValue
            id: income
            width: 174
            height: 40
            color: "#000000"
            text: incomeValue.toFixed(2)
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 14
            anchors.topMargin: 92
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal

        }
    }

    Item {
        id: group_6
        x: 732
        y: 255
        width: 226
        height: 186
        Rectangle {
            id: rectangle_31
            width: 226
            height: 186
            color: "#4dffffff"
            radius: 15
            border.color: "#727272"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element17
            width: 52
            height: 26
            color: "#d6453e"
            text: qsTr("-8,6%")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            anchors.topMargin: 144
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Normal
        }

        Text {
            id: compared_to_last_month2
            width: 141
            height: 17
            color: "#b22f2f2f"
            text: qsTr("Compared to last month")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 74
            anchors.topMargin: 145
            font.pixelSize: 13
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
        }

        Item {
            id: group_7
            x: 22
            y: 11
            width: 40
            height: 40
            ArcItem {
                id: ellipse_5
                width: 40
                height: 40
                anchors.left: parent.left
                anchors.top: parent.top
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#d9d9d9"
                end: 450.00001
                begin: 90
                arcWidth: 20
                antialiasing: true
            }

            ArcItem {
                id: ellipse_6
                width: 36
                height: 36
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 2
                anchors.topMargin: 2
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#ffffff"
                end: 450.00001
                begin: 90
                arcWidth: 18
                antialiasing: true
            }

            Item {
                id: group1
                x: 13
                y: 13
                width: 14
                height: 14
                SvgPathItem {
                    id: element18
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 11
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 2 0 C 1.4695670207341514 7.53605947267372e-16 0.9608592589696248 0.26818113441589736 0.585786501566569 0.7455464717751663 C 0.21071374416351318 1.2229118091344353 5.921189464667501e-16 1.8703580646113287 0 2.5454545974731446 L 0 3.1818182468414307 L 14 3.1818182468414307 L 14 2.5454545974731446 C 13.999999999999998 1.8703580646113287 13.789286573727924 1.2229118091344353 13.41421381632487 0.7455464717751663 C 13.039141058921814 0.26818113441589736 12.530432979265848 3.76802973633686e-16 12 0 L 2 0 Z"
                    joinStyle: 0
                    fillColor: "#d6453e"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element19
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    anchors.topMargin: 5
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 14 0 L 0 0 L 0 6.363636425563268 C 4.440892098500626e-16 7.038732951198508 0.21071374416351318 7.6861796043339154 0.585786501566569 8.163544936583223 C 0.9608592589696248 8.640910268832531 1.4695670207341514 8.90909099578857 2 8.909090995788574 L 12 8.909090995788574 C 12.530432979265848 8.90909099578857 13.039141058921814 8.640910268832531 13.41421381632487 8.163544936583223 C 13.789286573727924 7.6861796043339154 13.999999999999998 7.038732951198508 14 6.363636425563268 L 14 0 Z M 2 3.181818212781634 C 2 3.013044081372824 2.0526783565680184 2.8511828226780795 2.1464465459187823 2.7318414896157526 C 2.240214735269546 2.6125001565534256 2.367391755183538 2.545454570225307 2.5 2.545454570225307 L 6.5 2.545454570225307 C 6.6326082448164625 2.545454570225307 6.759784946839014 2.6125001565534256 6.853553136189778 2.7318414896157526 C 6.947321325540543 2.8511828226780795 7 3.013044081372824 7 3.181818212781634 C 7 3.350592344190444 6.947321325540543 3.512453602885188 6.853553136189778 3.631794935947515 C 6.759784946839014 3.7511362690098418 6.6326082448164625 3.8181818553379605 6.5 3.8181818553379605 L 2.5 3.8181818553379605 C 2.367391755183538 3.8181818553379605 2.240214735269546 3.7511362690098418 2.1464465459187823 3.631794935947515 C 2.0526783565680184 3.512453602885188 2.0000000000000004 3.350592344190444 2 3.181818212781634 Z M 2.5 5.090909140450614 C 2.367391755183538 5.090909140450614 2.240214735269546 5.1579547267787325 2.1464465459187823 5.27729605984106 C 2.0526783565680184 5.396637392903387 2.0000000000000004 5.55849865159813 2 5.72727278300694 C 2.0000000000000004 5.89604691441575 2.0526783565680184 6.05790898228871 2.1464465459187823 6.177250315351038 C 2.240214735269546 6.296591648413365 2.367391755183538 6.363636425563268 2.5 6.363636425563268 L 4.5 6.363636425563268 C 4.6326082448164625 6.363636425563268 4.759784946839014 6.296591648413365 4.853553136189778 6.177250315351038 C 4.947321325540543 6.05790898228871 5 5.89604691441575 5 5.72727278300694 C 5 5.55849865159813 4.947321325540543 5.396637392903387 4.853553136189778 5.27729605984106 C 4.759784946839014 5.1579547267787325 4.6326082448164625 5.090909140450614 4.5 5.090909140450614 L 2.5 5.090909140450614 Z"
                    joinStyle: 0
                    fillColor: "#d6453e"
                    antialiasing: true
                }
            }
        }

        Text {
            id: monthly_Expenses
            width: 153
            height: 23
            color: "#000000"
            text: qsTr("Monthly Expenses")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            anchors.topMargin: 63
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
        }

        Text {
            property real expensesValue: expensesValue
            id: expenses
            width: 174
            height: 40
            color: "#000000"
            text: "$" + expensesValue.toFixed(2)
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 8
            anchors.topMargin: 92
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal


        }
    }

    Rectangle {
        id: rectangle_32
        width: 293
        height: 640
        color: "#4dffffff"
        radius: 10
        border.color: "#727272"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 977
        anchors.topMargin: 180

        ChartView {
            id: pie
            x: -6
            y: 8
            width: 295
            height: 350

            PieSeries {
                name: "PieSeries"

                PieSlice {
                    id: incomePie
                    value: 0 // Start at 0 to animate "filling"
                    label: "Income"
                }

                PieSlice {
                    id: expensesPie
                    value: 0 // Start at 0 to animate "filling"
                    label: "Expenses"
                }
            }
        }

        // Sequential animation for "filling" effect
        SequentialAnimation {
            running: true // Start automatically
            loops: 1 // Run once

            NumberAnimation {
                target: incomePie
                property: "value"
                from: 0
                to: 13.5 // Final value for "Income" slice
                duration: 1500 // Duration in milliseconds
                easing.type: Easing.InOutQuad
            }

            NumberAnimation {
                target: expensesPie
                property: "value"
                from: 0
                to: 10.9 // Final value for "Expenses" slice
                duration: 1500 // Duration in milliseconds
                easing.type: Easing.InOutQuad
            }
        }
    }

    Rectangle {
        id: rectangle_33
        width: 918
        height: 362
        color: "#4dffffff"
        radius: 10
        border.color: "#727272"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 28
        anchors.topMargin: 453

        ChartView {
            id: bar
            x: 8
            y: 8
            width: 902
            height: 338
            BarSeries {
                id: mySeries
                axisX: BarCategoryAxis {
                    categories: ["Jan", "Feb", "Mar", "Apr", "Jun"]
                    gridVisible: false
                }
                axisY: ValuesAxis {
                    labelFormat: "$%.0f" // Format the labels to include '$' before each value
                }

                BarSet {
                    label: "Earnings"
                    values: [800] // Example values for each month
                }
                BarSet {
                    label: "Spendings"
                    values: [560]
                }
            }
        }
    }

    Button {
        id: overViewButton
        width: 97
        height: 23
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 797
        anchors.topMargin: 147
        font.pixelSize: 18
        font.weight: Font.Normal

        background: Rectangle {
            color: "transparent" // Transparent background without border
            border.width: 0
        }

        contentItem: Text {
            text: qsTr("Overview")
            color: "#367c21" // Text color
            anchors.centerIn: parent
            font.pixelSize: 18
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
        }
    }
    Button {
        id: cryptoButton
        width: 97
        height: 23
        text: qsTr("Crypto")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 889
        anchors.topMargin: 147
        font.pixelSize: 18
        font.weight: Font.Normal

        background: Rectangle {
            color: "transparent" // Transparent background without border
            border.width: 0
        }

        contentItem: Text {
            text: qsTr("Crypto")
            color: "#802f2f2f" // Text color
            anchors.centerIn: parent
            font.pixelSize: 18
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
        }
    }

    Button {
        id: transactionButton
        width: 97
        height: 23
        text: qsTr("Transaction")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 992
        anchors.topMargin: 147
        font.pixelSize: 18
        font.weight: Font.Normal

        background: Rectangle {
            color: "transparent" // Transparent background without border
            border.width: 0
        }

        contentItem: Text {
            id: transactionText
            text: qsTr("Transaction")
            color: "#802f2f2f" // Text color
            anchors.centerIn: parent
            font.pixelSize: 18
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
        }
    }

    Button {
        id: tradingButton
        width: 97
        height: 23
        text: qsTr("Trading")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1083
        anchors.topMargin: 147
        font.pixelSize: 18
        font.weight: Font.Normal

        background: Rectangle {
            color: "transparent" // Transparent background without border
            border.width: 0
        }

        contentItem: Text {
            text: qsTr("Trading")
            color: "#802f2f2f" // Text color
            anchors.centerIn: parent
            font.pixelSize: 18
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
        }
    }

    Button {
        id: settingsButton
        width: 97
        height: 23
        text: qsTr("Settings")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 1167
        anchors.topMargin: 147
        font.pixelSize: 18
        font.weight: Font.Normal

        background: Rectangle {
            color: "transparent" // Transparent background without border
            border.width: 0
        }

        contentItem: Text {
            text: qsTr("Settings")
            color: "#802f2f2f" // Text color
            anchors.centerIn: parent
            font.pixelSize: 18
            font.weight: Font.Normal
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
        }
    }

    StackView {
        id: stackView
        x: 37
        y: 247
        width: 425
        height: 200

        Item {
            id: balanceGroup
            x: -16
            y: 6
            width: 457
            height: 186
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

            Text {
                property real balanceValue: balanceValue
                id: balanceText
                width: 179
                height: 40
                color: "#000000"
                text: balanceValue.toFixed(2)
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 27
                anchors.topMargin: 34
                font.pixelSize: 32
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Normal


            }

            Text {
                id: element9
                width: 69
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
                text: debitcard

                width: 198
                height: 23
                color: "#000000"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 8
                anchors.topMargin: 80
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Normal
            }

            Button {
                id: copyButton
                x: 211
                y: 82
                width: 19
                height: 18
                background: Rectangle {
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
                    anchors.leftMargin: 56
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

            Button {
                id: sendMoneyButton
                x: 16
                y: 118
                width: 200
                height: 37
                background: Rectangle {
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

            Button {
                id: requestMoneyButton
                x: 241
                y: 118
                width: 200
                height: 37
                background: Rectangle {
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
    }

    ChartView {
        id: pie1
        x: 969
        y: 485
        width: 301
        height: 336

        PieSeries {
            name: "PieSeries"

            PieSlice {
                id: stocksPie
                value: 0 // Start at 0 to animate "filling"
                label: "Stocks"
            }

            PieSlice {
                id: cryptoPie
                value: 0 // Start at 0 to animate "filling"
                label: "Crypto"
            }

            PieSlice {
                id: transferPie
                value: 0 // Start at 0 to animate "filling"
                label: "Transfers"
            }
        }
    }

    // Sequential animation for "filling" effect
    SequentialAnimation {
        running: true // Start automatically
        loops: 1 // Run once

        NumberAnimation {
            target: stocksPie
            property: "value"
            from: 0
            to: 13.5 // Final value for "Stocks" slice
            duration: 1500 // Duration in milliseconds
            easing.type: Easing.InOutQuad
        }

        NumberAnimation {
            target: cryptoPie
            property: "value"
            from: 0
            to: 10.9 // Final value for "Crypto" slice
            duration: 1500 // Duration in milliseconds
            easing.type: Easing.InOutQuad
        }

        NumberAnimation {
            target: transferPie
            property: "value"
            from: 0
            to: 8.6 // Final value for "Transfers" slice
            duration: 1500 // Duration in milliseconds
            easing.type: Easing.InOutQuad
        }
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
    }
}