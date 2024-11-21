import QtQuick
import QtQuick.Controls
import QtCharts
import QtQuick.Layouts
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline
Window {
    id: rootdashboard
    width: 899
    height: Screen.height
    minimumWidth: 400
    visible: true
    property bool isTablet: width < 900
    property bool isPhone: width < 450

    property string usernameRef: ""
       property real balance: 3000
       property real income: 3000
       property real expenses: 3000
       property string cardInfo: ""
       property string firstName: ""
       property string lastName: ""
       property string pfp: ""

    Component.onCompleted: {
            if (usernameRef !== "") {
                balance = dashboard.getDbVariable(usernameRef, "balance");
                income = dashboard.getDbVariable(usernameRef, "income");
                expenses = dashboard.getDbVariable(usernameRef, "expenses");
                cardInfo = dashboard.getDbVariable(usernameRef, "cardNumber");
                firstName = dashboard.getDbVariable(usernameRef, "first_name");
                lastName = dashboard.getDbVariable(usernameRef, "last_name");
                pfp = dashboard.getDbVariable(usernameRef, "pfp");
                userpfp.source = pfp;
            } else {
                console.log("Username is empty");
            }
        }

    Loader
    {
        id: loader
        source: ""
    }

    ColumnLayout
    {
        visible: false
        property real expensesValue
        property real incomeValue: 3000
        anchors.fill: parent
        id: dashboardwindowDesktop
        RowLayout
        {
            spacing: 8 // Adjust spacing between icon and TextField
            Image {
                id: name
                source: !isTablet ? "../assets/logo1.png" : "../assets/user.png"
            }
            Rectangle
            {
                id: account

                Layout.preferredWidth:177
                Layout.preferredHeight: 56
                color: "#fafafa"
                radius: 10
                border.color: "#727272"
                border.width: 0.1

                Text
                {
                    anchors.centerIn: parent
                    color: "#2f2f2f"
                    font.pixelSize: 18
                    text: qsTr("Personal account")

                }
            }

            SvgPathItem {
                id: element2

                Layout.preferredHeight: 20
                Layout.preferredWidth: 20
                strokeWidth: 0.66667
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 11.266765879830523 14.999986304570152 C 11.087435416453909 15.000821512844574 10.90974221034774 14.966319086167877 10.744112248014885 14.898503169407787 C 10.578482285682028 14.830687252647698 10.428252222864785 14.73092504721642 10.302236808644041 14.605068313374716 C 10.046635633950467 14.35263350847125 9.903066570985521 14.010444714360126 9.903066570985521 13.653669912978097 C 9.903066570985521 13.296895111596069 10.046635633950467 12.95470888537804 10.302236808644041 12.702274080474574 L 15.761838075493593 7.3170119379638106 L 10.302236808644041 1.9317502234352315 C 10.174572883127722 1.6709720931221894 10.135556452553612 1.3765401455989679 10.190980438223546 1.0921570324833911 C 10.24640442389348 0.8077739193678144 10.393314101848125 0.5485974588757627 10.60990308995538 0.3530968294994309 C 10.826492078062634 0.15759620012309908 11.10121624140715 0.03619267815174746 11.39329865378966 0.006904616909822484 C 11.685381066172171 -0.02238344433210249 11.979252027888265 0.042005595267863766 12.231294951017002 0.19051497130893041 L 18.600831497901982 6.4733208176125965 C 18.856432672595556 6.725755622516062 19 7.067941420751908 19 7.424716222133937 C 19 7.781491023515966 18.856432672595556 8.123678961662726 18.600831497901982 8.376113766566192 L 12.231294951017002 14.551214459360923 C 12.109970716155976 14.686852351503877 11.961840830695891 14.796621194974472 11.795985137025243 14.873789766249827 C 11.630129443354594 14.950958337525181 11.450043197615624 14.993900596041065 11.266765879830523 14.999986304570152 Z M 1.2574968906063428 14.999986304570152 C 0.9063663710443837 14.973501036785944 0.5797223593606816 14.812402864093858 0.34756334613141737 14.551214459360923 C 0.1237402164342142 14.304379935062547 1.6163666751277457e-15 13.984833163842879 1.6163666751277457e-15 13.653669912978097 C 0 13.322506662113316 0.1237402164342142 13.002960746858012 0.34756334613141737 12.756126222559637 L 5.807164612980969 7.370864080048874 L 0.34756334613141737 1.9856023655202943 C 0.22592196470678344 1.7343732399232734 0.1862334112101406 1.4521255171594034 0.23396310125296507 1.1777243662354242 C 0.28169279129578956 0.903323215311445 0.4144932437084562 0.6502648269933384 0.6140768845994765 0.4533987605864246 C 0.8136605254904968 0.25653269417951075 1.0702104416206775 0.1255413176602739 1.3483994752395805 0.07846152551096222 C 1.6265885088584835 0.03138173336165054 1.9127332975823097 0.07052988552503768 2.1674304350812683 0.19051497130893041 L 8.536965246405746 6.4733208176125965 C 8.79256642109932 6.725755622516062 8.936135484064266 7.067941420751908 8.936135484064266 7.424716222133937 C 8.936135484064266 7.781491023515966 8.79256642109932 8.123678961662726 8.536965246405746 8.376113766566192 L 2.1674304350812683 14.551214459360923 C 1.9352714218520042 14.812402864093858 1.608627410168302 14.973501036785944 1.2574968906063428 14.999986304570152 Z"
                joinStyle: 0
                fillColor: "#b2b2b2"
                antialiasing: true
            }
            Rectangle
            {

                Layout.preferredWidth: 128
                Layout.preferredHeight: 56
                color: "#fafafa"
                radius: 10
                border.color: "#727272"
                border.width: 0.1
                Text {
                    text: qsTr("Dashboard")
                    anchors.centerIn: parent
                    color: "#196e1a"
                    font.pixelSize: 18
                }
            }

            Item {
                Layout.fillWidth: true // Ensure this item takes up available space

                RowLayout {

                    anchors.fill: parent // Ensures the layout fills the space
                    anchors.verticalCenterOffset: 50


                    TextField {
                        SvgPathItem {
                            id: searchIcon
                            width: 22
                            height: 18

                            strokeWidth: 1
                            strokeColor: "black"
                            path: "M 18 17 L 13.6570492891393 12.898324328631562 M 13.6570492891393 12.898324328631562 C 14.399928642135901 12.196716107094069 14.989212248995793 11.363786352191921 15.39125566952893 10.447090966349245 C 15.793299090062066 9.53039558050657 16.00022887138912 8.547887578608355 16.000228879216625 7.55566363740785 C 16.00022888704413 6.563439696207345 15.79330096758689 5.58093169430913 15.391257576855734 4.664236308466454 C 14.98921418612458 3.747540922623778 14.399928642135901 2.9146109988437363 13.6570492891393 2.2130027210136127 C 12.914169936142699 1.5113944431834894 12.032244372909094 0.9548483359951139 11.061625729075672 0.5751406891934678 C 10.09100708524225 0.19543304239182174 9.050704494997083 -7.392641508222264e-9 8.000114439608312 4.1941278728217626e-16 C 6.949524384219542 7.3926457023501376e-9 5.909221793974374 0.19543301424550608 4.938603150140952 0.5751406891934678 C 3.96798450630753 0.9548483641414296 3.0860584066382604 1.5113944431834894 2.343179113245622 2.2130027210136127 C 0.8428666692733466 3.6299645862393577 -1.5808361118645898e-8 5.551777008701226 0 7.55566363740785 C 1.5808361118645898e-8 9.559550266114474 0.8428666692733466 11.48136257599108 2.343179113245622 12.898324328631562 C 3.843491557217897 14.315286081272044 5.878352126860122 15.11132725988558 8.000114439608312 15.1113272748157 C 10.121876752356503 15.11132728974582 12.1567367259591 14.315286081272044 13.6570492891393 12.898324328631562 Z"
                            anchors.top: parent.top
                            anchors.topMargin: 12
                            anchors.left: parent.left
                            anchors.leftMargin: 5
                        }
                        id: searchField

                        anchors.verticalCenter: parent.verticalCenter
                        anchors.verticalCenterOffset: -3 // Shift upwards by 5 pixels
                        Layout.fillWidth: true // Make it expand to fill the remaining space

                        placeholderText: qsTr("Search")
                        font.pixelSize: 18
                        color: "#802f2f2f"

                        leftPadding: 30 // Adds space around the text, adjusting the padding as needed
                    }


                }
            }


            Rectangle
            {

                SvgPathItem {
                    id: element5
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 11.821999692916869 18.59742223269367 C 12.631599688529967 18.541419394801377 13.43046706020832 18.415599815046477 14.218600368499756 18.219963230559163 C 15.188442921638488 18.503066461458616 16.21173041462898 18.56741682165295 17.210899543762206 18.40813407905796 C 17.250579015351832 18.403122862186017 17.29050008356571 18.400130489747944 17.33049964904785 18.39917213823698 C 17.686999651789666 18.399172138236978 18.15504904091358 18.598543810507977 18.83699903488159 19.018565088441367 L 18.83699903488159 18.328608871176943 C 18.837166276611967 18.208398102624137 18.870438669808205 18.090432175404697 18.933344173431394 17.987006177681117 C 18.996249677054582 17.883580179957537 19.08648624755442 17.798480972346542 19.19464998245239 17.740579509337934 C 19.491349966824053 17.580411387875483 19.767351091653104 17.393361265993544 20.019201087951657 17.18951094324236 C 21.012801113724706 16.379709930602562 21.57400026321411 15.30109595700954 21.57400026321411 14.158638102394102 C 21.573617585684403 13.78083030958752 21.511905243992803 13.405457208525577 21.391149806976316 13.046421724245063 C 21.69014979600906 12.508794500507227 21.933950735628606 11.942045508820941 22.11220073699951 11.355135788739297 C 22.68720073699951 12.183977787876216 22.997699999890756 13.158427425064867 23 14.158638102394102 C 23 15.711036787294521 22.247900223731992 17.160390176702673 20.94725017547607 18.21884378908355 C 20.729666201025246 18.39513956529017 20.501151917874815 18.558228061747204 20.263000965118408 18.707187314787063 L 20.263000965118408 20.322310639516036 C 20.263000965118408 20.87785877404983 19.596000607311726 21.195954965713288 19.12565059661865 20.86665828408055 C 18.68066791445017 20.54659856349534 18.22013486474752 20.247569929041507 17.74564971923828 19.970611609352765 C 17.609220036119222 19.892517289417658 17.467435830831526 19.823657856779434 17.32130031585693 19.764521151889408 C 16.93030031174421 19.821270694398198 16.53240019083023 19.85002057681537 16.12760019302368 19.85076728130148 C 14.503800261020661 19.85076728130148 13.003049635887145 19.38258198047142 11.821999692916869 18.59742223269367 Z M 3.236100149154663 15.364938836623192 C 1.1845001041889192 13.69605428161949 0 11.41561820758742 0 8.976134655259024 C 0 3.9874019344241676 4.8966998815536495 0 10.875549745559692 0 C 16.854399609565732 0 21.752251052856444 3.9874019344241676 21.752251052856444 8.976134655259024 C 21.752251052856444 13.964867376093881 16.854399609565732 17.951149869042435 10.875549745559692 17.951149869042435 C 10.203183075785637 17.951149869042435 9.540783447027206 17.901494673392342 8.888350105285644 17.80218297191569 C 8.606600099802018 17.866026206194945 7.480749857425689 18.508937487372712 5.858099842071533 19.648035148264956 C 5.271599853038787 20.061336072132253 4.436699771881103 19.662596098999764 4.436699771881103 18.967040871821506 L 4.436699771881103 16.211702314021032 C 4.016307799518108 15.958478433489212 3.6150813102722164 15.67624884828455 3.236100149154663 15.36717985591311 M 8.92859992980957 16.104176114878864 C 8.976899929158389 16.104176114878864 9.026733394898473 16.107909893529214 9.078100061416626 16.115376938651064 C 9.672169306874276 16.21133200140563 10.273366856575011 16.259284723109005 10.875549745559692 16.25874449206106 C 15.926349973678587 16.25874449206106 19.968600368499754 12.966896783406384 19.968600368499754 8.976134655259024 C 19.968600368499754 4.985372527111664 15.926349973678587 1.6946458621866218 10.875549745559692 1.6946458621866218 C 5.827049899101257 1.6946458621866218 1.7824999451637267 4.986492502671949 1.7824999451637267 8.976134655259024 C 1.7824999451637267 10.905992475815118 2.7266499221324914 12.722724486469955 4.396449947357177 14.082473355278617 C 4.818116623163223 14.424464027909433 5.27658340781927 14.730987389135464 5.771850061416625 15.002041119026414 C 6.049000057578086 15.153248785090888 6.22034990787506 15.433261585097695 6.22034990787506 15.735676917226641 L 6.22034990787506 17.325038133645684 C 7.503749972581862 16.496196134508764 8.347849455475806 16.104176114878864 8.927449464797974 16.104176114878864"
                    joinStyle: 0
                    fillColor: "#666666"
                    antialiasing: true
                    anchors.topMargin: 13// Adjust this to move the icon down
                    anchors.leftMargin: 5
                }
                Text {
                    id: chatText
                    text: qsTr("Chat")
                    font.pixelSize: 15
                    anchors.centerIn: parent
                    anchors.horizontalCenterOffset: 10 // Adjust to move text to the right
                }
                Layout.preferredWidth: 80
                Layout.preferredHeight: 50
                color: "#fafafa"
            }

            Rectangle
            {

                Layout.preferredWidth: 200
                Layout.preferredHeight: 56

                Image {
                    id: userpfp
                    source: "../assets/user.png"
                    anchors.top: parent.top
                    anchors.topMargin: 8
                }
                Text
                {
                    id: fullname
                    width:130
                    anchors.left: userpfp.right
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 8


                    text: qsTr("Boyan Kiovtorov")
                }

                Text {
                    width: 130
                    anchors.top: fullname.bottom
                    anchors.topMargin: 10
                    anchors.left: fullname.left
                    text: qsTr("@kiovtorov")
                }
            }

        }

        RowLayout
        {
            spacing: 10
            Text {
                text: qsTr("Good morning, Boyan")
                font.pixelSize: !isTablet ? 35 : 15
                font.bold: true
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop // Combine alignment flags
                Layout.leftMargin: 15
                Layout.topMargin: 15
            }


            Item
            {

                Layout.fillWidth: true
            }

            Button
            {

                background:Text {
                    id: overviewPage
                    text: qsTr("Overview")
                    color: "#367C21"
                    font.pixelSize: 15

                }
            }

            Button
            {

                background:Text {
                    id: walletPage
                    text: qsTr("Wallet")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
            }
            Button
            {

                background:Text {
                    id: transactionsPage
                    text: qsTr("Transactions")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
                onClicked:
                {
                    dashboardwindowDesktop.visible = false
                    loader.source = "Transactions.qml"

                }
            }
            Button
            {

                background:Text {
                    id: tradingPage
                    text: qsTr("Trading")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
                onClicked:
                {
                    dashboardwindowDesktop.visible = false
                    loader.source = "TradingDashboard.qml"
                }
            }
            Button
            {

                background:Text {
                    id: settingsPage
                    text: qsTr("Settings")
                    color: "#2F2F2F"
                    font.pixelSize: 15
                    opacity: 0.5

                }
            }
        }
        RowLayout
        {

            Text
            {
               text: qsTr("This is your finance report")
               Layout.alignment: Qt.AlignTop | Qt.AlignLeft
               Layout.topMargin: 10
               Layout.leftMargin: 20
               font.pixelSize: 20
               color: "#2F2F2F"
               opacity: 0.7

            }
        }
        GridLayout {
                columns: 4
                columnSpacing: 10

                Layout.fillWidth: true
                Layout.fillHeight: true

                // First rectangle
                Rectangle {
                    Layout.column: 0
                    border.width: 1
                    border.color: "#727272"
                    Layout.preferredHeight: 186
                    Layout.preferredWidth: 420

                    radius: 10

                    Text {

                        color: "#b3000000"
                        text: qsTr("My balance")
                        font.pointSize: 16
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 20
                    }
                    ColumnLayout
                    {
                        id:sd
                        anchors.fill: parent
                    RowLayout {
                        id: textRow
                        width: parent.width
                        height: 48
                        anchors.top: parent.top
                        anchors.topMargin: 40
                        anchors.horizontalCenter: parent.horizontalCenter



                        Text {
                            property real balanceValue: rootdashboard.balance
                            visible: !isPhone
                            id: balance
                            color: "black"
                            text: "$" + balanceValue.toFixed(2)
                            font.pixelSize: 40
                            anchors.left: parent.left

                            SequentialAnimation on balanceValue {
                                NumberAnimation {
                                    running: true
                                    loops: 1
                                    from: 0.0
                                    to: 2285.93
                                    duration: 2000
                                }
                            }


                        }

                        Text {

                            id: percent
                            text: qsTr("+6.7%")
                            color: "#249226"
                            font.pixelSize: 20
                            anchors.left: balance.right
                            anchors.leftMargin: 5
                        }
                        Text {
                               text: qsTr("Compared to last month")
                               font.pixelSize: 15
                               color: "#2f2f2f" // Optional for styling
                               anchors.left:  percent.right
                               anchors.leftMargin: 10
                        }
                    }

                    RowLayout
                    {
                        anchors.fill: parent
                        anchors.topMargin: 88
                        anchors.leftMargin: 20
                        Text {
                            id: fdfd
                            text: qsTr("**** **** ****  2472")
                            anchors.top: balance.bottom
                            font.pixelSize: 20

                        }
                    }

                    RowLayout
                    {
                        anchors.fill: parent
                        anchors.topMargin: 120
                        anchors.leftMargin: 10
                        spacing: 190
                        Button
                        {
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
                                anchors.centerIn: rectangle_28
                                font.pixelSize: 22
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.NoWrap
                                font.weight: Font.Medium
                            }
                        }

                        Button
                        {
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

                }

                // Second rectangle
                Rectangle {

                    Layout.column: 1
                    border.width: 1
                    border.color: "#727272"
                    Layout.preferredHeight: 186
                    Layout.fillWidth: true
                    radius: 10

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
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Medium
                    }
                    Text {
                        property real incomeValue: dashboardwindowDesktop.incomeValue
                        id: income
                        width: 174
                        height: 40
                        color: "#000000"
                        text: "$" + incomeValue.toFixed(2)
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 14
                        anchors.topMargin: 92
                        font.pixelSize: 32
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.Normal

                        SequentialAnimation on incomeValue {
                            NumberAnimation {
                                running: true
                                loops: 1
                                from: 0.0
                                to: 2403.84
                                duration: 2000
                            }
                        }
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
                }

                // Third rectangle
                Rectangle {


                    Layout.column: 2
                    border.width: 1
                    border.color: "#727272"
                    Layout.preferredHeight: 186
                    Layout.fillWidth: true

                    radius: 10

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
                        property real expensesValue: dashboardwindowDesktop.expensesValue
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

                        SequentialAnimation on expensesValue {
                            NumberAnimation {
                                from: 0.0
                                to: 157
                                duration: 2000
                            }
                        }
                    }
                }

                // Rectangle spanning below the first three
                Rectangle {
                    Layout.row: 1
                    Layout.column: 0
                    Layout.columnSpan: 3
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: 200
                    border.width: 1
                    border.color: "#727272"
                    radius: 10

                    ChartView {
                        id: bar
                        anchors.fill: parent
                        animationOptions: ChartView.SeriesAnimations
                        BarSeries {
                            id: mySeries

                            axisX: BarCategoryAxis {
                                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
                                gridVisible: false
                            }

                            axisY: ValuesAxis {
                                labelFormat: "$%.0f" // Format the labels to include '$' before each value
                                min: 0
                                max: 1200 // Adjust as needed for your data
                            }

                            // BarSet for "Earnings"
                            BarSet {
                                label: "Earnings"
                                values: [800, 850, 900, 950, 1000, 1100] // Example values for each month
                            }

                            // BarSet for "Spendings"
                            BarSet {
                                label: "Spendings"
                                values: [560, 600, 650, 700, 750, 800]
                            }
                        }
                    }
                }

                // Side rectangle
                Rectangle {
                    Layout.row: 0
                    Layout.rowSpan: 2
                    Layout.column: 3
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    border.width: 1
                    border.color: "#727272"
                    radius: 10

                    ColumnLayout
                    {
                        anchors.fill: parent

                        ChartView {
                            id: pie
                            width: parent.width
                            Layout.fillWidth: true
                            Layout.fillHeight: true
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

                        ChartView {
                            id: pie1
                            Layout.fillWidth: true
                            Layout.fillHeight: true
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
                }
            }
    }

    RowLayout {
            id: layouttablet
            anchors.fill: parent
            visible: isTablet  // Corrected to 'isTablet'

            Rectangle {
                color: "#F7F7F7"
                Layout.fillHeight: true
                Layout.preferredWidth: 100

                ColumnLayout
                {


                    anchors.fill: parent
                    spacing: 10
                    Item
                    {
                        height:30
                    }
                    Image {
                        id: pfp
                        source: "../assets/user.png"
                        width:30
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                    }
                    Rectangle
                    {
                        width:50
                        height: 50
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        radius:10

                        SvgPathItem
                        {
                            width: 38
                            height: 40
                            path: "M0 27V9L12.5 0L25 9V27H15.625V16.5H9.375V27H0Z"
                            strokeWidth: 2
                            strokeColor: "#3A61B3"
                            fillColor: "#3A61B3"
                            anchors.left: parent.left
                            anchors.leftMargin: 12
                            anchors.top: parent.top
                            anchors.topMargin: 10
                        }
                    }
                    Rectangle
                    {
                        width:50
                        height: 50
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        color: "transparent"
                        SvgPathItem
                        {
                            width: 38
                            height: 26
                            path: "M18.2858 7.28995C18.2858 7.67311 18.699 7.91388 19.0324 7.72492L24.6388 4.54653C24.9766 4.35497 24.9766 3.86815 24.6388 3.6766L19.0324 0.498209C18.699 0.309244 18.2858 0.550016 18.2858 0.933172V1.9786C18.2858 2.25474 18.0619 2.4786 17.7858 2.4786H0.906947C0.630805 2.4786 0.406948 2.70246 0.406948 2.9786V5.21677C0.406948 5.49291 0.630806 5.71677 0.906948 5.71677H17.7858C18.0619 5.71677 18.2858 5.94063 18.2858 6.21677V7.28995ZM7.52625 13.8617C7.52625 13.4786 7.11302 13.2378 6.7797 13.4267L1.17346 16.6043C0.835527 16.7958 0.835527 17.2827 1.17346 17.4743L6.7797 20.6518C7.11302 20.8407 7.52625 20.6 7.52625 20.2168V19.1713C7.52625 18.8952 7.7501 18.6713 8.02625 18.6713H24.906C25.1821 18.6713 25.406 18.4474 25.406 18.1713V15.9331C25.406 15.657 25.1821 15.4331 24.906 15.4331H8.02625C7.7501 15.4331 7.52625 15.2093 7.52625 14.9331V13.8617Z"
                            strokeWidth: 2
                            strokeColor: "#7B8188"
                            fillColor: "#7B8188"
                            anchors.left: parent.left
                            anchors.leftMargin: 12
                            anchors.top: parent.top
                            anchors.topMargin: 10
                        }
                    }
                    Rectangle
                    {
                        width:50
                        height: 50
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        color: "transparent"
                        SvgPathItem
                        {
                            width: 30
                            height: 32

                            path: "M4.48163 13.1703H1.868C1.03101 13.1703 0.353027 13.7801 0.353027 14.5299V23.3904C0.353027 24.1403 1.03245 24.75 1.868 24.75H4.48307C5.32151 24.75 5.99949 24.1403 5.99949 23.3891V14.5299C5.99911 14.1691 5.83922 13.8231 5.55492 13.568C5.27062 13.3129 4.88514 13.1694 4.48307 13.169M14.1598 0.75H11.5462C10.7078 0.75 10.0298 1.35973 10.0298 2.11086V23.3878C10.0298 24.1403 10.7092 24.7487 11.5477 24.7487H14.1598C14.9983 24.7487 15.6763 24.139 15.6763 23.3878V2.11216C15.6763 1.35973 14.9968 0.751297 14.1584 0.751297M23.8381 7.46611H21.223C20.3845 7.46611 19.7066 8.07584 19.7066 8.82827V23.3878C19.7066 24.1403 20.386 24.7487 21.223 24.7487H23.8366C24.2387 24.7484 24.6242 24.6049 24.9085 24.3497C25.1928 24.0946 25.3526 23.7487 25.353 23.3878V8.82697C25.353 8.07454 24.6736 7.46611 23.8352 7.46611"
                            strokeWidth: 2
                            strokeColor: "#7B8188"
                            fillColor: "#7B8188"
                            anchors.left: parent.left
                            anchors.leftMargin: 12
                            anchors.top: parent.top
                            anchors.topMargin: 10
                        }
                    }
                    Item
                    {
                        Layout.fillHeight: true
                    }


                }
            }

            Rectangle {
                color: "#F7F7F7"
                Layout.fillWidth: true
                Layout.fillHeight: true

                Flickable {
                    id: flickable
                    anchors.fill: parent
                    contentWidth: parent.width
                    contentHeight: columnLayout.implicitHeight
                    clip: true

                    ColumnLayout {
                        id: columnLayout
                        width: parent.width
                        spacing: 20
                    RowLayout
                    {
                        anchors.fill: parent
                        anchors.topMargin: 100
                        anchors.leftMargin: 35
                        Text {
                            id:test
                            text: qsTr("Good evening, Boyan")
                            font.pixelSize: 30
                            font.bold: true
                        }

                        Item {
                            anchors.right: parent.right
                            anchors.rightMargin: 150
                            anchors.top: parent.top
                            anchors.topMargin: 10

                            width: 30
                            height: 30

                            // Circular arc
                            Rectangle {
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent
                                color: "#727272"
                                opacity: 0.3
                                radius:180
                                antialiasing: true
                            }

                            // Arrow centered in the circle
                            Item {
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent

                                Image
                                {
                                    anchors.centerIn: parent
                                    source: "/Users/boyankiovtorov/Downloads/leftArrow.svg"
                                }
                            }
                            Text {

                                text: qsTr("Request")
                                anchors.top: parent.bottom
                                anchors.right: parent.right
                                anchors.rightMargin: -12
                            }
                        }

                        Item {
                            anchors.right: parent.right
                            anchors.rightMargin: 20
                            anchors.top: parent.top
                            anchors.topMargin: 10

                            width: 30
                            height: 30

                            // Circular arc
                            Rectangle {
                                id: circle2
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent
                                color: "#727272"

                                opacity: 0.3
                                antialiasing: true

                                radius: 180
                            }

                            // Arrow centered in the circle
                            Item {
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent

                                Image
                                {
                                    anchors.centerIn: parent
                                    source: "/Users/boyankiovtorov/Downloads/Analytics.svg"
                                }
                                Text {

                                    width: 55
                                    height: 16

                                    text: qsTr("Analytics")
                                    anchors.top: parent.bottom
                                    anchors.right: parent.right
                                    anchors.rightMargin: -15
                                    anchors.topMargin: 1
                                }
                            }

                        }
                        Item {
                            anchors.right: parent.right
                            anchors.rightMargin: 85
                            anchors.top: parent.top
                            anchors.topMargin: 10

                            width: 30
                            height: 30

                            // Circular arc
                            Rectangle {
                                id: circle5
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent
                                anchors.left: parent.left
                                anchors.leftMargin: 100
                                color: "#727272"

                                opacity: 0.3
                                antialiasing: true

                                radius: 180
                            }

                            // Arrow centered in the circle
                            Item {
                                width: parent.width
                                height: parent.height
                                anchors.left: parent.left

                                Image
                                {
                                    anchors.centerIn: parent
                                    source: "/Users/boyankiovtorov/Downloads/leftArrow.svg"
                                    rotation: -180
                                }
                                Text {

                                    text: qsTr("Send")
                                    anchors.top: parent.bottom
                                    anchors.right: parent.right
                                    anchors.rightMargin: 2
                                }
                            }

                        }


                    }

                    TextField {
                        SvgPathItem {
                            id: searchIcon2
                            width: 22
                            height: 18

                            strokeWidth: 1
                            strokeColor: "black"
                            path: "M 18 17 L 13.6570492891393 12.898324328631562 M 13.6570492891393 12.898324328631562 C 14.399928642135901 12.196716107094069 14.989212248995793 11.363786352191921 15.39125566952893 10.447090966349245 C 15.793299090062066 9.53039558050657 16.00022887138912 8.547887578608355 16.000228879216625 7.55566363740785 C 16.00022888704413 6.563439696207345 15.79330096758689 5.58093169430913 15.391257576855734 4.664236308466454 C 14.98921418612458 3.747540922623778 14.399928642135901 2.9146109988437363 13.6570492891393 2.2130027210136127 C 12.914169936142699 1.5113944431834894 12.032244372909094 0.9548483359951139 11.061625729075672 0.5751406891934678 C 10.09100708524225 0.19543304239182174 9.050704494997083 -7.392641508222264e-9 8.000114439608312 4.1941278728217626e-16 C 6.949524384219542 7.3926457023501376e-9 5.909221793974374 0.19543301424550608 4.938603150140952 0.5751406891934678 C 3.96798450630753 0.9548483641414296 3.0860584066382604 1.5113944431834894 2.343179113245622 2.2130027210136127 C 0.8428666692733466 3.6299645862393577 -1.5808361118645898e-8 5.551777008701226 0 7.55566363740785 C 1.5808361118645898e-8 9.559550266114474 0.8428666692733466 11.48136257599108 2.343179113245622 12.898324328631562 C 3.843491557217897 14.315286081272044 5.878352126860122 15.11132725988558 8.000114439608312 15.1113272748157 C 10.121876752356503 15.11132728974582 12.1567367259591 14.315286081272044 13.6570492891393 12.898324328631562 Z"
                            anchors.top: parent.top
                            anchors.topMargin: 12
                            anchors.left: parent.left
                            anchors.leftMargin: 5

                        }
                        id: searchField2

                        Layout.fillWidth: true
                        anchors.top: parent.top
                        anchors.topMargin: 170
                        anchors.left: parent.left
                        anchors.leftMargin: 35
                        anchors.right: parent.right
                        anchors.rightMargin: 1

                        placeholderText: qsTr("Search")
                        font.pixelSize: 18
                        color: "#802f2f2f"

                        leftPadding: 30 // Adds space around the text, adjusting the padding as needed
                    }

                    Rectangle
                    {
                        id: rectangle_1
                        anchors.top: searchField2.bottom
                        anchors.topMargin: 50
                        anchors.left: searchField2.left
                        anchors.right: searchField2.right
                        anchors.rightMargin: 50
                        Layout.fillWidth: true
                        height:300
                        radius: 20

                        Text
                        {
                            id: balanceTablet
                            anchors.top: parent.top
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            anchors.topMargin: 15
                            text: qsTr("$1222.22")
                            font.pixelSize: 30
                            font.bold: true
                        }
                        Text
                        {
                            anchors.top: balanceTablet.bottom
                            anchors.left: balanceTablet.left
                            width: 150
                            text: qsTr("Euro")
                            font.pixelSize: 20
                        }
                        Item {
                            anchors.left: balanceTablet.right
                            anchors.leftMargin: 29
                            anchors.top: balanceTablet.top
                            anchors.topMargin: 15

                            width: 5
                            height: 5

                            // Circular arc
                            Rectangle {
                                id: circle3
                                width: 32
                                height: 32

                                anchors.centerIn: parent
                                color: "#0074FF"
                                opacity: 0.3
                               radius:180
                            }

                            // Arrow centered in the circle
                            Item {

                                anchors.centerIn: parent

                                Image
                                {
                                    anchors.centerIn: parent
                                    source: "/Users/boyankiovtorov/Downloads/Vector.png"
                                }
                            }


                        }
                        Image {
                            id: currencyImage
                            anchors.right: parent.right
                            anchors.rightMargin: 50
                            anchors.top: parent.top
                            anchors.topMargin: 50
                            source: "../assets/eur.png"
                        }

                    }

                    Rectangle
                    {
                        id: rectangle_2
                        anchors.top: rectangle_1.bottom
                        anchors.topMargin: 30
                        anchors.left: searchField2.left
                        anchors.right: searchField2.right
                        anchors.rightMargin: 50
                        Layout.fillWidth: true
                        implicitHeight:180
                        radius: 20
                        border.width: 1

                        Text
                        {
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.topMargin: 20
                            anchors.leftMargin: 20
                            text:qsTr("Transactions")
                        }
                        ColumnLayout
                        {
                            anchors.fill: parent
                            anchors.topMargin: 40
                        }

                    }


                    Rectangle
                    {
                        id: rectangle_3
                        anchors.top: rectangle_1.bottom
                        anchors.topMargin: 230
                        anchors.left: searchField2.left
                        anchors.right: searchField2.right
                        anchors.rightMargin: 50
                        Layout.fillWidth: true
                        implicitHeight:300
                        radius: 20

                        ColumnLayout
                        {
                            anchors.fill: parent

                            Rectangle
                            {
                                implicitHeight: 100
                            }
                            ListModel {
                                    id: itemModel
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/Group.svg"; text: "Cash"; text2: "Bulgarian Lev"; color: "#667DFF" }
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/safe.svg"; text: "Savings & Funds"; text2: "Earn interest";color: "#FF7A41" }
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/invest.svg"; text: "Invest"; text2: "Invest for as little as 1 лв";color: "#2AB2FE" }
                                    ListElement { imageSource: "/Users/boyankiovtorov/Downloads/bitcoin.svg"; text: "Crypto" ; text2: "Invest for as little as 1 лв";color: "#BF5BF3"}
                                }


                            ListView {
                                id: listView
                                anchors.fill: parent
                                anchors.margins: 15
                                spacing: 10
                                clip: true

                                model: itemModel

                                delegate: Item {
                                    width: listView.width
                                    height: 60

                                    Row {
                                        spacing: 10
                                        height: parent.height // Ensures proper alignment without anchors
                                        anchors.fill: parent // Removed to prevent conflicts

                                        Rectangle {
                                            id: circle
                                            width: 40
                                            height: 40
                                            color: model.color // Pre-applied transparency
                                            radius: 25
                                            
                                            Image
                                            {
                                                anchors.centerIn: parent
                                                width:18
                                                height:18
                                                source: model.imageSource
                                            }
                                        }
                                        

                                        Text {
                                            id:text1
                                            text: model.text
                                            font.pixelSize: 16
                                            anchors.left: parent.left
                                            anchors.leftMargin: 50
                                        }

                                        Text
                                        {
                                            anchors.top: text1.bottom
                                            text: model.text2
                                            font.pixelSize: 16
                                            anchors.left: parent.left
                                            anchors.leftMargin: 50
                                        }
                                    }
                                }
                            }

                        }
                    }

                    Item
                    {
                        Layout.fillHeight: true
                    }

                }
            }

        }
    }

}
