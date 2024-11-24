import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtCharts

Rectangle {

    property alias imageSource: imageSource.source
    property alias backButton: backButton
    property alias userFullname: userFullname.text
    property alias username: username.text
    property alias stockMarketButton: stockMarketButton
    id: tradingDashboardWindow
    width: 1280
    height: 832
    color: "#ffffff"

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

    Item {
        id: searchbar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 235
        anchors.rightMargin: 658
        anchors.topMargin: 26
        anchors.bottomMargin: 754
        Rectangle {
            id: rectangle_22
            width: 387
            height: 52
            color: "#4dececec"
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
            anchors.leftMargin: 13
            anchors.rightMargin: 356
            anchors.topMargin: 19
            anchors.bottomMargin: 16
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#000000"
            path: "M 18 17 L 13.6570492891393 12.898324328631562 M 13.6570492891393 12.898324328631562 C 14.399928642135901 12.196716107094069 14.989212248995793 11.363786352191921 15.39125566952893 10.447090966349245 C 15.793299090062066 9.53039558050657 16.00022887138912 8.547887578608355 16.000228879216625 7.55566363740785 C 16.00022888704413 6.563439696207345 15.79330096758689 5.58093169430913 15.391257576855734 4.664236308466454 C 14.98921418612458 3.747540922623778 14.399928642135901 2.9146109988437363 13.6570492891393 2.2130027210136127 C 12.914169936142699 1.5113944431834894 12.032244372909094 0.9548483359951139 11.061625729075672 0.5751406891934678 C 10.09100708524225 0.19543304239182174 9.050704494997083 -7.392641508222264e-9 8.000114439608312 4.1941278728217626e-16 C 6.949524384219542 7.3926457023501376e-9 5.909221793974374 0.19543301424550608 4.938603150140952 0.5751406891934678 C 3.96798450630753 0.9548483641414296 3.0860584066382604 1.5113944431834894 2.343179113245622 2.2130027210136127 C 0.8428666692733466 3.6299645862393577 -1.5808361118645898e-8 5.551777008701226 0 7.55566363740785 C 1.5808361118645898e-8 9.559550266114474 0.8428666692733466 11.48136257599108 2.343179113245622 12.898324328631562 C 3.843491557217897 14.315286081272044 5.878352126860122 15.11132725988558 8.000114439608312 15.1113272748157 C 10.121876752356503 15.11132728974582 12.1567367259591 14.315286081272044 13.6570492891393 12.898324328631562 Z"
            joinStyle: 2
            fillColor: "transparent"
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
            anchors.leftMargin: -32
            anchors.topMargin: -9
            source: "../assets/user.png"
        }

        Text {
            id: userFullname
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
            id: username
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
        anchors.rightMargin: 1094
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
            id: finban_Pro
            width: 118
            height: 23
            color: "#000000"
            text: qsTr("Finbank Trade")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 86
            anchors.topMargin: 33
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    Item {
        id: group_88
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1104
        anchors.topMargin: 153
        anchors.bottomMargin: 654
        Rectangle {
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
                fillColor: "#0d99ff"
                antialiasing: true
            }
            clip: true
        }

        Text {
            id: dashboard
            width: 107
            height: 23
            color: "#0d99ff"
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

    Button {
        id: stockMarketButton
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 33
        anchors.rightMargin: 1097
        anchors.topMargin: 395
        anchors.bottomMargin: 411
        background: Rectangle {
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
                strokeColor: "#801e1e1e"
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
            color: "#80000000"
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
        id: rectangle_61
        width: 1065
        height: 732
        color: "#f9f9f9"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 224
        anchors.topMargin: 101
    }

    Item {
        id: group_130
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 1038
        anchors.rightMargin: 11
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_63
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_126
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 54
            anchors.topMargin: 16
            anchors.bottomMargin: 97
            Text {
                id: real_estate
                width: 93
                height: 23
                color: "#000000"
                text: qsTr("Real estate")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 68
                anchors.topMargin: 4
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }

            Item {
                id: group_125
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 105
                ArcItem {
                    id: ellipse_13
                    width: 55
                    height: 55
                    anchors.left: parent.left
                    anchors.top: parent.top
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#fd633d"
                    outlineArc: true
                    fillColor: "#fd7653"
                    end: 450.00001
                    begin: 90
                    arcWidth: 27.5
                    antialiasing: true
                }

                SvgPathItem {
                    id: element14
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.topMargin: 13
                    anchors.bottomMargin: 12
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 12.727272727272727 30 L 12.727272727272727 19.41176470588235 L 22.272727272727273 19.41176470588235 L 22.272727272727273 30 L 12.727272727272727 30 Z M 1.909090984951366 17.647058823529413 L 0 14.823528738582835 L 17.5 0 L 23.863636363636363 5.382353277767406 L 23.863636363636363 1.7647058823529411 L 28.636363636363633 1.7647058823529411 L 28.636363636363633 9.441177143770105 L 35 14.823528738582835 L 33.090907877141774 17.647058823529413 L 17.5 4.455882521236644 L 1.909090984951366 17.647058823529413 Z"
                    joinStyle: 0
                    fillColor: "#ffffff"
                    antialiasing: true
                }
            }
        }

        SvgPathItem {
            id: element15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 200
            anchors.rightMargin: 15
            anchors.topMargin: 16
            anchors.bottomMargin: 150
            strokeWidth: 2
            strokeStyle: 1
            strokeColor: "#000000"
            path: "M 0 1 C 0 1.2652164995670319 0.10535703599452972 1.519570216536522 0.2928934097290039 1.707106590270996 C 0.4804297834634781 1.8946429640054703 0.7347835004329681 2 1 2 C 1.2652164995670319 2 1.519570216536522 1.8946429640054703 1.707106590270996 1.707106590270996 C 1.8946429640054703 1.519570216536522 2 1.2652164995670319 2 1 C 2 0.7347835004329681 1.8946429640054703 0.4804297834634781 1.707106590270996 0.2928934097290039 C 1.519570216536522 0.10535703599452972 1.2652164995670319 0 1 0 C 0.7347835004329681 0 0.4804297834634781 0.10535703599452972 0.2928934097290039 0.2928934097290039 C 0.10535703599452972 0.4804297834634781 4.440892098500626e-16 0.7347835004329681 0 1 Z M 7 1 C 7 1.2652164995670319 7.10535703599453 1.519570216536522 7.292893409729004 1.707106590270996 C 7.480429783463478 1.8946429640054703 7.734783500432968 2 8 2 C 8.265216499567032 2 8.519570216536522 1.8946429640054703 8.707106590270996 1.707106590270996 C 8.89464296400547 1.519570216536522 9 1.2652164995670319 9 1 C 9 0.7347835004329681 8.89464296400547 0.4804297834634781 8.707106590270996 0.2928934097290039 C 8.519570216536522 0.10535703599452972 8.265216499567032 0 8 0 C 7.734783500432968 0 7.480429783463478 0.10535703599452972 7.292893409729004 0.2928934097290039 C 7.10535703599453 0.4804297834634781 7 0.7347835004329681 7 1 Z M 14 1 C 14 1.2652164995670319 14.105356082320213 1.519570216536522 14.292892456054688 1.707106590270996 C 14.480428829789162 1.8946429640054703 14.734783500432968 2 15 2 C 15.265216499567032 2 15.519571170210838 1.8946429640054703 15.707107543945312 1.707106590270996 C 15.894643917679787 1.519570216536522 16 1.2652164995670319 16 1 C 16 0.7347835004329681 15.894643917679787 0.4804297834634781 15.707107543945312 0.2928934097290039 C 15.519571170210838 0.10535703599452972 15.265216499567032 0 15 0 C 14.734783500432968 0 14.480428829789162 0.10535703599452972 14.292892456054688 0.2928934097290039 C 14.105356082320213 0.4804297834634781 14 0.7347835004329681 14 1 Z"
            joinStyle: 2
            fillColor: "transparent"
            antialiasing: true
        }

        Text {
            id: stocks
            width: 80
            height: 23
            color: "#727272"
            text: qsTr("22 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 22
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_124
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 14
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element16
                width: 107
                height: 32
                color: "#000000"
                text: qsTr("$250.84")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_123
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 118
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_64
                    width: 67
                    height: 22
                    color: "#e8ffeb"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element17
                    width: 36
                    height: 19
                    color: "#42db59"
                    text: qsTr("3.1%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 21
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_98
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 6
                    anchors.rightMargin: 55
                    anchors.topMargin: 5
                    anchors.bottomMargin: 6
                    SvgPathItem {
                        id: element18
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 0.3745318353176117 10 C 0.16479400664679567 10 0 9.780000001192093 0 9.5 L 0 0.5 C 0 0.2199999988079071 0.16479400664679567 0 0.3745318353176117 0 C 0.5842696639884277 0 0.7490636706352234 0.2199999988079071 0.7490636706352234 0.5 L 0.7490636706352234 9.5 C 0.7490636706352234 9.780000001192093 0.5842696639884277 10 0.3745318353176117 10 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element19
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 6
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 5.625468175496072 4.509999752044678 C 5.576347715673262 4.51079917390598 5.527645649191449 4.497866522520781 5.4824934689384355 4.4720330238342285 C 5.437341288685422 4.4461995251476765 5.396738522110242 4.408036917448044 5.363295969779598 4.359999656677246 L 3.003745403968571 1.209999680519104 L 0.6441947488621987 4.359999656677246 C 0.4943820168282437 4.559999659657478 0.262172283849901 4.559999659657478 0.11235955181594587 4.359999656677246 C -0.037453180218009224 4.159999653697014 -0.037453180218009224 3.8499998599290848 0.11235955181594587 3.6499998569488525 L 2.7340822117242647 0.15000000596046448 C 2.8838949437582198 -0.04999999701976776 3.1161048776510896 -0.04999999701976776 3.2659176096850446 0.15000000596046448 L 5.887640738393927 3.6499998569488525 C 6.037453470427882 3.8499998599290848 6.037453470427882 4.159999653697014 5.887640738393927 4.359999656677246 C 5.812734372376949 4.459999658167362 5.7153558113678695 4.509999752044678 5.625468175496072 4.509999752044678 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_129
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 769
        anchors.rightMargin: 280
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_65
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_127
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 88
            anchors.topMargin: 16
            anchors.bottomMargin: 97
            Text {
                id: health
                width: 59
                height: 23
                color: "#000000"
                text: qsTr("Health")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 68
                anchors.topMargin: 5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }

            Item {
                id: group_128
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 71
                ArcItem {
                    id: ellipse_14
                    width: 55
                    height: 55
                    anchors.left: parent.left
                    anchors.top: parent.top
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#15b6f4"
                    outlineArc: true
                    fillColor: "#20c0f6"
                    end: 450.00001
                    begin: 90
                    arcWidth: 27.5
                    antialiasing: true
                }

                SvgPathItem {
                    id: element20
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 16
                    anchors.rightMargin: 16
                    anchors.topMargin: 16
                    anchors.bottomMargin: 16
                    strokeWidth: 0.5
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 24 8 C 24 7.7249999940395355 23.775000005960464 7.5 23.5 7.5 L 17 7.5 C 16.724999994039536 7.5 16.5 7.2750000059604645 16.5 7 L 16.5 0.5 C 16.5 0.22499999403953552 16.275000005960464 0 16 0 L 8 0 C 7.7249999940395355 0 7.5 0.22499999403953552 7.5 0.5 L 7.5 7 C 7.5 7.2750000059604645 7.2750000059604645 7.5 7 7.5 L 0.5 7.5 C 0.22499999403953552 7.5 0 7.7249999940395355 0 8 L 0 16 C 0 16.275000005960464 0.22499999403953552 16.5 0.5 16.5 L 7 16.5 C 7.2750000059604645 16.5 7.5 16.724999994039536 7.5 17 L 7.5 23.5 C 7.5 23.775000005960464 7.7249999940395355 24 8 24 L 16 24 C 16.275000005960464 24 16.5 23.775000005960464 16.5 23.5 L 16.5 17 C 16.5 16.724999994039536 16.724999994039536 16.5 17 16.5 L 23.5 16.5 C 23.775000005960464 16.5 24 16.275000005960464 24 16 L 24 8 Z"
                    joinStyle: 0
                    fillColor: "#ffffff"
                    antialiasing: true
                }
            }
        }

        SvgPathItem {
            id: element21
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 200
            anchors.rightMargin: 15
            anchors.topMargin: 16
            anchors.bottomMargin: 150
            strokeWidth: 2
            strokeStyle: 1
            strokeColor: "#000000"
            path: "M 0 1 C 0 1.2652164995670319 0.10535703599452972 1.519570216536522 0.2928934097290039 1.707106590270996 C 0.4804297834634781 1.8946429640054703 0.7347835004329681 2 1 2 C 1.2652164995670319 2 1.519570216536522 1.8946429640054703 1.707106590270996 1.707106590270996 C 1.8946429640054703 1.519570216536522 2 1.2652164995670319 2 1 C 2 0.7347835004329681 1.8946429640054703 0.4804297834634781 1.707106590270996 0.2928934097290039 C 1.519570216536522 0.10535703599452972 1.2652164995670319 0 1 0 C 0.7347835004329681 0 0.4804297834634781 0.10535703599452972 0.2928934097290039 0.2928934097290039 C 0.10535703599452972 0.4804297834634781 4.440892098500626e-16 0.7347835004329681 0 1 Z M 7 1 C 7 1.2652164995670319 7.10535703599453 1.519570216536522 7.292893409729004 1.707106590270996 C 7.480429783463478 1.8946429640054703 7.734783500432968 2 8 2 C 8.265216499567032 2 8.519570216536522 1.8946429640054703 8.707106590270996 1.707106590270996 C 8.89464296400547 1.519570216536522 9 1.2652164995670319 9 1 C 9 0.7347835004329681 8.89464296400547 0.4804297834634781 8.707106590270996 0.2928934097290039 C 8.519570216536522 0.10535703599452972 8.265216499567032 0 8 0 C 7.734783500432968 0 7.480429783463478 0.10535703599452972 7.292893409729004 0.2928934097290039 C 7.10535703599453 0.4804297834634781 7 0.7347835004329681 7 1 Z M 14 1 C 14 1.2652164995670319 14.105356082320213 1.519570216536522 14.292892456054688 1.707106590270996 C 14.480428829789162 1.8946429640054703 14.734783500432968 2 15 2 C 15.265216499567032 2 15.519571170210838 1.8946429640054703 15.707107543945312 1.707106590270996 C 15.894643917679787 1.519570216536522 16 1.2652164995670319 16 1 C 16 0.7347835004329681 15.894643917679787 0.4804297834634781 15.707107543945312 0.2928934097290039 C 15.519571170210838 0.10535703599452972 15.265216499567032 0 15 0 C 14.734783500432968 0 14.480428829789162 0.10535703599452972 14.292892456054688 0.2928934097290039 C 14.105356082320213 0.4804297834634781 14 0.7347835004329681 14 1 Z"
            joinStyle: 2
            fillColor: "transparent"
            antialiasing: true
        }

        Text {
            id: stocks1
            width: 79
            height: 23
            color: "#727272"
            text: qsTr("32 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 22
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_131
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 24
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element22
                width: 87
                height: 32
                color: "#000000"
                text: qsTr("108.25")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_132
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 108
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_66
                    width: 67
                    height: 22
                    color: "#fff2f2"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element23
                    width: 39
                    height: 19
                    color: "#fe373a"
                    text: qsTr("8.2%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 19
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_99
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 12
                    anchors.rightMargin: 49
                    anchors.topMargin: 16
                    anchors.bottomMargin: -5
                    SvgPathItem {
                        id: element24
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -3
                        anchors.rightMargin: 9
                        anchors.topMargin: -11
                        anchors.bottomMargin: 12
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        rotation: 180
                        path: "M 0.3745318353176117 10 C 0.16479400664679567 10 0 9.780000001192093 0 9.5 L 0 0.5 C 0 0.2199999988079071 0.16479400664679567 0 0.3745318353176117 0 C 0.5842696639884277 0 0.7490636706352234 0.2199999988079071 0.7490636706352234 0.5 L 0.7490636706352234 9.5 C 0.7490636706352234 9.780000001192093 0.5842696639884277 10 0.3745318353176117 10 Z"
                        joinStyle: 0
                        fillColor: "#fe373a"
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element25
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -6
                        anchors.rightMargin: 6
                        anchors.topMargin: -5
                        anchors.bottomMargin: 11
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        rotation: 180
                        path: "M 5.625468175496072 4.509999752044678 C 5.576347715673262 4.51079917390598 5.527645649191449 4.497866522520781 5.4824934689384355 4.4720330238342285 C 5.437341288685422 4.4461995251476765 5.396738522110242 4.408036917448044 5.363295969779598 4.359999656677246 L 3.003745403968571 1.209999680519104 L 0.6441947488621987 4.359999656677246 C 0.4943820168282437 4.559999659657478 0.262172283849901 4.559999659657478 0.11235955181594587 4.359999656677246 C -0.037453180218009224 4.159999653697014 -0.037453180218009224 3.8499998599290848 0.11235955181594587 3.6499998569488525 L 2.7340822117242647 0.15000000596046448 C 2.8838949437582198 -0.04999999701976776 3.1161048776510896 -0.04999999701976776 3.2659176096850446 0.15000000596046448 L 5.887640738393927 3.6499998569488525 C 6.037453470427882 3.8499998599290848 6.037453470427882 4.159999653697014 5.887640738393927 4.359999656677246 C 5.812734372376949 4.459999658167362 5.7153558113678695 4.509999752044678 5.625468175496072 4.509999752044678 Z"
                        joinStyle: 0
                        fillColor: "#fe373a"
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_133
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 500
        anchors.rightMargin: 549
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_67
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_134
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 80
            anchors.rightMargin: 83
            anchors.topMargin: 21
            anchors.bottomMargin: 124
            Text {
                id: finance
                width: 69
                height: 23
                color: "#000000"
                text: qsTr("Finance")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }
        }

        SvgPathItem {
            id: element26
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 201
            anchors.rightMargin: 14
            anchors.topMargin: 19
            anchors.bottomMargin: 147
            strokeWidth: 2
            strokeStyle: 1
            strokeColor: "#000000"
            path: "M 0 1 C 0 1.2652164995670319 0.10535703599452972 1.519570216536522 0.2928934097290039 1.707106590270996 C 0.4804297834634781 1.8946429640054703 0.7347835004329681 2 1 2 C 1.2652164995670319 2 1.519570216536522 1.8946429640054703 1.707106590270996 1.707106590270996 C 1.8946429640054703 1.519570216536522 2 1.2652164995670319 2 1 C 2 0.7347835004329681 1.8946429640054703 0.4804297834634781 1.707106590270996 0.2928934097290039 C 1.519570216536522 0.10535703599452972 1.2652164995670319 0 1 0 C 0.7347835004329681 0 0.4804297834634781 0.10535703599452972 0.2928934097290039 0.2928934097290039 C 0.10535703599452972 0.4804297834634781 4.440892098500626e-16 0.7347835004329681 0 1 Z M 7 1 C 7 1.2652164995670319 7.10535703599453 1.519570216536522 7.292893409729004 1.707106590270996 C 7.480429783463478 1.8946429640054703 7.734783500432968 2 8 2 C 8.265216499567032 2 8.519570216536522 1.8946429640054703 8.707106590270996 1.707106590270996 C 8.89464296400547 1.519570216536522 9 1.2652164995670319 9 1 C 9 0.7347835004329681 8.89464296400547 0.4804297834634781 8.707106590270996 0.2928934097290039 C 8.519570216536522 0.10535703599452972 8.265216499567032 0 8 0 C 7.734783500432968 0 7.480429783463478 0.10535703599452972 7.292893409729004 0.2928934097290039 C 7.10535703599453 0.4804297834634781 7 0.7347835004329681 7 1 Z M 14 1 C 14 1.2652164995670319 14.105356082320213 1.519570216536522 14.292892456054688 1.707106590270996 C 14.480428829789162 1.8946429640054703 14.734783500432968 2 15 2 C 15.265216499567032 2 15.519571170210838 1.8946429640054703 15.707107543945312 1.707106590270996 C 15.894643917679787 1.519570216536522 16 1.2652164995670319 16 1 C 16 0.7347835004329681 15.894643917679787 0.4804297834634781 15.707107543945312 0.2928934097290039 C 15.519571170210838 0.10535703599452972 15.265216499567032 0 15 0 C 14.734783500432968 0 14.480428829789162 0.10535703599452972 14.292892456054688 0.2928934097290039 C 14.105356082320213 0.4804297834634781 14 0.7347835004329681 14 1 Z"
            joinStyle: 2
            fillColor: "transparent"
            antialiasing: true
        }

        Text {
            id: stocks2
            width: 88
            height: 23
            color: "#727272"
            text: qsTr("107 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 18
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_135
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 25
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element27
                width: 86
                height: 32
                color: "#000000"
                text: qsTr("135.30")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_136
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 107
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_68
                    width: 67
                    height: 22
                    color: "#e8ffeb"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element28
                    width: 39
                    height: 19
                    color: "#42db59"
                    text: qsTr("6.2%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 19
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_100
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 6
                    anchors.rightMargin: 55
                    anchors.topMargin: 5
                    anchors.bottomMargin: 6
                    SvgPathItem {
                        id: element29
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 0.3745318353176117 10 C 0.16479400664679567 10 0 9.780000001192093 0 9.5 L 0 0.5 C 0 0.2199999988079071 0.16479400664679567 0 0.3745318353176117 0 C 0.5842696639884277 0 0.7490636706352234 0.2199999988079071 0.7490636706352234 0.5 L 0.7490636706352234 9.5 C 0.7490636706352234 9.780000001192093 0.5842696639884277 10 0.3745318353176117 10 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element30
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 6
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 5.625468175496072 4.509999752044678 C 5.576347715673262 4.51079917390598 5.527645649191449 4.497866522520781 5.4824934689384355 4.4720330238342285 C 5.437341288685422 4.4461995251476765 5.396738522110242 4.408036917448044 5.363295969779598 4.359999656677246 L 3.003745403968571 1.209999680519104 L 0.6441947488621987 4.359999656677246 C 0.4943820168282437 4.559999659657478 0.262172283849901 4.559999659657478 0.11235955181594587 4.359999656677246 C -0.037453180218009224 4.159999653697014 -0.037453180218009224 3.8499998599290848 0.11235955181594587 3.6499998569488525 L 2.7340822117242647 0.15000000596046448 C 2.8838949437582198 -0.04999999701976776 3.1161048776510896 -0.04999999701976776 3.2659176096850446 0.15000000596046448 L 5.887640738393927 3.6499998569488525 C 6.037453470427882 3.8499998599290848 6.037453470427882 4.159999653697014 5.887640738393927 4.359999656677246 C 5.812734372376949 4.459999658167362 5.7153558113678695 4.509999752044678 5.625468175496072 4.509999752044678 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }
                }
            }
        }
    }

    Text {
        id: dashboard1
        width: 155
        height: 44
        color: "#000000"
        text: qsTr("Dashboard")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 248
        anchors.topMargin: 128
        font.pixelSize: 30
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Hanuman"
    }

    Text {
        id: overview_of_notes_regarding_your_investment
        width: 346
        height: 29
        color: "#727272"
        text: qsTr("Overview of notes regarding your investment")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 224
        anchors.topMargin: 172
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.weight: Font.Normal
        font.family: "Gelasio"
    }

    Rectangle {
        id: rectangle_60
        width: 733
        height: 280
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 238
        anchors.topMargin: 230
    }

    Text {
        id: best_Profit_Stock
        width: 130
        height: 19
        color: "#727272"
        text: qsTr("Best Profit Stock")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 787
        anchors.topMargin: 237
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: avg_Monthly_Grow
        width: 150
        height: 19
        color: "#727272"
        text: qsTr("Avg. Monthly Grow")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 584
        anchors.topMargin: 237
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.Bold
        font.family: "Gelasio"
    }

    Text {
        id: portfolio_Value
        width: 114
        height: 19
        color: "#727272"
        text: qsTr("Portfolio Value")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 268
        anchors.topMargin: 241
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.DemiBold
        font.family: "Gelasio"
    }

    Item {
        id: group_87
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 261
        anchors.rightMargin: 800
        anchors.topMargin: 274
        anchors.bottomMargin: 487
        Text {
            id: element31
            width: 191
            height: 38
            color: "#000000"
            text: qsTr("$475.432,98")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 5
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Item {
            id: group_86
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 46
            Text {
                id: your_profit_is
                width: 106
                height: 20
                color: "#727272"
                text: qsTr("Your profit is")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 1
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }

            Text {
                id: element32
                width: 120
                height: 25
                color: "#145ff9"
                text: qsTr("$81.234,72")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 100
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }
        }
    }

    Item {
        id: group_85
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 603
        anchors.rightMargin: 603
        anchors.topMargin: 274
        anchors.bottomMargin: 497
        Text {
            id: element33
            width: 75
            height: 25
            color: "#000000"
            text: qsTr("~1.34%")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: element34
            width: 58
            height: 23
            color: "#727272"
            text: qsTr("~120$")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 38
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }
    }

    SvgPathItem {
        id: line_31_Stroke_
        width: 78
        height: 3
        opacity: 0.3
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 713
        anchors.topMargin: 309
        strokeWidth: 3
        strokeStyle: 1
        strokeColor: "transparent"
        rotation: 90
        path: "M 78.16009521484375 3 L 0 3 L 0 0 L 78.16009521484375 0 L 78.16009521484375 3 Z"
        joinStyle: 0
        fillColor: "#727272"
        antialiasing: true
    }

    Item {
        id: group_84
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 772
        anchors.rightMargin: 402
        anchors.topMargin: 274
        anchors.bottomMargin: 508
        Text {
            id: adidas
            width: 55
            height: 19
            color: "#000000"
            text: qsTr("Adidas")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 52
            anchors.topMargin: 2
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: aDS
            width: 46
            height: 7
            color: "#727272"
            text: qsTr("ADS")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 53
            anchors.topMargin: 31
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Item {
            id: group_83
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 56
            ArcItem {
                id: ellipse_11
                width: 50
                height: 50
                anchors.left: parent.left
                anchors.top: parent.top
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#d9d9d9"
                end: 450.00001
                begin: 90
                arcWidth: 25
                antialiasing: true
            }

            SvgPathItem {
                id: element35
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 13
                anchors.rightMargin: 7
                anchors.topMargin: 18
                anchors.bottomMargin: 18
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 30 0 L 8.05227488227366 12.814473805242253 C 6.232256260399627 13.871490809766483 4.703906942724833 14.399999618530273 3.467227599808405 14.399999618530273 C 2.067213240902271 14.399999618530273 1.0517862979914696 13.727508173836103 0.420946473049722 12.38252548878221 C 0.025109086558990967 11.518628345025997 -0.09155877668318685 10.422758472896616 0.07094288332318852 9.094916587564647 C 0.23427789931289444 7.767074702232678 0.6659490342875658 6.351243848297404 1.3659562137406327 4.847422901919344 C 1.9492955299515218 3.6304249978232663 2.9063887833875857 2.030615082599751 4.2372357132758305 0.04799407575382657 C 3.785238366484584 1.0224108198056243 3.4540850320533223 2.0927747463077324 3.2572254683244557 3.2156161529112177 C 2.9072218785979222 5.263372239567343 3.222225187583701 6.767193185945404 4.202235209015367 7.727078889878172 C 4.668906661984078 8.17502557214691 5.310580189215693 8.398999219782953 6.127255194657653 8.398999219782953 C 6.779761902633146 8.398999219782953 7.514769362826967 8.255016609394378 8.332277724252258 7.967050903322909 L 30 0 Z"
                joinStyle: 0
                fillColor: "#000000"
                antialiasing: true
            }
        }
    }

    Item {
        id: group_117
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 990
        anchors.rightMargin: 9
        anchors.topMargin: 223
        anchors.bottomMargin: 305
        Rectangle {
            id: rectangle_62
            width: 281
            height: 304
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Text {
            id: wachlist
            width: 92
            height: 25
            color: "#000000"
            text: qsTr("Wachlist")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 22
            anchors.topMargin: 23
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Bold
            font.family: "Gelasio"
        }

        Text {
            id: add_new
            width: 60
            height: 19
            color: "#000000"
            text: qsTr("Add new")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 203
            anchors.topMargin: 20
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Normal
            font.family: "Gelasio"
        }

        Item {
            id: group_108
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 19
            anchors.rightMargin: 19
            anchors.topMargin: 67
            anchors.bottomMargin: 191
            Item {
                id: group_111
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 182
                anchors.bottomMargin: 11
                Item {
                    id: group_101
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 8
                    anchors.rightMargin: 47
                    anchors.topMargin: 21
                    anchors.bottomMargin: 3
                    SvgPathItem {
                        id: element36
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 0.3745318353176117 10 C 0.16479400664679567 10 0 9.780000001192093 0 9.5 L 0 0.5 C 0 0.2199999988079071 0.16479400664679567 0 0.3745318353176117 0 C 0.5842696639884277 0 0.7490636706352234 0.2199999988079071 0.7490636706352234 0.5 L 0.7490636706352234 9.5 C 0.7490636706352234 9.780000001192093 0.5842696639884277 10 0.3745318353176117 10 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element37
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 6
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 5.625468175496072 4.509999752044678 C 5.576347715673262 4.51079917390598 5.527645649191449 4.497866522520781 5.4824934689384355 4.4720330238342285 C 5.437341288685422 4.4461995251476765 5.396738522110242 4.408036917448044 5.363295969779598 4.359999656677246 L 3.003745403968571 1.209999680519104 L 0.6441947488621987 4.359999656677246 C 0.4943820168282437 4.559999659657478 0.262172283849901 4.559999659657478 0.11235955181594587 4.359999656677246 C -0.037453180218009224 4.159999653697014 -0.037453180218009224 3.8499998599290848 0.11235955181594587 3.6499998569488525 L 2.7340822117242647 0.15000000596046448 C 2.8838949437582198 -0.04999999701976776 3.1161048776510896 -0.04999999701976776 3.2659176096850446 0.15000000596046448 L 5.887640738393927 3.6499998569488525 C 6.037453470427882 3.8499998599290848 6.037453470427882 4.159999653697014 5.887640738393927 4.359999656677246 C 5.812734372376949 4.459999658167362 5.7153558113678695 4.509999752044678 5.625468175496072 4.509999752044678 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }
                }

                Item {
                    id: group_102
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: element38
                        width: 50
                        height: 19
                        color: "#000000"
                        text: qsTr("$193.6")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: element39
                        width: 48
                        height: 16
                        color: "#04cb2e"
                        text: qsTr("0.76%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 14
                        anchors.topMargin: 19
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }
                }
            }

            Item {
                id: group_103
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 123
                anchors.topMargin: 2
                Text {
                    id: apple
                    width: 45
                    height: 19
                    color: "#000000"
                    text: qsTr("Apple")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 47
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Gelasio"
                }

                Text {
                    id: adidas_AG
                    width: 79
                    height: 19
                    color: "#727272"
                    text: qsTr("Adidas AG")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 42
                    anchors.topMargin: 25
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_118
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 82
                    anchors.topMargin: 1
                    anchors.bottomMargin: 5
                    Item {
                        id: group_104
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        ArcItem {
                            id: ellipse_12
                            width: 38
                            height: 38
                            anchors.left: parent.left
                            anchors.top: parent.top
                            strokeWidth: 0
                            strokeStyle: 0
                            strokeColor: "transparent"
                            outlineArc: true
                            fillColor: "#d9d9d9"
                            end: 450.00001
                            begin: 90
                            arcWidth: 19
                            antialiasing: true
                        }

                        SvgPathItem {
                            id: element40
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 11
                            anchors.rightMargin: 12
                            anchors.topMargin: 10
                            anchors.bottomMargin: 10
                            strokeWidth: 1
                            strokeStyle: 1
                            strokeColor: "transparent"
                            path: "M 12.637077331542969 17.280000686645508 C 11.657077312469482 18.23000067472458 10.587078332901001 18.079999148845673 9.55707836151123 17.6299991607666 C 8.46707832813263 17.16999915242195 7.467077612876892 17.149999171495438 6.31707763671875 17.6299991607666 C 4.877077579498291 18.249999165534973 4.117078185081482 18.07000070810318 3.257078170776367 17.280000686645508 C -1.6229219436645508 12.250000476837158 -0.9029216766357422 4.589999943971634 4.637078285217285 4.309999942779541 C 5.987078309059143 4.379999943077564 6.927078187465668 5.049999658018351 7.71707820892334 5.109999656677246 C 8.897078156471252 4.869999662041664 10.027077913284302 4.179999977350235 11.287077903747559 4.269999980926514 C 12.797077894210815 4.389999978244305 13.937078475952148 4.9899996519088745 14.687078475952148 6.069999694824219 C 11.567078590393066 7.93999969959259 12.307078123092651 12.050000786781311 15.167078018188477 13.200000762939453 C 14.597078025341034 14.700000762939453 13.857079029083252 16.190000891685486 12.627079010009766 17.290000915527344 L 12.637077331542969 17.280000686645508 Z M 7.617077827453613 4.25 C 7.467077821493149 2.0199999809265137 9.277078628540039 0.18000000715255737 11.357078552246094 0 C 11.647078543901443 2.5799999237060547 9.017077803611755 4.5 7.617077827453613 4.25 Z"
                            joinStyle: 0
                            fillColor: "#000000"
                            antialiasing: true
                        }
                    }
                }
            }
        }

        Item {
            id: group_114
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 19
            anchors.rightMargin: 19
            anchors.topMargin: 144
            anchors.bottomMargin: 110
            Item {
                id: group_107
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 114
                anchors.topMargin: 3
                Item {
                    id: group_105
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: twitter
                        width: 56
                        height: 19
                        color: "#000000"
                        text: qsTr("Twitter")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 42
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: twitter_INC
                        width: 89
                        height: 19
                        color: "#727272"
                        text: qsTr("Twitter INC")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 41
                        anchors.topMargin: 28
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Item {
                        id: group_106
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 91
                        anchors.topMargin: 2
                        anchors.bottomMargin: 7
                        ArcItem {
                            id: ellipse_15
                            width: 38
                            height: 38
                            anchors.left: parent.left
                            anchors.top: parent.top
                            strokeWidth: 0
                            strokeStyle: 0
                            strokeColor: "transparent"
                            outlineArc: true
                            fillColor: "#d9d9d9"
                            end: 450.00001
                            begin: 90
                            arcWidth: 19
                            antialiasing: true
                        }

                        SvgPathItem {
                            id: element41
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 9
                            anchors.rightMargin: 9
                            anchors.topMargin: 9
                            anchors.bottomMargin: 9
                            strokeWidth: 1
                            strokeStyle: 1
                            strokeColor: "transparent"
                            path: "M 15.749999455043248 0 L 18.817142759050643 0 L 12.11714335850307 8.47099651451873 L 20 20 L 13.82857186453683 20 L 8.991428783961705 13.009143187346798 L 3.462857178279332 20 L 0.3928571513720921 20 L 7.558571270533971 10.936317584377779 L 0 0.0015762722998794677 L 6.32857118334089 0.0015762722998794677 L 10.694285801478795 6.390290019822115 L 15.749999455043248 0 Z M 14.671429225376674 17.969734970534407 L 16.371428625924246 17.969734970534407 L 5.399999959128244 1.924653188149544 L 3.5771427835736955 1.924653188149544 L 14.671429225376674 17.969734970534407 Z"
                            joinStyle: 0
                            fillColor: "#000000"
                            antialiasing: true
                        }
                    }
                }
            }

            Item {
                id: group_113
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 185
                anchors.bottomMargin: 15
                Item {
                    id: group_109
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: element42
                        width: 43
                        height: 19
                        color: "#000000"
                        text: qsTr("$53.9")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: element43
                        width: 48
                        height: 16
                        color: "#fe1019"
                        text: qsTr("0.32%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 11
                        anchors.topMargin: 19
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }
                }

                Item {
                    id: group_110
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 8
                    anchors.rightMargin: 44
                    anchors.topMargin: 33
                    anchors.bottomMargin: -9
                    SvgPathItem {
                        id: element44
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -3
                        anchors.rightMargin: 9
                        anchors.topMargin: -11
                        anchors.bottomMargin: 12
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        rotation: 180
                        path: "M 0.3745318353176117 10 C 0.16479400664679567 10 0 9.780000001192093 0 9.5 L 0 0.5 C 0 0.2199999988079071 0.16479400664679567 0 0.3745318353176117 0 C 0.5842696639884277 0 0.7490636706352234 0.2199999988079071 0.7490636706352234 0.5 L 0.7490636706352234 9.5 C 0.7490636706352234 9.780000001192093 0.5842696639884277 10 0.3745318353176117 10 Z"
                        joinStyle: 0
                        fillColor: "#fe1019"
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element45
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -6
                        anchors.rightMargin: 6
                        anchors.topMargin: -5
                        anchors.bottomMargin: 11
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        rotation: 180
                        path: "M 5.625468175496072 4.509999752044678 C 5.576347715673262 4.51079917390598 5.527645649191449 4.497866522520781 5.4824934689384355 4.4720330238342285 C 5.437341288685422 4.4461995251476765 5.396738522110242 4.408036917448044 5.363295969779598 4.359999656677246 L 3.003745403968571 1.209999680519104 L 0.6441947488621987 4.359999656677246 C 0.4943820168282437 4.559999659657478 0.262172283849901 4.559999659657478 0.11235955181594587 4.359999656677246 C -0.037453180218009224 4.159999653697014 -0.037453180218009224 3.8499998599290848 0.11235955181594587 3.6499998569488525 L 2.7340822117242647 0.15000000596046448 C 2.8838949437582198 -0.04999999701976776 3.1161048776510896 -0.04999999701976776 3.2659176096850446 0.15000000596046448 L 5.887640738393927 3.6499998569488525 C 6.037453470427882 3.8499998599290848 6.037453470427882 4.159999653697014 5.887640738393927 4.359999656677246 C 5.812734372376949 4.459999658167362 5.7153558113678695 4.509999752044678 5.625468175496072 4.509999752044678 Z"
                        joinStyle: 0
                        fillColor: "#fe1019"
                        antialiasing: true
                    }
                }
            }
        }

        Item {
            id: group_116
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 19
            anchors.rightMargin: 19
            anchors.topMargin: 231
            anchors.bottomMargin: 21
            Item {
                id: group_115
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 90
                Item {
                    id: group_112
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 42
                    anchors.topMargin: 8
                    Item {
                        id: group_119
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        Text {
                            id: bMW
                            width: 44
                            height: 19
                            color: "#000000"
                            text: qsTr("BMW")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.NoWrap
                            font.weight: Font.DemiBold
                            font.family: "Gelasio"
                        }

                        Text {
                            id: bayeriche_MW
                            width: 110
                            height: 19
                            color: "#727272"
                            text: qsTr("Bayeriche MW")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 2
                            anchors.topMargin: 25
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.NoWrap
                            font.weight: Font.DemiBold
                            font.family: "Gelasio"
                        }

                        Rectangle {
                            id: prime_twitter
                            width: 14
                            height: 14
                            color: "transparent"
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 6
                            anchors.topMargin: 14
                            clip: true
                        }
                    }
                }

                Item {
                    id: group_120
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 115
                    anchors.bottomMargin: 14
                    Item {
                        id: group_121
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        ArcItem {
                            id: ellipse_16
                            width: 38
                            height: 38
                            anchors.left: parent.left
                            anchors.top: parent.top
                            strokeWidth: 0
                            strokeStyle: 0
                            strokeColor: "transparent"
                            outlineArc: true
                            fillColor: "#d9d9d9"
                            end: 450.00001
                            begin: 90
                            arcWidth: 19
                            antialiasing: true
                        }
                    }

                    Item {
                        id: group_122
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 9
                        anchors.rightMargin: 9
                        anchors.topMargin: 9
                        anchors.bottomMargin: 9
                        SvgPathItem {
                            id: element46
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            strokeWidth: 1
                            strokeStyle: 1
                            strokeColor: "transparent"
                            path: "M 20 10 C 20 15.52299976348877 15.52299976348877 20 10 20 C 4.4770002365112305 20 0 15.52299976348877 0 10 C 0 4.4770002365112305 4.4770002365112305 0 10 0 C 15.52299976348877 0 20 4.4770002365112305 20 10 Z M 19.70400047302246 10 C 19.70400047302246 4.639999866485596 15.359000205993652 0.29600000381469727 10 0.29600000381469727 C 4.640999794006348 0.29600000381469727 0.29600000381469727 4.640999794006348 0.29600000381469727 10 C 0.29600000381469727 15.359000205993652 4.640999794006348 19.70400047302246 10 19.70400047302246 C 15.359000205993652 19.70400047302246 19.70400047302246 15.359000205993652 19.70400047302246 10 Z"
                            joinStyle: 0
                            fillColor: "#000000"
                            antialiasing: true
                        }

                        SvgPathItem {
                            id: element47
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 3
                            anchors.rightMargin: 4
                            anchors.topMargin: 4
                            anchors.bottomMargin: 4
                            strokeWidth: 1
                            strokeStyle: 1
                            strokeColor: "transparent"
                            path: "M 1.2300000190734863 5.882567882537842 C 1.2298686549183913 5.155795693397522 1.3729203343391418 4.436117351055145 1.6509833335876465 3.7646422386169434 C 1.9290463328361511 3.0931671261787415 2.3366727232933044 2.4830508828163147 2.8505783081054688 1.9691452980041504 C 3.364483892917633 1.455239713191986 3.9745991826057434 1.0476137399673462 4.646074295043945 0.7695507407188416 C 5.317549407482147 0.4914877414703369 6.037227749824524 0.3484360620495863 6.763999938964844 0.3485674262046814 L 6.763999938964844 11.415566444396973 C 8.231361508369446 11.415301314467797 9.638548016548157 10.832277178764343 10.676129341125488 9.794695854187012 C 11.71371066570282 8.75711452960968 12.296734801406274 7.349929451942444 12.29699993133545 5.882567882537842 L 1.2300000190734863 5.882567882537842 Z M 1.9710001945495605 1.0645675659179688 L 1.2270002365112305 1.9525675773620605 L 0.759000301361084 1.5605673789978027 L 1.510000228881836 0.6665672659873962 C 1.5940002277493477 0.5655672624707222 1.7830003201961517 0.5365675762295723 1.9100003242492676 0.6425675749778748 C 2.0550003200769424 0.7625675722956657 2.0700001940131187 0.946567565202713 1.9710001945495605 1.0645675659179688 Z M 1.1480002403259277 0.45256751775741577 L 0.4419999122619629 1.2935676574707031 L 0 0.9235672354698181 L 0.7140002250671387 0.07156749069690704 C 0.7970002219080925 -0.027432508766651154 0.9840000942349434 -0.022432543337345123 1.1040000915527344 0.07856746017932892 C 1.2360000908374786 0.1895674616098404 1.2360002398490906 0.3465675190091133 1.1480002403259277 0.45256751775741577 Z"
                            joinStyle: 0
                            fillColor: "#000000"
                            antialiasing: true
                        }

                        SvgPathItem {
                            id: element48
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
                            path: "M 18.515501022338867 9.354217529296875 C 18.528220592066646 10.578025817871094 18.29816123843193 11.792210578918457 17.838632583618164 12.926539421081543 C 17.379103928804398 14.060868263244629 16.69922661781311 15.092827439308167 15.838325500488281 15.962722778320312 C 14.977424383163452 16.83261811733246 13.952587127685547 17.523183554410934 12.823095321655273 17.994476318359375 C 11.693603515625 18.465769082307816 10.481874823570251 18.708435058593754 9.258000373840332 18.70843505859375 C 8.034125924110413 18.708435058593757 6.822397232055664 18.465769082307816 5.692905426025391 17.994476318359375 C 4.563413619995117 17.523183554410934 3.538576602935791 16.83261811733246 2.677675485610962 15.962722778320312 C 1.8167743682861328 15.092827439308167 1.136896163225174 14.060868263244629 0.6773675084114075 12.926539421081543 C 0.217838853597641 11.792210578918457 -0.01221952959895134 10.578025817871094 0.000500040128827095 9.354217529296875 C -0.01221952959895134 8.130409240722656 0.217838853597641 6.916223526000977 0.6773675084114075 5.781894683837891 C 1.136896163225174 4.647565841674805 1.8167743682861328 3.6156076192855835 2.677675485610962 2.7457122802734375 C 3.538576602935791 1.8758169412612915 4.563413619995117 1.18525031208992 5.692905426025391 0.7139575481414795 C 6.822397232055664 0.24266478419303894 8.034125924110413 -2.6645352591003757e-15 9.258000373840332 0 C 10.481874823570251 -4.440892098500626e-15 11.693603515625 0.24266478419303894 12.823095321655273 0.7139575481414795 C 13.952587127685547 1.18525031208992 14.977424383163452 1.8758169412612915 15.838325500488281 2.7457122802734375 C 16.69922661781311 3.6156076192855835 17.379103928804398 4.647565841674805 17.838632583618164 5.781894683837891 C 18.29816123843193 6.916223526000977 18.528220592066646 8.130409240722656 18.515501022338867 9.354217529296875 Z M 1.7595003843307495 4.609217166900635 L 3.629500150680542 6.179217338562012 L 4.882500171661377 4.6842169761657715 C 5.169500172138214 4.342216968536377 5.214500367641449 4.003217399120331 4.912500381469727 3.7112174034118652 C 4.810500800609589 3.61078854650259 4.676892712712288 3.5487469555810094 4.534352779388428 3.535623073577881 C 4.391812846064568 3.5224991915747523 4.249122940003872 3.559101566672325 4.130500316619873 3.6392173767089844 C 4.173359788954258 3.522189036011696 4.174419496208429 3.3939377143979073 4.133500099182129 3.276216983795166 C 4.019500099122524 3.066216990351677 3.973500117659569 3.0292172878980637 3.886500120162964 2.9562172889709473 L 3.86650013923645 2.9392170906066895 C 3.5395001471042633 2.665217101573944 3.1954998522996902 2.899217277765274 2.9494998455047607 3.1932172775268555 L 1.7595003843307495 4.609217166900635 Z M 10.210500717163086 1.337217092514038 L 10.210500717163086 3.039216995239258 L 10.697500228881836 3.039216995239258 L 10.697500228881836 0.6022171974182129 L 9.965499877929688 0.6022171974182129 L 9.30150032043457 2.338217258453369 L 8.637499809265137 0.6022171974182129 L 7.905500411987305 0.6022171974182129 L 7.905500411987305 3.039216995239258 L 8.393500328063965 3.039216995239258 L 8.393500328063965 1.337217092514038 L 9.035500526428223 3.039216995239258 L 9.568500518798828 3.039216995239258 L 10.210500717163086 1.337217092514038 Z M 15.208499908447266 5.353217124938965 L 16.127500534057617 4.05221700668335 L 15.72249984741211 3.5522170066833496 L 14.259500503540039 4.180217266082764 L 15.217500686645508 2.9282174110412598 L 14.840499877929688 2.463217258453369 L 13.310501098632812 4.429217338562012 L 13.758501052856445 4.977217197418213 L 15.202499389648438 4.3822174072265625 L 15.207500457763672 4.388216972351074 L 14.326499938964844 5.678216934204102 L 14.768499374389648 6.228217124938965 L 17.00950050354004 5.14221715927124 L 16.63249969482422 4.676217079162598 L 15.208499908447266 5.353217124938965 Z M 9.258500099182129 15.268217086791992 C 10.03513765335083 15.26821709836479 10.804170846939087 15.115247160196304 11.521690368652344 14.81804084777832 C 12.2392098903656 14.520834535360336 12.89116483926773 14.085212647914886 13.440330505371094 13.536046981811523 C 13.989496171474457 12.98688131570816 14.425118058919907 12.33492636680603 14.72232437133789 11.617406845092773 C 15.019530683755875 10.899887323379517 15.172500610351562 10.130855083465576 15.172500610351562 9.354217529296875 C 15.172500610351562 8.577579975128174 15.019530683755875 7.808546781539917 14.72232437133789 7.09102725982666 C 14.425118058919907 6.373507738113403 13.989496171474457 5.721553266048431 13.440330505371094 5.172387599945068 C 12.89116483926773 4.623221933841705 12.2392098903656 4.1876000463962555 11.521690368652344 3.8903937339782715 C 10.804170846939087 3.5931874215602875 10.03513765335083 3.440217006554641 9.258500099182129 3.4402170181274414 C 7.690009832382202 3.4402170414997677 6.185760736465454 4.063297510147095 5.0766706466674805 5.172387599945068 C 3.967580556869507 6.281477689743042 3.3445003032684335 7.785727262496948 3.3445003032684326 9.354217529296875 C 3.3445003032684326 10.922707796096802 3.967580556869507 12.42695689201355 5.0766706466674805 13.536046981811523 C 6.185760736465454 14.645137071609497 7.690009832382202 15.268217063419662 9.258500099182129 15.268217086791992 Z"
                            joinStyle: 0
                            fillColor: "#000000"
                            antialiasing: true
                        }
                    }
                }
            }

            Item {
                id: group_137
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 179
                anchors.topMargin: 6
                anchors.bottomMargin: 11
                Item {
                    id: group_138
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Text {
                        id: element49
                        width: 56
                        height: 19
                        color: "#000000"
                        text: qsTr("$110.19")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.NoWrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }

                    Text {
                        id: element50
                        width: 48
                        height: 16
                        color: "#04cb2e"
                        text: qsTr("0.32%")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 17
                        anchors.topMargin: 19
                        font.pixelSize: 13
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.weight: Font.DemiBold
                        font.family: "Gelasio"
                    }
                }

                Item {
                    id: group_139
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 8
                    anchors.rightMargin: 50
                    anchors.topMargin: 23
                    anchors.bottomMargin: 1
                    SvgPathItem {
                        id: element51
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 0.3745318353176117 10 C 0.16479400664679567 10 0 9.780000001192093 0 9.5 L 0 0.5 C 0 0.2199999988079071 0.16479400664679567 0 0.3745318353176117 0 C 0.5842696639884277 0 0.7490636706352234 0.2199999988079071 0.7490636706352234 0.5 L 0.7490636706352234 9.5 C 0.7490636706352234 9.780000001192093 0.5842696639884277 10 0.3745318353176117 10 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element52
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 6
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 5.625468175496072 4.509999752044678 C 5.576347715673262 4.51079917390598 5.527645649191449 4.497866522520781 5.4824934689384355 4.4720330238342285 C 5.437341288685422 4.4461995251476765 5.396738522110242 4.408036917448044 5.363295969779598 4.359999656677246 L 3.003745403968571 1.209999680519104 L 0.6441947488621987 4.359999656677246 C 0.4943820168282437 4.559999659657478 0.262172283849901 4.559999659657478 0.11235955181594587 4.359999656677246 C -0.037453180218009224 4.159999653697014 -0.037453180218009224 3.8499998599290848 0.11235955181594587 3.6499998569488525 L 2.7340822117242647 0.15000000596046448 C 2.8838949437582198 -0.04999999701976776 3.1161048776510896 -0.04999999701976776 3.2659176096850446 0.15000000596046448 L 5.887640738393927 3.6499998569488525 C 6.037453470427882 3.8499998599290848 6.037453470427882 4.159999653697014 5.887640738393927 4.359999656677246 C 5.812734372376949 4.459999658167362 5.7153558113678695 4.509999752044678 5.625468175496072 4.509999752044678 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_140
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 249
        anchors.rightMargin: 707
        anchors.topMargin: 556
        anchors.bottomMargin: 253
        Item {
            id: group_141
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            Text {
                id: stock_index
                width: 87
                height: 19
                color: "#727272"
                text: qsTr("Stock index")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 238
                anchors.topMargin: 4
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }

            Text {
                id: stock_index1
                width: 87
                height: 19
                color: "#727272"
                text: qsTr("Stock index")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 123
                anchors.topMargin: 4
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.DemiBold
                font.family: "Gelasio"
            }

            Item {
                id: group_142
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 230
                Rectangle {
                    id: rectangle_69
                    width: 94
                    height: 20
                    color: "#1a1459f9"
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: stock_Sector
                    width: 95
                    height: 19
                    color: "#2667fd"
                    text: qsTr("Stock Sector")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 4
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    font.weight: Font.DemiBold
                    font.family: "Gelasio"
                }
            }
        }

        Item {
            id: group_143
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 23
            SvgPathItem {
                id: line_33_Stroke_
                width: 324
                height: 1
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: -1
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 324 1 L 0 1 L 0 0 L 324 0 L 324 1 Z"
                joinStyle: 0
                fillColor: "#727272"
                antialiasing: true
            }

            SvgPathItem {
                id: line_32_Stroke_
                width: 94
                height: 2
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: -2
                strokeWidth: 2
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 94 2 L 0 2 L 0 0 L 94 0 L 94 2 Z"
                joinStyle: 0
                fillColor: "#1459f9"
                antialiasing: true
            }
        }
    }

    Item {
        id: group_144
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 238
        anchors.rightMargin: 811
        anchors.topMargin: 608
        anchors.bottomMargin: 56
        Rectangle {
            id: rectangle_70
            width: 231
            height: 168
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Item {
            id: group_145
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 87
            anchors.topMargin: 16
            anchors.bottomMargin: 97
            Text {
                id: energy
                width: 61
                height: 23
                color: "#000000"
                text: qsTr("Energy")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 67
                anchors.topMargin: 5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Gelasio"
            }

            Item {
                id: group_146
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 72
                ArcItem {
                    id: ellipse_17
                    width: 55
                    height: 55
                    anchors.left: parent.left
                    anchors.top: parent.top
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "#fd633d"
                    outlineArc: true
                    fillColor: "#fd7653"
                    end: 450.00001
                    begin: 90
                    arcWidth: 27.5
                    antialiasing: true
                }

                SvgPathItem {
                    id: element53
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 18
                    anchors.rightMargin: 17
                    anchors.topMargin: 9
                    anchors.bottomMargin: 6
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 0 0 L 0 22 L 6 22 L 6 40 L 20 16 L 12 16 L 20 0 L 0 0 Z"
                    joinStyle: 0
                    fillColor: "#ffffff"
                    antialiasing: true
                }
            }
        }

        SvgPathItem {
            id: element54
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 199
            anchors.rightMargin: 16
            anchors.topMargin: 16
            anchors.bottomMargin: 150
            strokeWidth: 2
            strokeStyle: 1
            strokeColor: "#000000"
            path: "M 0 1 C 0 1.2652164995670319 0.10535703599452972 1.519570216536522 0.2928934097290039 1.707106590270996 C 0.4804297834634781 1.8946429640054703 0.7347835004329681 2 1 2 C 1.2652164995670319 2 1.519570216536522 1.8946429640054703 1.707106590270996 1.707106590270996 C 1.8946429640054703 1.519570216536522 2 1.2652164995670319 2 1 C 2 0.7347835004329681 1.8946429640054703 0.4804297834634781 1.707106590270996 0.2928934097290039 C 1.519570216536522 0.10535703599452972 1.2652164995670319 0 1 0 C 0.7347835004329681 0 0.4804297834634781 0.10535703599452972 0.2928934097290039 0.2928934097290039 C 0.10535703599452972 0.4804297834634781 4.440892098500626e-16 0.7347835004329681 0 1 Z M 7 1 C 7 1.2652164995670319 7.10535703599453 1.519570216536522 7.292893409729004 1.707106590270996 C 7.480429783463478 1.8946429640054703 7.734783500432968 2 8 2 C 8.265216499567032 2 8.519570216536522 1.8946429640054703 8.707106590270996 1.707106590270996 C 8.89464296400547 1.519570216536522 9 1.2652164995670319 9 1 C 9 0.7347835004329681 8.89464296400547 0.4804297834634781 8.707106590270996 0.2928934097290039 C 8.519570216536522 0.10535703599452972 8.265216499567032 0 8 0 C 7.734783500432968 0 7.480429783463478 0.10535703599452972 7.292893409729004 0.2928934097290039 C 7.10535703599453 0.4804297834634781 7 0.7347835004329681 7 1 Z M 14 1 C 14 1.2652164995670319 14.105356082320213 1.519570216536522 14.292892456054688 1.707106590270996 C 14.480428829789162 1.8946429640054703 14.734783500432968 2 15 2 C 15.265216499567032 2 15.519571170210838 1.8946429640054703 15.707107543945312 1.707106590270996 C 15.894643917679787 1.519570216536522 16 1.2652164995670319 16 1 C 16 0.7347835004329681 15.894643917679787 0.4804297834634781 15.707107543945312 0.2928934097290039 C 15.519571170210838 0.10535703599452972 15.265216499567032 0 15 0 C 14.734783500432968 0 14.480428829789162 0.10535703599452972 14.292892456054688 0.2928934097290039 C 14.105356082320213 0.4804297834634781 14 0.7347835004329681 14 1 Z"
            joinStyle: 2
            fillColor: "transparent"
            antialiasing: true
        }

        Text {
            id: stocks3
            width: 81
            height: 23
            color: "#727272"
            text: qsTr("80 stocks")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 21
            anchors.topMargin: 90
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.NoWrap
            font.weight: Font.Medium
            font.family: "Gelasio"
        }

        Item {
            id: group_147
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 17
            anchors.rightMargin: 32
            anchors.topMargin: 127
            anchors.bottomMargin: 9
            Text {
                id: element55
                width: 102
                height: 32
                color: "#000000"
                text: qsTr("$150.23")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Gelasio"
            }

            Item {
                id: group_148
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 115
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Rectangle {
                    id: rectangle_71
                    width: 67
                    height: 22
                    color: "#e8ffeb"
                    radius: 7
                    anchors.left: parent.left
                    anchors.top: parent.top
                }

                Text {
                    id: element56
                    width: 39
                    height: 19
                    color: "#42db59"
                    text: qsTr("8.2%")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 19
                    anchors.topMargin: 1
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.NoWrap
                    font.weight: Font.Bold
                    font.family: "Gelasio"
                }

                Item {
                    id: group_149
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 6
                    anchors.rightMargin: 55
                    anchors.topMargin: 5
                    anchors.bottomMargin: 6
                    SvgPathItem {
                        id: element57
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 3
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 0
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 0.3745318353176117 10 C 0.16479400664679567 10 0 9.780000001192093 0 9.5 L 0 0.5 C 0 0.2199999988079071 0.16479400664679567 0 0.3745318353176117 0 C 0.5842696639884277 0 0.7490636706352234 0.2199999988079071 0.7490636706352234 0.5 L 0.7490636706352234 9.5 C 0.7490636706352234 9.780000001192093 0.5842696639884277 10 0.3745318353176117 10 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element58
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 6
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 5.625468175496072 4.509999752044678 C 5.576347715673262 4.51079917390598 5.527645649191449 4.497866522520781 5.4824934689384355 4.4720330238342285 C 5.437341288685422 4.4461995251476765 5.396738522110242 4.408036917448044 5.363295969779598 4.359999656677246 L 3.003745403968571 1.209999680519104 L 0.6441947488621987 4.359999656677246 C 0.4943820168282437 4.559999659657478 0.262172283849901 4.559999659657478 0.11235955181594587 4.359999656677246 C -0.037453180218009224 4.159999653697014 -0.037453180218009224 3.8499998599290848 0.11235955181594587 3.6499998569488525 L 2.7340822117242647 0.15000000596046448 C 2.8838949437582198 -0.04999999701976776 3.1161048776510896 -0.04999999701976776 3.2659176096850446 0.15000000596046448 L 5.887640738393927 3.6499998569488525 C 6.037453470427882 3.8499998599290848 6.037453470427882 4.159999653697014 5.887640738393927 4.359999656677246 C 5.812734372376949 4.459999658167362 5.7153558113678695 4.509999752044678 5.625468175496072 4.509999752044678 Z"
                        joinStyle: 0
                        fillColor: "#04cb2e"
                        antialiasing: true
                    }
                }
            }
        }
    }

    Item {
        id: group_150
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 517
        anchors.rightMargin: 708
        anchors.topMargin: 624
        anchors.bottomMargin: 153
        ArcItem {
            id: ellipse_18
            width: 55
            height: 55
            anchors.left: parent.left
            anchors.top: parent.top
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "#274ae8"
            outlineArc: true
            fillColor: "#4060eb"
            end: 450.00001
            begin: 90
            arcWidth: 27.5
            antialiasing: true
        }

        SvgPathItem {
            id: element59
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 13
            anchors.rightMargin: 12
            anchors.topMargin: 13
            anchors.bottomMargin: 12
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 3.3333333333333335 30 C 2.416666646798452 30 1.632222334543864 29.67388908068339 0.9800000985463461 29.021666844685875 C 0.3277778625488281 28.369444608688358 0.0011111110992108784 27.58444448312124 0 26.666666666666668 L 0 0 L 3.3333333333333335 0 L 3.3333333333333335 26.666666666666668 L 30 26.666666666666668 L 30 30 L 3.3333333333333335 30 Z M 5 25 L 5 10 L 11.666666666666668 10 L 11.666666666666668 25 L 5 25 Z M 13.333333333333334 25 L 13.333333333333334 1.6666666666666667 L 20 1.6666666666666667 L 20 25 L 13.333333333333334 25 Z M 21.666666666666668 25 L 21.666666666666668 16.666666666666668 L 28.333333333333336 16.666666666666668 L 28.333333333333336 25 L 21.666666666666668 25 Z"
            joinStyle: 0
            fillColor: "#ffffff"
            antialiasing: true
        }
    }

    Button {
        id: backButton
        x: 39
        y: 776
        text: qsTr("Back to Finbank")
        font.pixelSize: 18
        background: Rectangle {}
    }
}

/*##^##
Designer {
    D{i:0;uuid:"ae8f7c6b-c745-5bec-a468-c7abb59347d4"}D{i:1;uuid:"1a9ba4ed-d5e4-5c30-bba5-1d4fd82a0be2"}
D{i:2;uuid:"46778268-db1f-5182-80e7-d5028cbe2377"}D{i:3;uuid:"6fae754d-eb74-5871-bf40-788042e6f30d"}
D{i:4;uuid:"7b678dff-7df1-527d-8df3-b8685ce459e5"}D{i:5;uuid:"995efbd7-366e-5eb7-971d-948ba40a9f77"}
D{i:6;uuid:"7226c46c-e36b-5359-afff-b36703f82afd"}D{i:7;uuid:"74a5c532-629a-502b-b8c4-d81922671c49"}
D{i:8;uuid:"0ce38aa3-f6ba-507e-b8df-222b4fe2c7db"}D{i:9;uuid:"3f511f38-ba11-5e63-9ab9-5fef89c4dd97"}
D{i:10;uuid:"9f20cf35-a1cb-5a5b-a10d-e82caa414c6a"}D{i:11;uuid:"28fccb84-61f4-534d-acb2-643ee58ab84b"}
D{i:12;uuid:"035076aa-c946-5a11-aceb-f9e00e492600"}D{i:13;uuid:"ec5ddf94-140b-554f-ae68-140324e1e23e"}
D{i:14;uuid:"ce457dc1-a9e8-5da9-95de-1e94cfe6cb76"}D{i:15;uuid:"10c21779-c5fd-5de8-af31-3ff07c67b5d0"}
D{i:16;uuid:"5e1cfa83-b46f-577e-b828-4cbb78b40d51"}D{i:17;uuid:"45440b46-164c-5857-8966-d16b90e4bb26"}
D{i:18;uuid:"c513cca4-fd90-5086-88f2-3ccd04b848df"}D{i:19;uuid:"daffeaef-7043-535a-875c-59b3278b3c06"}
D{i:20;uuid:"b5b9443d-d25a-5fc2-9afb-d5f96ef2ec62"}D{i:21;uuid:"740680fb-c53c-5303-9857-c7b852541faa"}
D{i:22;uuid:"9cbbaf59-4965-5a1a-ba01-940691a26383"}D{i:23;uuid:"30d138f8-e64f-5845-b44a-50357420f31d"}
D{i:24;uuid:"309252c6-e8b5-531f-8526-3651fdd79f0e"}D{i:25;uuid:"54985755-443c-5761-b826-7e6c279dce96"}
D{i:26;uuid:"a4bdb8a3-0f7b-5037-afbd-18e4726d62a3"}D{i:27;uuid:"86075f4e-a73c-5158-9106-45585100f63c"}
D{i:28;uuid:"ea1c6c84-ca86-58eb-b4f2-d846a3b92237"}D{i:29;uuid:"32a5a533-5638-5d01-8378-cb41b849b1eb"}
D{i:30;uuid:"b829ceaa-2b57-59bf-8802-0b6886eca8d5"}D{i:31;uuid:"a1729330-d4a9-5618-a392-8bc1290d5dc5"}
D{i:32;uuid:"75f92e21-2f48-57e0-9d2e-76491ebcf8a8"}D{i:33;uuid:"bf1ef0b3-8d22-5156-9702-d06d58f1ca6e"}
D{i:34;uuid:"90ffea2d-fb76-57c1-b558-3c1dac598390"}D{i:35;uuid:"df0bc97e-0639-5b1d-b530-a530d9e47f26"}
D{i:36;uuid:"ffdce2e9-d567-5391-a385-374de28dda05"}D{i:37;uuid:"7804224b-5789-55f7-8836-0cda039ce9f0"}
D{i:38;uuid:"b0f2e205-4d65-5fb3-930f-50a4707c3910"}D{i:39;uuid:"999aeaae-e153-58b5-9c52-cb83cbaa34f3"}
D{i:40;uuid:"10ceade3-0ff7-5332-bafe-db20c59ba077"}D{i:41;uuid:"16a98536-afa5-59cf-ab55-d41946b9867b"}
D{i:42;uuid:"4625b11a-9de8-5fa2-a843-746be1e7fccb"}D{i:47;uuid:"fedd0de7-5ee2-5e27-9827-ef6fd4a07b84"}
D{i:48;uuid:"4983fdc9-9afa-53a2-b1b4-998f8d70bf4c"}D{i:49;uuid:"7942d081-c167-56d0-8aa3-0e3e464593b9"}
D{i:50;uuid:"639d8f88-fab8-5463-af59-607b90f4e70c"}D{i:51;uuid:"1308466c-c154-58dd-98da-5fd0d021e613"}
D{i:52;uuid:"966661df-40a6-5675-822e-2f3a3c824dbc"}D{i:53;uuid:"0d2a8e01-f10b-5194-b813-327b55bf1bce"}
D{i:54;uuid:"cebe7da8-84e5-538e-b925-b3a30c9aa22c"}D{i:55;uuid:"0948e5aa-1332-5f40-80b2-6bf9619b0fa9"}
D{i:56;uuid:"673b0b4f-3eb3-53d2-bafb-87e47a331dbe"}D{i:57;uuid:"8227b756-7830-573a-bca2-7e059fa4ec46"}
D{i:58;uuid:"da7cd48c-da1b-5d5b-a7f7-98a2b02819b2"}D{i:59;uuid:"86565bce-dce5-5d0f-b60c-28d5e6c2c581"}
D{i:60;uuid:"12e0b407-1375-5579-93a4-3aa8c1ea5045"}D{i:61;uuid:"f645eb0e-f677-5871-8bd5-b0e23a0ca055"}
D{i:62;uuid:"e8cae3ac-aee5-5a7c-bfe1-a87dd8d70a20"}D{i:63;uuid:"ba5d8b7b-d430-53e2-92f9-5414ac90cbfc"}
D{i:64;uuid:"9b50ffaa-30d1-5778-97af-e7ee465be1e7"}D{i:65;uuid:"6c640074-a960-5e45-be20-4ed1c4ae6ae3"}
D{i:66;uuid:"89e3158c-53db-5e7d-a486-34fe35ec71b5"}D{i:67;uuid:"29a4ac5e-326c-5332-ab70-332898a3d0e8"}
D{i:68;uuid:"ed3ce45a-a117-5b8c-ba93-40fb32bf5c37"}D{i:69;uuid:"3cc1cd89-341d-58cc-b751-c7acc323e741"}
D{i:70;uuid:"70e4a854-9ddd-5a16-abea-38c7eb966db0"}D{i:71;uuid:"caa0f459-d435-5011-b7bd-394ad506435b"}
D{i:72;uuid:"72c8553b-1810-596a-bd5e-0f0a330615ab"}D{i:73;uuid:"a52cc2b1-eb07-57f9-ab80-5b5c3113df05"}
D{i:74;uuid:"166a6772-4041-5e3d-a68c-fb118a2d1cbb"}D{i:75;uuid:"07672a97-ed8d-5ec1-beb5-b7be535442d4"}
D{i:76;uuid:"24160fa9-abef-518e-97f7-d8d64c5cfc9e"}D{i:77;uuid:"b5072876-411a-5093-9b17-2a286fc8f998"}
D{i:78;uuid:"74d5c507-afd2-5ba5-9c53-f78f21677141"}D{i:79;uuid:"53622313-2423-503e-9596-0c7017c59a0a"}
D{i:80;uuid:"9d7c349b-caed-522d-8869-ec52291152d3"}D{i:81;uuid:"1702a527-a4f9-5e47-a757-84c176adb8a6"}
D{i:82;uuid:"daa22169-1a8f-5cf1-b51a-b370941ed99b"}D{i:83;uuid:"fb377e3e-89fa-5b22-9aa3-a7ae29126245"}
D{i:84;uuid:"0a1f7e66-d7a5-5e13-ba4f-c93b32932453"}D{i:85;uuid:"5a8ff0f4-3994-5b95-8653-062d80c12eb9"}
D{i:86;uuid:"6abaf2ac-1c19-5f64-b687-42b3a8c26b24"}D{i:87;uuid:"e19b8835-2910-5e9c-82b8-f52ca36b4f4e"}
D{i:88;uuid:"429900cb-6ab6-5b16-92a7-488b6fc4d350"}D{i:89;uuid:"f161c632-28d7-5787-99ea-d9999952086b"}
D{i:90;uuid:"5975c3ed-3eae-584d-891d-0feac4df3c0e"}D{i:91;uuid:"6476efaf-6f8e-5cb6-b990-fea103a84fdb"}
D{i:92;uuid:"2f05e651-739a-59d0-8910-cef155779112"}D{i:93;uuid:"82e8baf2-2146-56d4-8107-cfd0c9e17354"}
D{i:94;uuid:"f135976f-2f1a-5cbc-ac6e-110321b6881b"}D{i:95;uuid:"3d2256ba-7842-5298-a654-9448fce0c6a7"}
D{i:96;uuid:"0fdc8370-e85d-5e31-8bc7-50eab3a3e0f1"}D{i:97;uuid:"7bfa1203-e1ca-5a4c-9bc8-b20b1078faf4"}
D{i:98;uuid:"e320cef0-a038-53c2-9221-c7efa08dab33"}D{i:99;uuid:"714eed9a-da09-52ee-9330-b0f21bd14a91"}
D{i:100;uuid:"e8ee58b0-7a79-51ee-a96d-269de129d372"}D{i:101;uuid:"bb58942a-211b-595c-8264-5de77c0e7543"}
D{i:102;uuid:"e55b39ad-e688-5152-82b5-a771043a4575"}D{i:103;uuid:"cdf8e436-f846-51c7-93e5-85e935ba1fc6"}
D{i:104;uuid:"eea137b4-a2cf-564a-b7ef-6a3a2b1f64c8"}D{i:105;uuid:"0a7ebd07-c620-5b68-8c08-eec2f1ce22a7"}
D{i:106;uuid:"c44f2579-7d83-52da-8779-457e4f2ccb8b"}D{i:107;uuid:"8e2dd15f-0f33-5e22-8f54-2f0db740e63b"}
D{i:108;uuid:"a339b615-90eb-5725-af9d-eeb5b43691c2"}D{i:109;uuid:"9b1eec07-a3f4-50c6-bcd8-43f840049a3e"}
D{i:110;uuid:"0f6030e9-15e2-5611-a551-f7047f924e8c"}D{i:111;uuid:"573d3e97-7b2e-5455-a9b0-5ba57887e63f"}
D{i:112;uuid:"0d1c82b1-9185-5125-887c-cead077cedc0"}D{i:113;uuid:"d7909c0c-7447-5770-affb-5c2ffe5ab4b5"}
D{i:114;uuid:"5c8b654f-f340-5052-b685-ba2f6b72e319"}D{i:115;uuid:"baa654f4-4b1e-5006-b544-ff5b437c35b4"}
D{i:116;uuid:"d9822451-fe57-5ffb-8d4f-686f5acb9ac2"}D{i:117;uuid:"b3036755-7478-5109-a778-342ba5b2211a"}
D{i:118;uuid:"236faade-6f43-55a7-9a7e-51bf18404f97"}D{i:119;uuid:"9f8661f5-97f9-5586-9180-5cb91b314ffa"}
D{i:120;uuid:"56b681fe-53eb-56cb-8120-743b014d1db8"}D{i:121;uuid:"1d9b973a-0537-504d-a982-584a8adf9eca"}
D{i:122;uuid:"aa6ec26e-4170-5770-815c-3f709c99d0c3"}D{i:123;uuid:"3bdd8ecb-393f-5bea-880d-b20a4e686274"}
D{i:124;uuid:"7a5d3e5a-5aa1-5319-a1d0-fc8caecede4b"}D{i:125;uuid:"eb8043bc-65a2-5c2d-880b-79d6b49c5f4d"}
D{i:126;uuid:"d565b2b5-7436-5a3f-b3c9-b39a278a49bf"}D{i:127;uuid:"f3940d58-83fd-5f52-990b-825ae7957190"}
D{i:128;uuid:"b46ec752-d2b2-51a8-b653-1ffbab190efa"}D{i:129;uuid:"ee6fab38-2eee-52ee-9b7b-b381e769e42c"}
D{i:130;uuid:"01e94d3d-c2c5-5173-b7d2-f290e7d280ba"}D{i:131;uuid:"e13180ef-23f0-5823-ab21-ee861ac08634"}
D{i:132;uuid:"aa46ec04-096a-54b1-8128-0c99bbca596c"}D{i:133;uuid:"4ee141c6-fb8f-50fb-853d-cec806d9ea85"}
D{i:134;uuid:"9c35f615-f67c-524c-90f6-9fdada291672"}D{i:135;uuid:"1e28ce75-68a1-50b5-b96c-3b66acbec600"}
D{i:136;uuid:"a3a0b2d9-3f6e-5f50-a4f9-3cc43ab158b2"}D{i:137;uuid:"c7537a70-0c9d-514b-96d4-9464319a0169"}
D{i:138;uuid:"3508ad56-bfe9-5cd2-ab58-318466c1fd54"}D{i:139;uuid:"4525270a-6f75-5451-953c-921b85ebfec4"}
D{i:140;uuid:"27206dd4-141c-503e-80fa-05d66657b4c7"}D{i:141;uuid:"7b708511-c47e-5cd0-ab2a-d57c15aa64e6"}
D{i:142;uuid:"fd5db9a6-592f-5bbe-9a2b-693427cc7e81"}D{i:143;uuid:"cd8f972a-ee54-5830-9fb7-d497ac544c90"}
D{i:144;uuid:"6288bbf0-7887-50b9-af41-82270c08f252"}D{i:145;uuid:"f2583ce9-5d20-5626-a9e0-6d1df6c59e16"}
D{i:146;uuid:"3c8ee5de-ef9c-58b6-a4bc-e87f24ee64e4"}D{i:147;uuid:"2f29254a-5ea2-5839-8404-b1a62895da93"}
D{i:148;uuid:"a992b16e-224a-5dcd-91fb-9b967c8964cc"}D{i:149;uuid:"6057f771-0d83-5de4-aec6-8b86bb21f39c"}
D{i:150;uuid:"527eb793-11e7-57ad-98ea-fce41df2b4b0"}D{i:151;uuid:"0b0d1fc7-f5fb-5d4c-8268-cfc53055a291"}
D{i:152;uuid:"12ab7714-0cea-594c-a795-be7f0d21ed47"}D{i:153;uuid:"3c6bc93c-3d16-5783-9b63-759d92e6e431"}
D{i:154;uuid:"b7d88509-904c-5b9a-a6d2-63502009ce01"}D{i:155;uuid:"640d7b06-d338-54ed-b6f1-c0cbec88c0f9"}
D{i:156;uuid:"bb455de1-c8bc-511a-9fdb-0e5f6363d2fe"}D{i:157;uuid:"1232d59f-fa4b-5017-9fd7-59fff1bcff43"}
D{i:158;uuid:"f1d3a76c-5f4a-5189-9c31-f43afd5162c1"}D{i:159;uuid:"900da36e-30c8-5fbd-8a84-da0cb7aaa7b0"}
D{i:160;uuid:"1428cc7e-ba51-5ae8-a25a-f3a8865dfc2a"}D{i:161;uuid:"5e8f8233-6ef0-52c3-bd6f-36e8149daf2e"}
D{i:162;uuid:"35d0fdff-d6c6-5b1c-9200-7151daa248ba"}D{i:163;uuid:"d1c5e38d-7836-5591-9813-f23117c45183"}
D{i:164;uuid:"af56cdd4-d6ae-5e96-9d6c-ebf881490254"}D{i:165;uuid:"8a3d73cc-1bc4-56c8-bd0e-f6ac6e06cb3f"}
D{i:166;uuid:"7d8fb0a5-5c00-5f95-8e67-6495443dcbb1"}D{i:167;uuid:"969c837e-25c8-5910-9c0f-0a8a0482fd49"}
D{i:168;uuid:"ad946403-ad03-5e93-830f-38102ccf1130"}D{i:169;uuid:"36e2f6ee-863a-57a9-9155-7e7ac68ad995"}
D{i:170;uuid:"51e4a30c-26b3-515a-bd10-c4e57a8be32a"}D{i:171;uuid:"1246eb46-2a15-535f-a721-e6e2ca19612e"}
D{i:172;uuid:"cd9e9524-28eb-57a4-91d1-24fb6715c730"}D{i:173;uuid:"3da5eeb8-fb49-5e80-b607-edbb0eaaf64a"}
D{i:174;uuid:"1ac4624e-7510-57f9-9a32-4bed3ef948aa"}D{i:175;uuid:"c5f25805-8315-50af-9488-36440fb06a39"}
D{i:176;uuid:"49549434-03fd-594d-9dbc-df40ea3a057d"}D{i:177;uuid:"74692d8f-86c3-539d-a91f-185ecbbc7d1e"}
D{i:178;uuid:"62cd9267-65fa-5dea-b482-471894e01833"}D{i:179;uuid:"430260be-0be0-5c86-88f3-8769a710f081"}
D{i:180;uuid:"8fa57697-5d83-5a4f-9207-611120d23f55"}D{i:181;uuid:"622d53e6-2920-529d-a92e-5dd00c21136c"}
D{i:182;uuid:"e5472d1b-cc73-54e2-a533-fe18e0d7215b"}D{i:183;uuid:"6b55763f-4eb4-5d26-a8a6-a47a66c2f0f8"}
D{i:184;uuid:"4abf362f-1afe-571d-82d8-0e19f60e4360"}D{i:185;uuid:"ce223aa5-31f4-5082-80cf-7f9ddd171729"}
D{i:186;uuid:"3edf0bbd-6af3-565d-8d63-7a235ca9a105"}D{i:187;uuid:"fbb97829-dfe7-59d2-a244-d8247adee25f"}
D{i:188;uuid:"300fed01-289e-52aa-abdd-3f9efb62cc42"}D{i:189;uuid:"8fa5e0e9-104e-594b-84c9-2232a52cf18c"}
D{i:190;uuid:"b413b2fe-d5ec-56c2-8d4a-9a3444dff44f"}D{i:191;uuid:"19995fdd-f85c-534f-8318-408f3ce13927"}
D{i:192;uuid:"26dd6f29-e2fe-5cb4-89cb-ac5400b974cf"}D{i:193;uuid:"46247fb3-3dbd-5c5a-a791-3021bb7fc5ae"}
D{i:194;uuid:"0654246b-5c0f-5f8b-9d91-cef12f06c3e4"}D{i:195;uuid:"7c76c3ed-f0af-5e23-823b-54ac7a126e4b"}
D{i:196;uuid:"29e25df0-412e-5caf-a8d9-721e14e612dd"}D{i:197;uuid:"964f24bd-6ab2-55fa-8e00-e2d200df1172"}
D{i:198;uuid:"5f64ef0c-feec-5b2e-954c-c78b87b3f3b3"}D{i:199;uuid:"220d4583-9fb2-539a-8af1-83f9f9632cd5"}
D{i:200;uuid:"8bd52918-4289-51c4-b4e5-a5796167aa53"}D{i:201;uuid:"50c35a12-2c81-5db4-9dc1-17e482406991"}
D{i:202;uuid:"64f9ca9c-266f-5204-9564-f59418b651a7"}D{i:203;uuid:"ee1a3156-7420-567e-91f7-c41cc2941767"}
D{i:204;uuid:"d950a79a-2bbb-5fcf-b56f-2ec08e7f798b"}D{i:205;uuid:"3d123114-a69a-51dc-806b-fb327c920b6d"}
D{i:206;uuid:"21bf35c7-ef90-5f9d-b106-f9b8df44f4cf"}D{i:207;uuid:"c410a900-d69d-5985-9ea7-de0b41f67c1d"}
D{i:208;uuid:"5387c718-4c98-567e-8175-d66a433b6e24"}D{i:209;uuid:"79c21c77-3415-53bc-b1ed-d5e68c959772"}
D{i:210;uuid:"94616c74-17a8-534d-809e-8f33e71bd562"}
}
##^##*/

