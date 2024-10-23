import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: transactions_Send_money
    width: 1280
    height: 832
    color: "#ffffff"
    property alias select_RecipentText: select_Recipent.text
    property alias uSD1Text: uSD1.text
    property alias backText: back.text
    property alias amountText: amount.text
    property alias kiovtorovText: kiovtorov.text
    property alias chatText: chat.text
    property alias element15Text: element15.text
    property alias element13Text: element13.text
    property alias uSDText: uSD.text
    property alias compared_to_last_monthText: compared_to_last_month.text
    property alias searchText: search.text
    property alias element8Text: element8.text
    property alias request_moneyText: request_money.text
    property alias boyan_KiovtorovText: boyan_Kiovtorov.text
    property alias element12Text: element12.text
    property alias you_will_sendText: you_will_send.text
    property alias recipent_will_getText: recipent_will_get.text
    property alias personal_accountText: personal_account.text
    property alias you_will_payText: you_will_pay.text
    property alias copyText: copy.text
    property alias internationalText: international.text
    property alias total_will_be_convertedText: total_will_be_converted.text
    property alias element14Text: element14.text
    property alias send_moneyText: send_money.text
    property alias transactionsText: transactions.text
    property alias uSD2Text: uSD2.text
    property alias uSD4Text: uSD4.text
    property alias finbank_feesText: finbank_fees.text
    property alias overviewText: overview.text
    property alias uSD3Text: uSD3.text
    property alias how_much_do_you_want_to_send_Text: how_much_do_you_want_to_send_.text
    property alias my_balanceText: my_balance.text
    property alias same_currencyText: same_currency.text
    property alias guaranteed_rate_12h_Text: guaranteed_rate_12h_.text
    property alias element9Text: element9.text

    Rectangle {
        id: rectangle_37
        width: 610
        height: 56
        color: "#33d9d9d9"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 367
        anchors.topMargin: 193
    }

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
            source: "../assets/logo1_7.png"
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
        x: 977
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
            anchors.left: parent.left
            anchors.top: parent.top
            source: "../assets/image_3.png"
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
            horizontalAlignment: Text.AlignHCenter
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

    Text {
        id: how_much_do_you_want_to_send_
        width: 582
        height: 44
        color: "#000000"
        text: qsTr("How much do you want to send?")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 118
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Rectangle {
        id: rectangle_38
        width: 325
        height: 51
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 372
        anchors.topMargin: 195
    }

    Text {
        id: international
        width: 134
        height: 25
        color: "#000000"
        text: qsTr("International")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 464
        anchors.topMargin: 212
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
        font.family: "Gelasio"
    }

    Rectangle {
        id: rectangle_39
        width: 194
        height: 64
        color: "#00d9d9d9"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 737
        anchors.topMargin: 193
    }

    Text {
        id: same_currency
        width: 148
        height: 25
        color: "#000000"
        text: qsTr("Same currency")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 758
        anchors.topMargin: 212
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
        font.family: "Gelasio"
    }

    Text {
        id: you_will_send
        width: 123
        height: 25
        color: "#000000"
        text: qsTr("You will send")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 282
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Item {
        id: group_23
        x: 350
        y: 319
        width: 652
        height: 48
        Rectangle {
            id: rectangle_40
            width: 652
            height: 48
            color: "#ffffff"
            radius: 10
            border.color: "#aba4a4"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element12
            width: 82
            height: 26
            color: "#000000"
            text: qsTr("1000.00")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 18
            anchors.topMargin: 11
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: line_6_Stroke_
            width: 40
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 519
            anchors.topMargin: 24
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            rotation: 90
            path: "M 40 1 L 0 1 L 0 0 L 40 0 L 40 1 Z"
            joinStyle: 0
            fillColor: "#838383"
            antialiasing: true
        }

        Text {
            id: uSD
            width: 40
            height: 23
            color: "#000000"
            text: qsTr("USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 586
            anchors.topMargin: 11
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Image {
            id: image_2
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 547
            anchors.topMargin: 8
            source: "../assets/image_2_1.png"
        }
    }

    Text {
        id: recipent_will_get
        width: 153
        height: 25
        color: "#000000"
        text: qsTr("Recipent will get")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 379
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Item {
        id: group_24
        x: 350
        y: 416
        width: 652
        height: 48
        Rectangle {
            id: rectangle_41
            width: 652
            height: 48
            color: "#ffffff"
            radius: 10
            border.color: "#aba4a4"
            border.width: 1
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element13
            width: 82
            height: 26
            color: "#000000"
            text: qsTr("1364.83")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 18
            anchors.topMargin: 11
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        SvgPathItem {
            id: line_6_Stroke_1
            width: 40
            height: 1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 519
            anchors.topMargin: 24
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            rotation: 90
            path: "M 40 1 L 0 1 L 0 0 L 40 0 L 40 1 Z"
            joinStyle: 0
            fillColor: "#838383"
            antialiasing: true
        }

        Text {
            id: uSD1
            width: 40
            height: 23
            color: "#000000"
            text: qsTr("USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 586
            anchors.topMargin: 11
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Image {
            id: image1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 547
            anchors.topMargin: 8
            source: "../assets/image1.png"
        }
    }

    Rectangle {
        id: rectangle_42
        width: 652
        height: 223
        color: "#ffffff"
        radius: 10
        border.color: "#aba4a4"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 350
        anchors.topMargin: 485
    }

    Text {
        id: element14
        width: 95
        height: 25
        color: "#000000"
        text: qsTr("1.3823901")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 896
        anchors.topMargin: 648
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Text {
        id: guaranteed_rate_12h_
        width: 198
        height: 25
        color: "#000000"
        text: qsTr("Guaranteed rate(12h)")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 368
        anchors.topMargin: 647
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Text {
        id: uSD2
        width: 108
        height: 25
        color: "#000000"
        text: qsTr("$1000 USD")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 888
        anchors.topMargin: 605
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Text {
        id: total_will_be_converted
        width: 209
        height: 25
        color: "#000000"
        text: qsTr("Total will be converted")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 366
        anchors.topMargin: 605
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Gelasio"
    }

    Item {
        id: group_26
        x: 366
        y: 538
        width: 620
        height: 32
        Text {
            id: uSD3
            width: 150
            height: 32
            color: "#000000"
            text: qsTr("$ 1005 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 471
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: you_will_pay
            width: 124
            height: 25
            color: "#000000"
            text: qsTr("You will pay")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_25
        x: 366
        y: 498
        width: 607
        height: 25
        Text {
            id: uSD4
            width: 72
            height: 25
            color: "#000000"
            text: qsTr("$5 USD")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 536
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Text {
            id: finbank_fees
            width: 136
            height: 25
            color: "#000000"
            text: qsTr("Finbank + fees")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    SvgPathItem {
        id: line_7_Stroke_
        width: 585
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 372
        anchors.topMargin: 583
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        rotation: 0.014
        path: "M 585 1 L 0 1 L 0 0 L 585 0 L 585 1 Z"
        joinStyle: 0
        fillColor: "#b2b2b2"
        antialiasing: true
    }

    Item {
        id: sendButton
        x: 1055
        y: 757
        width: 141
        height: 51
        Rectangle {
            id: rectangle_34
            width: 141
            height: 51
            color: "#1c1f31"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: element15
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
                id: element16
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
                id: element17
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

    Item {
        id: sendButton1
        x: 888
        y: 757
        width: 141
        height: 51
        Rectangle {
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

    SvgPathItem {
        id: element18
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 43
        anchors.rightMargin: 1222
        anchors.topMargin: 210
        anchors.bottomMargin: 607
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
        anchors.leftMargin: 74
        anchors.topMargin: 210
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
        anchors.leftMargin: 33
        anchors.topMargin: 258
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
        color: "#000000"
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

    SvgPathItem {
        id: line_9_Stroke_
        width: 20
        height: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 43
        anchors.topMargin: 301
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
        color: "#4d171716"
        text: qsTr("Overview")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 92
        anchors.topMargin: 293
        font.pixelSize: 16
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"ff6bfaed-f63c-5fb8-b41d-a26b0a1a9c0c"}D{i:1;uuid:"308a1a67-f28f-528f-b890-f8e1967af485"}
D{i:2;uuid:"1c11ca14-d9f6-57c1-a046-1f0928e527ec"}D{i:3;uuid:"18f2a1d3-ec8b-56ed-9c72-6d934331198a"}
D{i:4;uuid:"2a3f7379-ef36-5da5-bea4-b4c77f3091d1"}D{i:5;uuid:"e8ce5175-0c5e-5d39-959c-de02f54caef3"}
D{i:6;uuid:"74c66643-3f50-5a92-9392-112435e5a52a"}D{i:7;uuid:"d4d12ab6-63da-56ad-a0b7-e501488779ca"}
D{i:8;uuid:"3197396e-66af-59ee-a823-f52cccda6d4a"}D{i:9;uuid:"4a50b329-98db-557e-9c3b-c296a26a35f8"}
D{i:10;uuid:"b9ed038f-a314-57d2-98e5-4db61fcbaf55"}D{i:11;uuid:"5b8d38bf-17f5-5427-b993-7816d40be20f"}
D{i:12;uuid:"5be03c19-43b7-5edd-9063-9d0a255302d1"}D{i:13;uuid:"4bd06dc1-c182-57df-a575-6dc7f07f91d4"}
D{i:14;uuid:"bdb7da72-10e5-58a9-9f52-c0d69e5b60cf"}D{i:15;uuid:"d3289421-2cc1-5826-b2e8-b0149e18825c"}
D{i:16;uuid:"f0ae6478-a27c-54fb-8651-0e44528e4cfe"}D{i:17;uuid:"23dfdaed-8283-5b70-98d8-632cc03d5942"}
D{i:18;uuid:"fd161bc0-26a7-547a-a93b-8cc7cbba3d79"}D{i:19;uuid:"a6568cff-3781-51fc-a4f8-2fe87a9f8ae3"}
D{i:20;uuid:"9f07b5ef-df53-529c-b134-7fd4ebf38c4a"}D{i:21;uuid:"3eaf26e9-47a0-51cf-ae32-da5ff7d012ff"}
D{i:22;uuid:"33368870-73d7-5909-81f3-5144f2ace04b"}D{i:23;uuid:"e855bf77-b5ca-58a7-ab62-622023fc5b79"}
D{i:24;uuid:"de6265ec-3fe5-5cad-b18b-16e4f0e986ed"}D{i:25;uuid:"f5a085b2-5449-5451-b8b2-6fffa7558572"}
D{i:26;uuid:"c52a2bc8-ffe7-54c8-9228-705d1427c7c2"}D{i:27;uuid:"104be414-737c-5c41-b57a-3cb350a1e193"}
D{i:28;uuid:"91692c7e-8c83-57a6-a3a8-c5e262a2f5d4"}D{i:29;uuid:"6aab1c09-d111-5fb9-be48-a7c4fa1904a8"}
D{i:30;uuid:"70c121ca-268a-562e-9992-1045c15c4847"}D{i:31;uuid:"8e43598a-8443-58f5-87b6-4bd3daa8c755"}
D{i:32;uuid:"23459f13-ae8b-516e-a953-6b202a9d6b2d"}D{i:33;uuid:"d02e999e-0549-5d1a-86c9-9dee6a8a4094"}
D{i:34;uuid:"cb27757f-1780-5bcb-962a-6d1c8bc42cbd"}D{i:35;uuid:"bdd5554e-fd3d-5ba5-bfdd-ac881104fad9"}
D{i:36;uuid:"a0731193-ae29-5a7a-859e-be24c844b156"}D{i:37;uuid:"54742b20-98d9-559c-a2b8-361192c80b52"}
D{i:38;uuid:"0a5af325-2d94-5de7-be77-e9fb0d42a644"}D{i:39;uuid:"027a8257-de89-5ee5-a54b-6e475a042620"}
D{i:40;uuid:"af3a9e17-bcbe-5a5b-b0fb-ea6caaea541d"}D{i:41;uuid:"3b85d90a-21f4-538e-83bc-21b8dce0b46b"}
D{i:42;uuid:"b4910476-82ba-53ec-8127-7637a25b8421"}D{i:43;uuid:"16929536-6d4a-5788-b24b-4e88fe6e8954"}
D{i:44;uuid:"dc7f0462-390a-536a-ab0b-da9f99d328d9"}D{i:45;uuid:"0ee76805-cab6-5b5a-8185-a06c334f31a8"}
D{i:46;uuid:"0181ef18-68d5-5908-b9b7-cfbe62e10ace"}D{i:47;uuid:"00d3b3c5-d5a3-5bc9-9f4a-8d28509d295a"}
D{i:48;uuid:"d01f0d0f-54e3-52d7-85f4-b48969166710"}D{i:49;uuid:"09a8f056-ef2f-58bc-95a0-f7088dccefae"}
D{i:50;uuid:"9accedab-a86d-58aa-9dfe-882f67d54440"}D{i:51;uuid:"f7d15ecf-312d-5d64-a793-28ff92bbee3f"}
D{i:52;uuid:"9ed8f816-7e76-5a80-94c7-d624fc3abf35"}D{i:53;uuid:"2929f021-41bd-50f6-b96c-c2fb0a6f612d"}
D{i:54;uuid:"0d1c7aae-0095-5820-8558-69102353f502"}D{i:55;uuid:"f7c8a4ee-b2e6-5897-b1c0-885494baa86d"}
D{i:56;uuid:"a20927e2-0210-5c3f-97ef-8d70adb18296"}D{i:57;uuid:"780b8a8d-0d26-54ba-a970-bb93111c0e25"}
D{i:58;uuid:"a4949276-b9d1-5390-9200-71594a74a0f9"}D{i:59;uuid:"9af88c83-d540-5af7-af8a-3ca80ddb8de9"}
D{i:60;uuid:"06d367c7-77b3-5359-af90-4c23276adc77"}D{i:61;uuid:"a1f3f8d2-518c-5309-b525-b14551e95655"}
D{i:62;uuid:"25d38c18-88fa-5e5f-aa9d-138df2179b99"}D{i:63;uuid:"a39577b9-d4d7-5ef2-9a71-09b3857648a0"}
D{i:64;uuid:"dfe98943-3353-58b6-bf54-e3dc41e1d1f4"}D{i:65;uuid:"4079f0d1-511d-5312-b91b-98b263f78339"}
D{i:66;uuid:"7ade5d94-5609-5570-b983-548435d25953"}D{i:67;uuid:"0767a455-8cdf-5762-b1b0-c6c7776011f2"}
D{i:68;uuid:"d149afff-2d86-5d8b-9f1a-b34e31f30a0b"}D{i:69;uuid:"8ccb74a2-03c3-5ed5-80eb-0b0592a0600c"}
D{i:70;uuid:"74bce3c0-58e1-57a5-8cd0-5076d99a1eca"}D{i:71;uuid:"e201cbe4-06df-5f6b-adfd-3531895a71ab"}
D{i:72;uuid:"d31f3365-4ffe-5400-be3f-c20ac0953425"}D{i:73;uuid:"338c9d19-8766-5e15-ad48-3c949986b1d7"}
D{i:74;uuid:"c6ac70e3-29f3-5823-bb70-ef8f96fbb40c"}D{i:75;uuid:"8c5367f2-df4b-5752-8839-4ab05d399471"}
D{i:76;uuid:"164cf006-03c3-5656-ac5c-75688f64bddd"}D{i:77;uuid:"584353ed-2b2c-5155-a915-ca2cb1b36f04"}
D{i:78;uuid:"383099f2-19d9-51fb-9d72-a93eeeb09e36"}D{i:79;uuid:"c1a3940a-2bb3-589d-8b82-ae1c4eeb2493"}
D{i:80;uuid:"c670b45e-d207-5c95-8e79-0f8fdad2b991"}D{i:81;uuid:"001d1dbf-25cc-574c-8c71-c5266c3b5386"}
D{i:82;uuid:"03539acd-0abc-5799-8f0f-5a8c72982593"}D{i:83;uuid:"0fa8ac20-2347-5f5b-80fc-8a914d68071d"}
D{i:84;uuid:"37d71e59-ba21-503d-a25b-0d869cac9b7a"}D{i:85;uuid:"c664e8e2-37e0-57b8-933a-62d3d1ff896e"}
D{i:86;uuid:"80c280da-354e-57b2-bf62-a704cb8b3a5e"}D{i:87;uuid:"1133d749-50c3-5a01-8c9d-8d5755a3144f"}
D{i:88;uuid:"2a5d7f69-7525-527d-b0c8-c8f23e2c832d"}D{i:89;uuid:"35eb9c6b-3640-5b3f-9fae-33414dfdaab0"}
D{i:90;uuid:"c6d35ba3-1c67-544b-a2be-46dc7da8ca49"}D{i:91;uuid:"5afa5fd1-b43f-5c05-8005-d030142d20c6"}
D{i:92;uuid:"63fd0a73-30bb-5db9-aef5-8deee351b19b"}D{i:93;uuid:"61ab5e80-fc15-5573-8f22-a05328c94254"}
D{i:94;uuid:"dc418a0a-8ccf-5e76-a2f4-10114e96ba4c"}
}
##^##*/

