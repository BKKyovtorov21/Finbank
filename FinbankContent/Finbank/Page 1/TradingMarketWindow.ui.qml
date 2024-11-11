import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: tradingMarketWindow
    width: 1280
    height: 832
    color: "#ffffff"
    property alias imageSource: imageSource.source
    property alias searchbar: searchbar
    property alias dashboardButton: dashboardButton
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

    TextField {
        id: searchbar
        x: 242
        y: 27
        width: 387
        height: 52
        placeholderText: qsTr("Search")
        font.pixelSize: 18
        color: "#802f2f2f"
        padding: 38 // Offset for placeholder text to align with original position

        background: Rectangle {
            id: rectangle_24
            width: 387
            height: 52
            color: "#4dececec"
            border.color: "#727272"
            border.width: 0.1
            radius: 8 // Optional: round the corners if needed
        }

        // SVG icon on the left side of the TextField
        SvgPathItem {
            id: lupa
            width: 20
            height: 18
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 13
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#000000"
            path: "M 18 17 L 13.6570492891393 12.898324328631562 M 13.6570492891393 12.898324328631562 C 14.399928642135901 12.196716107094069 14.989212248995793 11.363786352191921 15.39125566952893 10.447090966349245 C 15.793299090062066 9.53039558050657 16.00022887138912 8.547887578608355 16.000228879216625 7.55566363740785 C 16.00022888704413 6.563439696207345 15.79330096758689 5.58093169430913 15.391257576855734 4.664236308466454 C 14.98921418612458 3.747540922623778 14.399928642135901 2.9146109988437363 13.6570492891393 2.2130027210136127 C 12.914169936142699 1.5113944431834894 12.032244372909094 0.9548483359951139 11.061625729075672 0.5751406891934678 C 10.09100708524225 0.19543304239182174 9.050704494997083 -7.392641508222264e-9 8.000114439608312 4.1941278728217626e-16 C 6.949524384219542 7.3926457023501376e-9 5.909221793974374 0.19543301424550608 4.938603150140952 0.5751406891934678 C 3.96798450630753 0.9548483641414296 3.0860584066382604 1.5113944431834894 2.343179113245622 2.2130027210136127 C 0.8428666692733466 3.6299645862393577 -1.5808361118645898e-8 5.551777008701226 0 7.55566363740785 C 1.5808361118645898e-8 9.559550266114474 0.8428666692733466 11.48136257599108 2.343179113245622 12.898324328631562 C 3.843491557217897 14.315286081272044 5.878352126860122 15.11132725988558 8.000114439608312 15.1113272748157 C 10.121876752356503 15.11132728974582 12.1567367259591 14.315286081272044 13.6570492891393 12.898324328631562 Z"
            joinStyle: 2
            fillColor: "transparent"
            antialiasing: true
        }
    }

    Item {
        id: profile
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1083
        anchors.rightMargin: 16
        anchors.topMargin: 20
        anchors.bottomMargin: 760
        Image {
            id: imageSource
            width: 70
            height: 70
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: -23
            anchors.topMargin: 1
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
            id: element1
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
            fillColor: "transparent"
            antialiasing: true
        }
    }

    SvgPathItem {
        id: line_20_Stroke_
        width: 1280
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 99
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        path: "M 1280 1 L 0 1 L 0 0 L 1280 0 L 1280 1 Z"
        joinStyle: 0
        fillColor: "#aba4a4"
        antialiasing: true
    }

    Item {
        id: group_97
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: -7
        anchors.rightMargin: 1078
        anchors.topMargin: 9
        anchors.bottomMargin: 735
        Rectangle {
            id: logo
            width: 86
            height: 88
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Image {
                id: logo1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../assets/logo1.png"
            }
        }

        Text {
            id: finban_Trade
            width: 130
            height: 23
            color: "#000000"
            text: qsTr("Finban Trade")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 80
            anchors.topMargin: 33
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Button {
        id: dashboardButton
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1104
        anchors.topMargin: 153
        anchors.bottomMargin: 654
        background: Rectangle {
            id: mage_dashboard_fill
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            SvgPathItem {
                id: element2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 8.740052223205566 2.429999828338623 L 8.740052223205566 6.310000419616699 C 8.740054921320052 6.631268948316574 8.676612988114357 6.949375152587891 8.553366661071777 7.246063232421875 C 8.430120334029198 7.542751312255859 8.249496325850487 7.8121799528598785 8.02186107635498 8.038886070251465 C 7.794225826859474 8.265592187643051 7.524061143398285 8.44511254131794 7.226871490478516 8.567144393920898 C 6.929681837558746 8.689176246523857 6.61131826043129 8.7513166742865 6.29005241394043 8.75 L 2.4300522804260254 8.75 C 2.109653562307358 8.751943554729223 1.7921611666679382 8.689173951745033 1.4966068267822266 8.56545352935791 C 1.201052486896515 8.441733106970787 0.9335218369960785 8.259609088301659 0.7100522518157959 8.029999732971191 C 0.4831671416759491 7.8050035536289215 0.30349503457546234 7.5369662046432495 0.18157456815242767 7.241609573364258 C 0.059654101729393005 6.946252942085266 -0.002059749480395112 6.6295245587825775 0.00005244029307505116 6.310000419616699 L 0.00005244029307505116 2.440000057220459 C 0.00004702002615886158 1.7946007251739502 0.25574439764022827 1.1754878163337708 0.7111725807189941 0.7181854248046875 C 1.16660076379776 0.26088303327560425 1.7846583724021912 0.002645079279318452 2.4300522804260254 0 L 6.300052642822266 0 C 6.620117008686066 0.0003075150598306209 6.936940908432007 0.06410259008407593 7.232181549072266 0.18769168853759766 C 7.527422189712524 0.3112807869911194 7.795213386416435 0.49220864474773407 8.020051956176758 0.7200000286102295 C 8.247541606426239 0.9429836422204971 8.428364992141724 1.2090235650539398 8.551980018615723 1.5026092529296875 C 8.675595045089722 1.7961949408054352 8.739528475853149 2.1114516258239746 8.740052223205566 2.429999828338623 Z M 19.490053176879883 2.440000057220459 L 19.490053176879883 6.310000419616699 C 19.484866498038173 6.953798532485962 19.2274968624115 7.569906085729599 18.773183822631836 8.02608871459961 C 18.318870782852173 8.48227134346962 17.703824281692505 8.742169440723956 17.0600528717041 8.75 L 13.180052757263184 8.75 C 12.533251881599426 8.746041839011014 11.913158237934113 8.491552710533142 11.450052261352539 8.039999961853027 C 11.223763287067413 7.812488481402397 11.04457312822342 7.542575776576996 10.922740936279297 7.2457170486450195 C 10.800908744335175 6.948858320713043 10.738827376393601 6.630884647369385 10.740052223205566 6.310000419616699 L 10.740052223205566 2.440000057220459 C 10.73924501077272 2.1197688579559326 10.802532710134983 1.802614152431488 10.926186561584473 1.507218837738037 C 11.049840413033962 1.2118235230445862 11.231359958648682 0.9441615641117096 11.460052490234375 0.7200000286102295 C 11.684891059994698 0.49220864474773407 11.952682256698608 0.3112807869911194 12.247922897338867 0.18769168853759766 C 12.543163537979126 0.06410259008407593 12.859988391399384 0.0003075150598306209 13.180052757263184 0 L 17.050052642822266 0 C 17.69556427001953 0.005227070767432451 18.313154578208923 0.26397597789764404 18.769615173339844 0.7204365730285645 C 19.226075768470764 1.1768971681594849 19.48482610611245 1.7944884300231934 19.490053176879883 2.440000057220459 Z M 19.490053176879883 13.1899995803833 L 19.490053176879883 17.059999465942383 C 19.484866498038173 17.703797578811646 19.2274968624115 18.3199060857296 18.773183822631836 18.77608871459961 C 18.318870782852173 19.23227134346962 17.703824281692505 19.492169440723956 17.0600528717041 19.5 L 13.180052757263184 19.5 C 12.529134333133698 19.506604564376175 11.901308447122574 19.259061247110367 11.430052757263184 18.809999465942383 C 11.202867925167084 18.58314934372902 11.023092165589333 18.313362807035446 10.90119743347168 18.0163516998291 C 10.779302701354027 17.719340592622757 10.71772568905726 17.401042759418488 10.720052719116211 17.079999923706055 L 10.720052719116211 13.210000038146973 C 10.719245506683365 12.889768838882446 10.782532252371311 12.572614133358002 10.9061861038208 12.27721881866455 C 11.02983995527029 11.9818235039711 11.21135950088501 11.714161306619644 11.440052032470703 11.489999771118164 C 11.664890602231026 11.262208387255669 11.932682752609253 11.081281244754791 12.227923393249512 10.95769214630127 C 12.52316403388977 10.834103047847748 12.839987933635712 10.770307972823502 13.160052299499512 10.770000457763672 L 17.030052185058594 10.770000457763672 C 17.67556381225586 10.775227528531104 18.29315412044525 11.033975958824158 18.749614715576172 11.490436553955078 C 19.206075310707092 11.946897149085999 19.46482564834878 12.564488410949707 19.47005271911621 13.210000038146973 L 19.490053176879883 13.1899995803833 Z M 8.740052223205566 13.199999809265137 L 8.740052223205566 17.06999969482422 C 8.732184926979244 17.71549153327942 8.470906674861908 18.33202627301216 8.012574195861816 18.786617279052734 C 7.554241716861725 19.241208285093307 6.935587048530579 19.497423796216026 6.29005241394043 19.5 L 2.4300522804260254 19.5 C 2.1105696856975555 19.50132292637136 1.7939872443675995 19.439372695982456 1.4985687732696533 19.31772232055664 C 1.2031503021717072 19.196071945130825 0.9347434639930725 19.017129957675934 0.7088332176208496 18.79121971130371 C 0.4829229712486267 18.565309464931488 0.3039809688925743 18.296902388334274 0.18233059346675873 18.001483917236328 C 0.060680218040943146 17.706065446138382 -0.0012704860782832839 17.38948228955269 0.00005244029307505116 17.06999969482422 L 0.00005244029307505116 13.199999809265137 C 0.0026286440770491026 12.554465174674988 0.25884464383125305 11.935810506343842 0.7134356498718262 11.47747802734375 C 1.1680266559123993 11.019145548343658 1.7845604419708252 10.757867296226323 2.4300522804260254 10.75 L 6.300052642822266 10.75 C 6.948256552219391 10.756633123848587 7.568540781736374 11.014786571264267 8.030052185058594 11.470000267028809 C 8.486144363880157 11.930111557245255 8.741428484208882 12.55214136838913 8.740052223205566 13.199999809265137 Z"
                joinStyle: 0
                fillColor: "#80000000"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: dashboard
            width: 107
            height: 23
            color: "#80000000"
            text: qsTr("Dashboard")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_89
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1135
        anchors.topMargin: 198
        anchors.bottomMargin: 609
        Rectangle {
            id: mdi_light_chart_pie
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            SvgPathItem {
                id: element3
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 3
                anchors.topMargin: 3
                anchors.bottomMargin: 2
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 10 0 L 11 0 C 13.121731996536255 8.881784197001252e-16 15.156563639640808 0.8428548574447632 16.6568546295166 2.3431458473205566 C 18.157145619392395 3.84343683719635 18.999999999999996 5.878268003463745 19 8 L 19 9 L 10 9 L 10 0 Z M 11 8 L 18 8 C 17.999999999999996 6.143484592437744 17.26250171661377 4.363007068634033 15.949747085571289 3.0502524375915527 C 14.636992454528809 1.7374978065490723 12.856515407562256 1.0000000000000009 11 1 L 11 8 Z M 8 11 L 16 11 C 15.999999999999996 13.121731996536255 15.157145619392395 15.156563639640808 13.656854629516602 16.6568546295166 C 12.156563639640808 18.157145619392395 10.121731996536255 18.999999999999996 8 19 C 5.878268003463745 18.999999999999996 3.84343683719635 18.157145619392395 2.3431458473205566 16.6568546295166 C 0.8428548574447632 15.156563639640808 1.3322676295501878e-15 13.121731996536255 0 11 C 4.440892098500626e-16 8.878268003463745 0.8428548574447632 6.843436360359192 2.3431458473205566 5.343145370483398 C 3.84343683719635 3.842854380607605 5.878268003463745 3.0000000000000027 8 3 L 8 11 Z M 7 12 L 7 4.070000171661377 C 3.609999895095825 4.56000018119812 1 7.4700000286102295 1 11 C 1.0000000000000018 12.856515407562256 1.7374978065490723 14.636992454528809 3.0502524375915527 15.949747085571289 C 4.363007068634033 17.26250171661377 6.143484592437744 18 8 18 C 11.52999997138977 17.999999999999996 14.440000295639038 15.390000104904175 14.930000305175781 12 L 7 12 Z"
                joinStyle: 0
                fillColor: "#801e1e1e"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: portfolio
            width: 76
            height: 23
            color: "#80000000"
            text: qsTr("Portfolio")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_90
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1132
        anchors.topMargin: 243
        anchors.bottomMargin: 564
        Rectangle {
            id: uil_chart
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            SvgPathItem {
                id: element4
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 10 4 C 9.734783500432968 4 9.480429783463478 4.10535703599453 9.292893409729004 4.292893409729004 C 9.10535703599453 4.480429783463478 9 4.734783500432968 9 5 L 9 15 C 9 15.265216499567032 9.10535703599453 15.519571170210838 9.292893409729004 15.707107543945312 C 9.480429783463478 15.894643917679787 9.734783500432968 16 10 16 C 10.265216499567032 16 10.519570216536522 15.894643917679787 10.707106590270996 15.707107543945312 C 10.89464296400547 15.519571170210838 11 15.265216499567032 11 15 L 11 5 C 11 4.734783500432968 10.89464296400547 4.480429783463478 10.707106590270996 4.292893409729004 C 10.519570216536522 4.10535703599453 10.265216499567032 4 10 4 Z M 5 10 C 4.734783500432968 10 4.480429783463478 10.10535703599453 4.292893409729004 10.292893409729004 C 4.10535703599453 10.480429783463478 4 10.734783500432968 4 11 L 4 15 C 4 15.265216499567032 4.10535703599453 15.519571170210838 4.292893409729004 15.707107543945312 C 4.480429783463478 15.894643917679787 4.734783500432968 16 5 16 C 5.265216499567032 16 5.519570216536522 15.894643917679787 5.707106590270996 15.707107543945312 C 5.89464296400547 15.519571170210838 6 15.265216499567032 6 15 L 6 11 C 6 10.734783500432968 5.89464296400547 10.480429783463478 5.707106590270996 10.292893409729004 C 5.519570216536522 10.10535703599453 5.265216499567032 10 5 10 Z M 15 8 C 14.734783500432968 8 14.480428829789162 8.10535703599453 14.292892456054688 8.292893409729004 C 14.105356082320213 8.480429783463478 14 8.734783500432968 14 9 L 14 15 C 14 15.265216499567032 14.105356082320213 15.519571170210838 14.292892456054688 15.707107543945312 C 14.480428829789162 15.894643917679787 14.734783500432968 16 15 16 C 15.265216499567032 16 15.519571170210838 15.894643917679787 15.707107543945312 15.707107543945312 C 15.894643917679787 15.519571170210838 16 15.265216499567032 16 15 L 16 9 C 16 8.734783500432968 15.894643917679787 8.480429783463478 15.707107543945312 8.292893409729004 C 15.519571170210838 8.10535703599453 15.265216499567032 8 15 8 Z M 17 0 L 3 0 C 2.204350531101227 8.881784197001252e-16 1.4412888884544373 0.3160706162452698 0.8786797523498535 0.8786797523498535 C 0.3160706162452698 1.4412888884544373 8.881784197001252e-16 2.204350531101227 0 3 L 0 17 C 8.881784197001252e-16 17.795649468898773 0.3160706162452698 18.55871158838272 0.8786797523498535 19.121320724487305 C 1.4412888884544373 19.68392986059189 2.204350531101227 19.999999999999996 3 20 L 17 20 C 17.795649468898773 19.999999999999996 18.55871158838272 19.68392986059189 19.121320724487305 19.121320724487305 C 19.68392986059189 18.55871158838272 19.999999999999996 17.795649468898773 20 17 L 20 3 C 19.999999999999996 2.204350531101227 19.68392986059189 1.4412888884544373 19.121320724487305 0.8786797523498535 C 18.55871158838272 0.3160706162452698 17.795649468898773 4.440892098500626e-16 17 0 Z M 18 17 C 18 17.265216499567032 17.894643917679787 17.51957117021084 17.707107543945312 17.707107543945312 C 17.51957117021084 17.894643917679787 17.265216499567032 18 17 18 L 3 18 C 2.734783500432968 18 2.480429783463478 17.894643917679787 2.292893409729004 17.707107543945312 C 2.1053570359945297 17.51957117021084 2 17.265216499567032 2 17 L 2 3 C 2 2.734783500432968 2.1053570359945297 2.480429783463478 2.292893409729004 2.292893409729004 C 2.480429783463478 2.1053570359945297 2.734783500432968 1.9999999999999991 3 2 L 17 2 C 17.265216499567032 2 17.51957117021084 2.1053570359945297 17.707107543945312 2.292893409729004 C 17.894643917679787 2.480429783463478 18 2.734783500432968 18 3 L 18 17 Z"
                joinStyle: 0
                fillColor: "#801e1e1e"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: my_Stock
            width: 79
            height: 23
            color: "#80000000"
            text: qsTr("My Stock")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_91
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 35
        anchors.rightMargin: 1144
        anchors.topMargin: 288
        anchors.bottomMargin: 519
        Rectangle {
            id: iconoir_coins
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Item {
                id: group
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 3
                anchors.rightMargin: 3
                anchors.topMargin: 3
                anchors.bottomMargin: 3
                SvgPathItem {
                    id: element5
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 5
                    anchors.bottomMargin: 4
                    strokeWidth: 1.5
                    strokeStyle: 1
                    strokeColor: "#801e1e1e"
                    path: "M 13 5 C 10.239000082015991 5 8 3.8799999952316284 8 2.5 C 8 1.1200000047683716 10.239000082015991 0 13 0 C 15.760999917984009 0 18 1.1200000047683716 18 2.5 C 18 3.8799999952316284 15.760999917984009 5 13 5 Z M 8 6.5 C 8 7.879999995231628 10.239000082015991 9 13 9 C 15.760999917984009 9 18 7.879999995231628 18 6.5 M 0 1.5 C 0 2.8799999952316284 2.239000082015991 4 5 4 C 6.1260000467300415 4 7.165000021457672 3.8140000104904175 8 3.5 M 0 5 C 0 6.379999995231628 2.239000082015991 7.5 5 7.5 C 6.1260000467300415 7.5 7.163999974727631 7.3140000104904175 8 7"
                    joinStyle: 2
                    fillColor: "transparent"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element6
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 3
                    strokeWidth: 1.5
                    strokeStyle: 1
                    strokeColor: "#801e1e1e"
                    path: "M 0 0 L 0 11 C 0 12.379999995231628 2.239000082015991 13.5 5 13.5 C 6.1260000467300415 13.5 7.163999974727631 13.314000010490417 8 13 M 10 3 L 10 0 M 8 5 L 8 13 C 8 14.379999995231628 10.239000082015991 15.5 13 15.5 C 15.760999917984009 15.5 18 14.379999995231628 18 13 L 18 5"
                    joinStyle: 2
                    fillColor: "transparent"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element7
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 8
                    anchors.bottomMargin: 13
                    strokeWidth: 1.5
                    strokeStyle: 1
                    strokeColor: "#801e1e1e"
                    path: "M 5 5 C 2.239000082015991 5 0 3.8799999952316284 0 2.5 C 0 1.1200000047683716 2.239000082015991 0 5 0 C 7.760999917984009 0 10 1.1200000047683716 10 2.5 C 10 3.8799999952316284 7.760999917984009 5 5 5 Z"
                    joinStyle: 2
                    fillColor: "transparent"
                    antialiasing: true
                }
            }
            clip: true
        }

        Text {
            id: deposit
            width: 67
            height: 23
            color: "#80000000"
            text: qsTr("Deposit")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 35
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_92
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1150
        anchors.topMargin: 330
        anchors.bottomMargin: 477
        Rectangle {
            id: gravity_ui_bulb
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Item {
                id: group1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                anchors.topMargin: 1
                anchors.bottomMargin: 1
                SvgPathItem {
                    id: element8
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 5.640002326098326 21.912867056589246 C 6.453895739963005 22.306060846294187 7.346108224287711 22.510284423828125 8.250001907348633 22.510284423828125 C 9.153895590409554 22.510284423828125 10.046108074734263 22.306060846294187 10.860001488598941 21.912867056589246 L 11.055001654624967 21.818366036063253 C 11.562713586916754 21.573089304085215 11.991025518546747 21.18969498757551 12.290821197081527 20.71214433675727 C 12.590616875616307 20.23459368593903 12.749759754613562 19.682221740181806 12.750002492557886 19.11836712327814 L 12.750002492557886 18.416366490426647 C 12.750002492557886 16.388366450328384 13.914002403844512 14.58086599003907 15.060002368580244 12.906865870178414 C 15.907552050784188 11.66744566837131 16.400783558449554 10.220222928058913 16.486536980064475 8.721173471179306 C 16.572290401679396 7.222124014299698 16.247314385921722 5.7280937752559815 15.546633747949597 4.400106761680104 C 14.845953109977472 3.072119748104226 13.796138275323202 1.9605339882826969 12.510336037539478 1.185153211426454 C 11.224533799755754 0.4097724345702112 9.751502112865452 4.996003716643951e-16 8.250001907348633 0 C 6.748501701831813 -6.661338288858602e-16 5.2754707301972275 0.4097724345702112 3.9896684924135046 1.185153211426454 C 2.703866254629782 1.9605339882826969 1.654051867010334 3.072119748104226 0.9533712290382095 4.400106761680104 C 0.25269059106608505 5.7280937752559815 -0.07228540094286448 7.222124014299698 0.013468020672056205 8.721173471179306 C 0.09922144228697688 10.220222928058913 0.5924525685757599 11.66744566837131 1.4400022507797035 12.906865870178414 C 2.586002215515437 14.58086599003907 3.750002037395097 16.388366986770194 3.750002037395097 18.4178670969953 L 3.750002037395097 19.11836712327814 C 3.7499628057074426 19.682476728857555 3.9089739012563447 20.23516678461068 4.208785650693007 20.713008365706234 C 4.508597400129669 21.190849946801787 4.937060720102438 21.57447895660527 5.445002160072301 21.819866642631908 L 5.640002326098326 21.912867056589246 Z M 9.882002306504683 19.887866441488907 L 10.077002472530708 19.791866244905766 C 10.203790299010807 19.73044094142692 10.310712495870462 19.634546345650108 10.38552373436664 19.51516669604515 C 10.460334972862817 19.39578704644019 10.500009356249132 19.257750229929194 10.500001842325402 19.116866516709486 L 10.500001842325402 18.416366490426647 C 10.500001842325402 18.161366482342753 10.512501268455736 17.911366469596402 10.537501269037108 17.666366474539338 C 9.045058257253064 18.112008940391732 7.454944842188485 18.112008940391732 5.962501830404443 17.666366474539338 C 5.9865018308508 17.911366469596402 5.999001972411475 18.161366482342753 6.000001972371865 18.416366490426647 L 6.000001972371865 19.116866516709486 C 5.999994458448135 19.257750229929194 6.03966884183445 19.39578704644019 6.114480080330628 19.51516669604515 C 6.189291318826806 19.634546345650108 6.296214230942177 19.73044094142692 6.423002057422275 19.791866244905766 L 6.6180022234483005 19.88636726543176 C 7.126884179982055 20.132348747843388 7.684787125828473 20.260115575808616 8.250001907348633 20.260115575808616 C 8.815216688868793 20.260115575808616 9.373120349970929 20.133847923900536 9.882002306504683 19.887866441488907 Z M 3.297001981821892 11.634866484102691 C 3.8880019554441323 12.498866465211574 4.633501947131999 13.587866147102954 5.1915019442384684 14.856866197587722 C 6.1050575697405804 15.43992471618908 7.166239471761015 15.749705648263507 8.250001907348633 15.749705648263507 C 9.33376434293625 15.749705648263507 10.39494552970097 15.43992471618908 11.308501155203082 14.856866197587722 C 11.866501152309551 13.587866147102954 12.61200315565412 12.498866465211574 13.20450315462459 11.634866484102691 C 13.820543828554857 10.733410883818882 14.178925599924982 9.680943604739944 14.241036003545338 8.59086531717386 C 14.303146407165693 7.500787029607775 14.06662970363006 6.414422260501474 13.556969727690536 5.448826547651018 C 13.047309751751012 4.483230834800563 12.283828410160886 3.675009537105147 11.348788648698228 3.111246294123858 C 10.41374888723557 2.547483051142569 9.342597751036685 2.249550509421512 8.250751495339665 2.2495505094215127 C 7.158905239642646 2.2495505094215114 6.087755533955194 2.547483051142569 5.152715772492536 3.111246294123858 C 4.217676011029878 3.675009537105147 3.454194848253682 4.483230834800563 2.9445348723141587 5.448826547651018 C 2.434874896374635 6.414422260501474 2.198357477583287 7.500787029607775 2.2604678812036414 8.59086531717386 C 2.322578284823996 9.680943604739944 2.6809613078916237 10.733410883818882 3.297001981821892 11.634866484102691 Z"
                    joinStyle: 0
                    fillColor: "#801e1e1e"
                    antialiasing: true
                }

                SvgPathItem {
                    id: element9
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 7
                    anchors.rightMargin: 4
                    anchors.topMargin: 5
                    anchors.bottomMargin: 13
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 1.125 0 C 0.82663144916296 0 0.5404831543564796 0.11852630227804184 0.32950472831726074 0.32950472831726074 C 0.11852630227804184 0.5404831543564796 1.3322676295501878e-15 0.82663144916296 0 1.125 C 1.3322676295501878e-15 1.42336855083704 0.11852630227804184 1.7095168456435204 0.32950472831726074 1.9204952716827393 C 0.5404831543564796 2.131473697721958 0.82663144916296 2.25 1.125 2.25 C 1.5228247493505478 2.25 1.9043553248047829 2.4080355539917946 2.185659885406494 2.689340114593506 C 2.4669644460082054 2.970644675195217 2.625 3.352175250649452 2.625 3.75 C 2.625 4.04836855083704 2.743527017533779 4.33451684564352 2.954505443572998 4.545495271682739 C 3.165483869612217 4.756473697721958 3.45163144916296 4.874999999999998 3.75 4.875 C 4.04836855083704 4.874999999999998 4.334516130387783 4.756473697721958 4.545494556427002 4.545495271682739 C 4.756472982466221 4.33451684564352 4.875 4.04836855083704 4.875 3.75 C 4.875 2.7554381489753723 4.4799118638038635 1.8016110062599182 3.7766504287719727 1.0983495712280273 C 3.073388993740082 0.3950881361961365 2.1195618510246277 0 1.125 0 Z"
                    joinStyle: 0
                    fillColor: "#801e1e1e"
                    antialiasing: true
                }
            }
            clip: true
        }

        Text {
            id: insight
            width: 61
            height: 23
            color: "#80000000"
            text: qsTr("Insight")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    SvgPathItem {
        id: line_29_Stroke_
        width: 180
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 17
        anchors.topMargin: 378
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        rotation: -0.317
        path: "M 180.00277709960938 1 L 0 1 L 0 0 L 180.00277709960938 0 L 180.00277709960938 1 Z"
        joinStyle: 0
        fillColor: "#4d000000"
        antialiasing: true
    }

    SvgPathItem {
        id: line_30_Stroke_
        width: 180
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 17
        anchors.topMargin: 488
        strokeWidth: 1
        strokeStyle: 1
        strokeColor: "transparent"
        rotation: -0.317
        path: "M 180.00277709960938 1 L 0 1 L 0 0 L 180.00277709960938 0 L 180.00277709960938 1 Z"
        joinStyle: 0
        fillColor: "#4d000000"
        antialiasing: true
    }

    Item {
        id: group_93
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1097
        anchors.topMargin: 395
        anchors.bottomMargin: 411
        Rectangle {
            id: tabler_device_desktop_analytics
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            SvgPathItem {
                id: element10
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 3
                anchors.rightMargin: 3
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                strokeWidth: 2
                strokeStyle: 1
                strokeColor: "#0d99ff"
                path: "M 0 1 C 0 0.7347835004329681 0.10535679757595062 0.4804297834634781 0.2928931713104248 0.2928934097290039 C 0.480429545044899 0.10535703599452972 0.7347835004329681 -8.881784197001252e-16 1 0 L 17 0 C 17.265216499567032 0 17.51957117021084 0.10535703599452972 17.707107543945312 0.2928934097290039 C 17.894643917679787 0.4804297834634781 18 0.7347835004329681 18 1 L 18 11 C 18 11.265216499567032 17.894643917679787 11.519570216536522 17.707107543945312 11.707106590270996 C 17.51957117021084 11.89464296400547 17.265216499567032 12 17 12 L 1 12 C 0.7347835004329681 12 0.480429545044899 11.89464296400547 0.2928931713104248 11.707106590270996 C 0.10535679757595062 11.519570216536522 4.440892098500626e-16 11.265216499567032 0 11 L 0 1 Z M 4 16 L 14 16 M 6 12 L 6 16 M 12 12 L 12 16 M 6 8 L 6 4 M 9 8 L 9 7 M 12 8 L 12 6 M 9 8 L 9 7"
                joinStyle: 2
                fillColor: "transparent"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: market_Stock
            width: 114
            height: 23
            color: "#0d99ff"
            text: qsTr("Market Stock")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 3
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_94
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 36
        anchors.rightMargin: 1096
        anchors.topMargin: 437
        anchors.bottomMargin: 372
        SvgPathItem {
            id: element11
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 129
            anchors.bottomMargin: 1
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 14.40000057220459 4.8000000847710504 L 9.600000381469727 4.8000000847710504 L 9.600000381469727 7.200000127156576 L 14.40000057220459 7.200000127156576 L 14.40000057220459 4.8000000847710504 Z M 14.40000057220459 8.400000148349339 L 9.600000381469727 8.400000148349339 L 9.600000381469727 9.600000169542101 L 14.40000057220459 9.600000169542101 L 14.40000057220459 8.400000148349339 Z M 8.40000033378601 4.8000000847710504 L 4.800000190734863 4.8000000847710504 L 4.800000190734863 9.600000169542101 L 8.40000033378601 9.600000169542101 L 8.40000033378601 4.8000000847710504 Z M 8.40000033378601 12.000000211927626 L 14.40000057220459 12.000000211927626 L 14.40000057220459 10.800000190734863 L 8.40000033378601 10.800000190734863 L 8.40000033378601 12.000000211927626 Z M 12.000000476837158 14.400000254313152 L 14.40000057220459 14.400000254313152 L 14.40000057220459 13.200000233120388 L 12.000000476837158 13.200000233120388 L 12.000000476837158 14.400000254313152 Z M 14.40000057220459 15.600000275505915 L 4.800000190734863 15.600000275505915 L 4.800000190734863 16.800000296698677 L 14.40000057220459 16.800000296698677 L 14.40000057220459 15.600000275505915 Z M 10.800000429153442 13.200000233120388 L 4.800000190734863 13.200000233120388 L 4.800000190734863 14.400000254313152 L 10.800000429153442 14.400000254313152 L 10.800000429153442 13.200000233120388 Z M 7.200000286102295 10.800000190734863 L 4.800000190734863 10.800000190734863 L 4.800000190734863 12.000000211927626 L 7.200000286102295 12.000000211927626 L 7.200000286102295 10.800000190734863 Z M 18.000000715255737 0 L 1.2000000476837158 0 C 0.8817402355567694 2.6645353061577617e-16 0.5765154769625447 0.12642815932394233 0.3514718195387445 0.3514718117797252 C 0.12642816211494434 0.576515464235508 1.0658141459917976e-15 0.8817402160916541 0 1.2000000211927626 L 0 20.400000360276966 C 5.329070729958988e-16 20.718260165378073 0.12642816211494434 21.023485775541122 0.3514718195387445 21.248529427996903 C 0.5765154769625447 21.473573080452685 0.8817402355567694 21.600000381469727 1.2000000476837158 21.600000381469727 L 18.000000715255737 21.600000381469727 C 18.318260527382684 21.600000381469727 18.623486144283827 21.473573080452685 18.848529801707627 21.248529427996903 C 19.073573459131428 21.023485775541122 19.200000762939453 20.718260165378073 19.200000762939453 20.400000360276966 L 19.200000762939453 1.2000000211927626 C 19.200000762939453 0.8817402160916541 19.073573459131428 0.576515464235508 18.848529801707627 0.3514718117797252 C 18.623486144283827 0.12642815932394233 18.318260527382684 2.6645353061577617e-16 18.000000715255737 0 Z M 16.80000066757202 19.200000339084202 L 2.4000000953674316 19.200000339084202 L 2.4000000953674316 2.4000000423855252 L 16.80000066757202 2.4000000423855252 L 16.80000066757202 19.200000339084202 Z"
            joinStyle: 0
            fillColor: "#801e1e1e"
            antialiasing: true
        }

        Text {
            id: news_Update
            width: 114
            height: 23
            color: "#80000000"
            text: qsTr("News Update")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 35
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_95
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1107
        anchors.topMargin: 505
        anchors.bottomMargin: 302
        Text {
            id: help_Center
            width: 104
            height: 23
            color: "#80000000"
            text: qsTr("Help Center")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 37
            anchors.topMargin: 2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Rectangle {
            id: basil_headset_solid
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            SvgPathItem {
                id: element12
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 2.0349998474121094 6.093999862670898 C 1.4509108662605286 6.2512717843055725 0.934971034526825 6.59673610329628 0.5670798420906067 7.076892852783203 C 0.19918864965438843 7.557049602270126 -0.0001267004783258585 8.145107924938202 6.042576927711707e-8 8.75 L 6.042576927711707e-8 11.75 C 6.042576972120628e-8 12.479345321655273 0.2897314429283142 13.178818821907043 0.8054564595222473 13.694543838500977 C 1.3211814761161804 14.21026885509491 2.0206546783447266 14.5 2.75 14.5 L 5.25 14.5 C 5.448912367224693 14.5 5.639677420258522 14.42098294198513 5.780329704284668 14.280330657958984 C 5.920981988310814 14.139678373932838 6 13.948912367224693 6 13.75 L 6 6.75 C 6 6.551087632775307 5.920981988310814 6.360322579741478 5.780329704284668 6.219670295715332 C 5.639677420258522 6.079018011689186 5.448912367224693 6 5.25 6 L 3.565000057220459 6 C 3.9940000474452972 3.5299999713897705 6.509000062942505 1.5 9.75 1.5 C 12.990999937057495 1.5 15.505999475717545 3.5299999713897705 15.934999465942383 6 L 14.25 6 C 14.051087632775307 6 13.860322579741478 6.079018011689186 13.719670295715332 6.219670295715332 C 13.579018011689186 6.360322579741478 13.5 6.551087632775307 13.5 6.75 L 13.5 13.75 C 13.5 14.164000004529953 13.835999995470047 14.5 14.25 14.5 L 15.913000106811523 14.5 C 15.744153663516045 15.21191918849945 15.340020656585693 15.846036672592163 14.766002655029297 16.299734115600586 C 14.1919846534729 16.75343155860901 13.48166799545288 17.000162615076988 12.75 17 L 11.604999542236328 17 C 11.43094851076603 16.56973433494568 11.112669289112091 16.21339838206768 10.704708099365234 15.992061614990234 C 10.296746909618378 15.770724847912788 9.82450532913208 15.698169089853764 9.368915557861328 15.786827087402344 C 8.913325786590576 15.875485084950924 8.502755105495453 16.11983624100685 8.207566261291504 16.47800636291504 C 7.912377417087555 16.836176484823227 7.750950813293457 17.285863935947418 7.750950813293457 17.75 C 7.750950813293457 18.214136064052582 7.912377417087555 18.663823515176773 8.207566261291504 19.02199363708496 C 8.502755105495453 19.38016375899315 8.913325786590576 19.624514915049076 9.368915557861328 19.713172912597656 C 9.82450532913208 19.801830910146236 10.296746909618378 19.72927515208721 10.704708099365234 19.507938385009766 C 11.112669289112091 19.28660161793232 11.43094851076603 18.93026566505432 11.604999542236328 18.5 L 12.75 18.5 C 15.150000095367432 18.5 17.133999913930893 16.720000505447388 17.454999923706055 14.409000396728516 C 18.041444003582 14.253459379076958 18.5599884390831 13.908344894647598 18.929868698120117 13.427410125732422 C 19.299748957157135 12.946475356817245 19.500199409681954 12.356720387935638 19.5 11.75 L 19.5 8.75 C 19.500126760904095 8.145107924938202 19.300811648368835 7.557049602270126 18.932920455932617 7.076892852783203 C 18.5650292634964 6.59673610329628 18.04908913373947 6.2512717843055725 17.46500015258789 6.093999862670898 C 17.083000153303146 2.5899999141693115 13.676000118255615 0 9.75 0 C 5.823999881744385 0 2.4169998466968536 2.5899999141693115 2.0349998474121094 6.093999862670898 Z"
                joinStyle: 0
                fillColor: "#801e1e1e"
                antialiasing: true
            }
            clip: true
        }
    }

    Item {
        id: group_96
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 34
        anchors.rightMargin: 1142
        anchors.topMargin: 546
        anchors.bottomMargin: 262
        Rectangle {
            id: material_symbols_settings_outline
            width: 24
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            SvgPathItem {
                id: element13
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 2
                anchors.rightMargin: 2
                anchors.topMargin: 2
                anchors.bottomMargin: 2
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 7.300000190734863 20 L 6.90000057220459 16.799999237060547 C 6.683333903551102 16.716665901243687 6.479333445429802 16.616666667163372 6.288000106811523 16.5 C 6.096666768193245 16.383333332836628 5.909000381827354 16.25833334028721 5.725000381469727 16.125 L 2.749999761581421 17.375 L 0 12.625 L 2.575000047683716 10.675000190734863 C 2.5583333801478148 10.558333523571491 2.549999952316284 10.446000300347805 2.549999952316284 10.338000297546387 L 2.549999952316284 9.663000106811523 C 2.549999952316284 9.554333440959454 2.5583333801478148 9.441666476428509 2.575000047683716 9.324999809265137 L 0 7.375 L 2.749999761581421 2.625 L 5.725000381469727 3.875 C 5.908333718776703 3.7416666597127914 6.100000187754631 3.616666667163372 6.300000190734863 3.5 C 6.5000001937150955 3.383333332836628 6.700000569224358 3.283333145081997 6.90000057220459 3.1999998092651367 L 7.300000190734863 0 L 12.800000190734863 0 L 13.199999809265137 3.1999998092651367 C 13.416666477918625 3.283333145081997 13.620999723672867 3.383333332836628 13.812999725341797 3.5 C 14.004999727010727 3.616666667163372 14.192334294319153 3.7416666597127914 14.375000953674316 3.875 L 17.349998474121094 2.625 L 20.099998474121094 7.375 L 17.524999618530273 9.324999809265137 C 17.541666286066175 9.441666476428509 17.549999237060547 9.554333440959454 17.549999237060547 9.663000106811523 L 17.549999237060547 10.336999893188477 C 17.549999237060547 10.445666559040546 17.533333335071802 10.558333523571491 17.5 10.675000190734863 L 20.07499885559082 12.625 L 17.32499885559082 17.375 L 14.375000953674316 16.125 C 14.19166761636734 16.25833334028721 14.000000193715096 16.383333332836628 13.800000190734863 16.5 C 13.600000187754631 16.616666667163372 13.399999812245369 16.716665901243687 13.199999809265137 16.799999237060547 L 12.800000190734863 20 L 7.300000190734863 20 Z M 9.050000190734863 18 L 11.02500057220459 18 L 11.375 15.350000381469727 C 11.891666650772095 15.216667041182518 12.370999723672867 15.021000474691391 12.812999725341797 14.76300048828125 C 13.254999727010727 14.505000501871109 13.65900057554245 14.19233313202858 14.02500057220459 13.824999809265137 L 16.5 14.850000381469727 L 17.474998474121094 13.149999618530273 L 15.324999809265137 11.524999618530273 C 15.408333145081997 11.29166628420353 15.466667618602514 11.046000093221664 15.500000953674316 10.788000106811523 C 15.533334288746119 10.530000120401382 15.550000190734867 10.267333328723907 15.550000190734863 10 C 15.55000019073486 9.732666671276093 15.533334288746119 9.470333635807037 15.500000953674316 9.213000297546387 C 15.466667618602514 8.955666959285736 15.408333145081997 8.709667041897774 15.324999809265137 8.475000381469727 L 17.474998474121094 6.850000381469727 L 16.5 5.150000095367432 L 14.02500057220459 6.199999809265137 C 13.658333897590637 5.816666483879089 13.254333049058914 5.495999902486801 12.812999725341797 5.23799991607666 C 12.37166640162468 4.979999929666519 11.892333328723907 4.784000098705292 11.375 4.650000095367432 L 11.050000190734863 2 L 9.074999809265137 2 L 8.725000381469727 4.650000095367432 C 8.208333730697632 4.78333343565464 7.729333430528641 4.979333251714706 7.288000106811523 5.23799991607666 C 6.846666783094406 5.496666580438614 6.44233313202858 5.809000194072723 6.074999809265137 6.175000190734863 L 3.6000001430511475 5.150000095367432 L 2.624999761581421 6.850000381469727 L 4.774999618530273 8.449999809265137 C 4.691666282713413 8.699999809265137 4.633333716541529 8.949999809265137 4.600000381469727 9.199999809265137 C 4.566667046397924 9.449999809265137 4.550000190734863 9.716666668653488 4.550000190734863 10 C 4.550000190734863 10.266666680574417 4.566667046397924 10.524999618530273 4.600000381469727 10.774999618530273 C 4.633333716541529 11.024999618530273 4.691666282713413 11.274999618530273 4.774999618530273 11.524999618530273 L 2.624999761581421 13.149999618530273 L 3.6000001430511475 14.850000381469727 L 6.074999809265137 13.800000190734863 C 6.441666483879089 14.18333351612091 6.846000105142593 14.504333823919296 7.288000106811523 14.76300048828125 C 7.7300001084804535 15.021667152643204 8.209000408649445 15.21733371913433 8.725000381469727 15.350000381469727 L 9.050000190734863 18 Z M 10.100000381469727 13.5 C 11.066667020320892 13.5 11.89166647195816 13.158333718776703 12.574999809265137 12.475000381469727 C 13.258333146572113 11.79166704416275 13.600000381469727 10.966666638851166 13.600000381469727 10 C 13.600000381469727 9.033333361148834 13.258333146572113 8.20833295583725 12.574999809265137 7.524999618530273 C 11.89166647195816 6.841666281223297 11.066667020320892 6.5 10.100000381469727 6.5 C 9.116667032241821 6.5 8.28733378648758 6.841666281223297 7.612000465393066 7.524999618530273 C 6.9366671442985535 8.20833295583725 6.5993337148102 9.033333361148834 6.600000381469727 10 C 6.600667048129253 10.966666638851166 6.93833327293396 11.79166704416275 7.61299991607666 12.475000381469727 C 8.28766655921936 13.158333718776703 9.116667032241821 13.5 10.100000381469727 13.5 Z"
                joinStyle: 0
                fillColor: "#801e1e1e"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: settings
            width: 69
            height: 23
            color: "#80000000"
            text: qsTr("Settings")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 36
            anchors.topMargin: 1
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }
    }

    Rectangle {
        id: rectangle_59
        width: 1065
        height: 732
        color: "#f9f9f9"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 224
        anchors.topMargin: 101
    }

    Rectangle {
        id: rectangle_65
        width: 366
        height: 710
        color: "#ffffff"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 242
        anchors.topMargin: 109
    }
}


/*##^##
Designer {
    D{i:0;uuid:"8abbb962-88ea-50dc-85cd-f41f2801e1ef"}D{i:1;uuid:"c4dee113-b0d8-5b48-9a8b-4598d88842b8"}
D{i:5;uuid:"b902300d-ccc1-56fd-b0c2-c245d6f0c8d0"}D{i:6;uuid:"bef1a90d-774b-56a1-ba98-563d8195541a"}
D{i:7;uuid:"e6f704dc-a64a-5be0-8f05-997cc34ba6cf"}D{i:8;uuid:"1705f1df-9ab1-5dbe-852b-82199c877aa5"}
D{i:9;uuid:"275c334e-99fe-5dd0-b06d-644d42ee7577"}D{i:10;uuid:"831be0de-3099-5dcc-ba3e-a642815539be"}
D{i:11;uuid:"428981e4-0121-5d39-90aa-132dddbb7d90"}D{i:12;uuid:"9fb0f2bd-d588-5956-b837-876c8c55fbe8"}
D{i:13;uuid:"eee53bb9-a1cb-5795-bf35-c40473705aeb"}D{i:14;uuid:"51414bf0-2690-5ba1-a42d-ac1a9ae0079d"}
D{i:19;uuid:"b5892768-a991-5595-97da-5eda26c80e74"}D{i:20;uuid:"a3e71036-f780-569a-8668-fbf9417e0318"}
D{i:21;uuid:"1e472090-7a20-539c-b043-9cfdfd1432f9"}D{i:22;uuid:"7b4ad72d-6564-5a4c-b6de-a155058f2878"}
D{i:23;uuid:"99070cb4-c082-5b40-a25f-f363a6907f2d"}D{i:24;uuid:"6825d34c-d97c-5070-9521-574c98df9f2a"}
D{i:25;uuid:"a67e698b-4ac7-5e3e-9233-4cf45584b377"}D{i:26;uuid:"79ab600a-87c3-5889-b8a9-5cdbc1e6f439"}
D{i:27;uuid:"255e490a-0775-503f-88bb-0d90415e240d"}D{i:28;uuid:"c6e44d31-110d-5227-aa0e-2a9d60d60a0a"}
D{i:29;uuid:"fd7fb218-f8d7-5d43-9ca9-ae2a5817f7a3"}D{i:30;uuid:"70be5eb4-cbe7-51d4-be27-2a2e527dedc1"}
D{i:31;uuid:"7943e514-4f08-5343-b9da-b33ba0e2e37f"}D{i:32;uuid:"0442c7ab-c18c-53a8-897d-ddb34cb03465"}
D{i:33;uuid:"8be6bf8f-18c5-5920-aa1f-5c0f357f3d10"}D{i:34;uuid:"944a7cdd-508f-5a24-a893-4ac0fa466154"}
D{i:35;uuid:"222040e3-b40c-5db5-8d04-407535c4599f"}D{i:36;uuid:"6b7ac7d3-4fc9-5d03-a416-a01fd7348658"}
D{i:37;uuid:"52382e63-7dea-5b6a-9ea1-f737d46b04dd"}D{i:38;uuid:"46b6a5aa-d247-5257-a347-0cc83a5e2d62"}
D{i:39;uuid:"dc45aa54-39fe-566f-999f-6c0292431c33"}D{i:40;uuid:"9dacb816-f711-5fac-974c-ff5eec73e157"}
D{i:41;uuid:"8d08cd06-51e2-559c-9f57-fe996faeae30"}D{i:42;uuid:"2799ed17-1ef3-5c6d-90f4-7345458d5836"}
D{i:43;uuid:"38b2eea6-20de-5c69-a55c-82fb9e449519"}D{i:44;uuid:"16631913-b85a-5355-8a34-8f7339eccf59"}
D{i:45;uuid:"f04e4f48-99d7-51db-8428-ca25598d0c4e"}D{i:46;uuid:"0f865295-d11c-50a8-a4b2-3066840708de"}
D{i:47;uuid:"c48ee7eb-22d6-5fa5-820a-367d14a003dd"}D{i:48;uuid:"03522867-e116-5756-b826-ef5716a385c0"}
D{i:49;uuid:"19be787e-59d0-56bf-93b2-9f76ce982dcf"}D{i:50;uuid:"3fb27019-2103-5646-b08f-f261a9a01c0e"}
D{i:51;uuid:"928dad1c-2e4d-55da-813a-d0a741405b12"}D{i:52;uuid:"d83fa638-790d-5929-9d40-fc377df82077"}
D{i:53;uuid:"a19a934b-c202-5111-95a3-59f88c6a6ece"}D{i:54;uuid:"eae8dba2-05b1-5fd1-bc91-e78f4a64d860"}
D{i:55;uuid:"6ef443b7-2882-57f0-8925-2279ba04c36d"}D{i:56;uuid:"61058089-bb16-5a88-a1d4-6ccdb188316c"}
D{i:57;uuid:"43073edd-58f0-5521-a1f7-9780d3b5833f"}D{i:58;uuid:"3794e365-03a4-52e4-b4e6-ccda78f4910f"}
}
##^##*/

