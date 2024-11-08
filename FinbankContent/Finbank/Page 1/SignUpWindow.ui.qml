import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0

Rectangle {
    id: signUpWindow
    width: 1280
    height: 832
    color: "#292929"
    property alias signUp_PB: signUp_PB
    property alias usernameField: usernameField.text
    property alias emailField: emailField.text
    property alias passwordField: passwordField.text
    property alias googleFast1: googleFast1
    property alias githubFast: githubFast
    property bool isGoogleRegistration: false

    Rectangle {
        id: rectangle_14
        width: 1280
        height: 832
        color: "#292929"
        anchors.left: parent.left
        anchors.top: parent.top

        AnimatedImage {
            id: animatedImage
            x: 557
            y: 8
            width: 715
            height: 824
            source: "../assets/signin.gif"
        }
    }

    Rectangle {
        id: rectangle_10
        width: 506
        height: 790
        color: "#323232"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 18
        anchors.topMargin: 21
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
            source: "../assets/logo2.png"
        }
    }

    Item {
        id: createYourAccount
        x: 114
        y: 113
        width: 313
        height: 50
        Rectangle {
            id: rectangle_11
            width: 223
            height: 50
            color: "#3a3b40"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 45
        }

        Text {
            id: create_your_account
            width: 314
            height: 27
            color: "#868ca7"
            text: qsTr("Create your account")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 12
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
        }
    }

    Item {
        id: instructions
        x: 85
        y: 191
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
        }
    }

    Item {
        id: orBreak
        x: 29
        y: 377
        width: 483
        height: 20
        SvgPathItem {
            id: line_1_Stroke_
            width: 210
            height: 1
            opacity: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 9
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 210 1 L 0 1 L 0 0 L 210 0 L 210 1 Z"
            joinStyle: 0
            fillColor: "#ffffff"
            antialiasing: true
        }

        SvgPathItem {
            id: line_2_Stroke_
            width: 210
            height: 1
            opacity: 0.1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 273
            anchors.topMargin: 9
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 210 1 L 0 1 L 0 0 L 210 0 L 210 1 Z"
            joinStyle: 0
            fillColor: "#ffffff"
            antialiasing: true
        }

        Text {
            id: or
            width: 59
            height: 20
            color: "#7e7e7e"
            text: qsTr("or")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 215
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.weight: Font.Bold
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
    }

    Item {
        id: usernameGroup
        x: 68
        y: 426
        width: 406
        height: 51
        TextField {
            id: usernameField
            x: 0
            y: -8
            width: 406
            height: 51
            placeholderText: qsTr("Enter your username")
            placeholderTextColor: "white"
            font.pixelSize: 18
            readOnly: isGoogleRegistration

            font.weight: Font.Bold
            color: "#999999"
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            padding: 10 // Add some padding for better text spacing
        }
    }

    Item {
        id: emailGroup
        x: 53
        y: 486
        width: 421
        height: 51
        TextField {
            id: emailField
            x: 15
            y: -8
            width: 406
            height: 51
            placeholderText: qsTr("Enter your email")
            placeholderTextColor: "white"
            font.pixelSize: 18
            readOnly: isGoogleRegistration
            font.weight: Font.Bold
            color: "#999999"
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            padding: 10 // Add some padding for better text spacing
        }
    }

    Item {
        id: passwordGroup
        x: 68
        y: 546
        width: 406
        height: 51
        TextField {
            id: passwordField
            x: 0
            y: -8
            width: 406
            height: 51
            placeholderText: qsTr("Enter your password")
            placeholderTextColor: "white"
            font.pixelSize: 18

            font.weight: Font.Bold
            color: "#999999"
            echoMode: TextInput.Password
            background: Rectangle {
                color: "#4d171716"
                radius: 15
                border.color: "#838383"
                border.width: 1
            }
            padding: 10 // Add some padding for better text spacing
        }
    }

    Rectangle {
        id: material_symbols_visibility_off
        width: 24
        height: 32
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 427
        anchors.topMargin: 552
        SvgPathItem {
            id: element2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 1
            anchors.rightMargin: 1
            anchors.topMargin: 3
            anchors.bottomMargin: 1
            strokeWidth: 1
            strokeStyle: 1
            strokeColor: "transparent"
            path: "M 18.799999237060547 19.80000114440918 L 14.600000381469727 15.65000057220459 C 14.016667068004608 15.833333909511566 13.429333627223969 15.971001632511616 12.838000297546387 16.06300163269043 C 12.246666967868805 16.155001632869244 11.63400000333786 16.20066742959898 11 16.200000762939453 C 8.483333349227905 16.200000762939453 6.241666793823242 15.504333257675171 4.275000095367432 14.11299991607666 C 2.308333396911621 12.72166657447815 0.8833333253860474 10.917333126068115 0 8.699999809265137 C 0.3499999940395355 7.816666483879089 0.7916666865348816 6.995666205883026 1.3250000476837158 6.23699951171875 C 1.85833340883255 5.478332817554474 2.4666667580604553 4.799333155155182 3.1500000953674316 4.199999809265137 L 0.3999999761581421 1.3999998569488525 L 1.7999999523162842 0 L 20.200000762939453 18.400001525878906 L 18.799999237060547 19.80000114440918 Z M 11 13.199999809265137 C 11.183333337306976 13.199999809265137 11.354332864284515 13.191666858270764 11.512999534606934 13.175000190734863 C 11.671666204929352 13.158333523198962 11.84233295917511 13.124999810010195 12.024999618530273 13.074999809265137 L 6.625 7.675000190734863 C 6.574999999254942 7.85833352804184 6.541666762903333 8.029333055019379 6.525000095367432 8.187999725341797 C 6.508333427831531 8.346666395664215 6.500000000000001 8.517333149909973 6.5 8.699999809265137 C 6.5 9.949999809265137 6.937666416168213 11.01266622543335 7.812999725341797 11.887999534606934 C 8.68833303451538 12.763332843780518 9.750666618347168 13.200666475924663 11 13.199999809265137 Z M 18.299999237060547 13.65000057220459 L 15.125 10.5 C 15.241666667163372 10.216666668653488 15.33333294838667 9.929332882165909 15.399999618530273 9.637999534606934 C 15.466666288673878 9.346666187047958 15.499999999999996 9.033999800682068 15.5 8.699999809265137 C 15.5 7.449999809265137 15.062666416168213 6.38766622543335 14.187999725341797 5.512999534606934 C 13.31333303451538 4.638332843780518 12.250666618347168 4.200666475924663 11 4.199999809265137 C 10.66666665673256 4.199999809265137 10.354333072900772 4.233333520591259 10.062999725341797 4.300000190734863 C 9.771666377782822 4.366666860878468 9.483999818563461 4.466667041182518 9.199999809265137 4.600000381469727 L 6.650000095367432 2.049999952316284 C 7.333333432674408 1.7666666209697723 8.033333361148834 1.5543331950902939 8.75 1.4129998683929443 C 9.466666638851166 1.2716665416955948 10.216666638851166 1.2006667143432423 11 1.2000000476837158 C 13.516666650772095 1.2000000476837158 15.758333683013916 1.8959999084472656 17.725000381469727 3.2879998683929443 C 19.691667079925537 4.679999828338623 21.116666674613953 6.483999729156494 22 8.699999809265137 C 21.616666674613953 9.683333158493042 21.112332820892334 10.595999717712402 20.48699951171875 11.437999725341797 C 19.861666202545166 12.279999732971191 19.132665932178497 13.017333924770355 18.299999237060547 13.65000057220459 Z M 13.675000190734863 9.050000190734863 L 10.675000190734863 6.050000190734863 C 11.141666859388351 5.966666854918003 11.571000307798386 6.004333436489105 11.963000297546387 6.163000106811523 C 12.355000287294388 6.321666777133942 12.692333728075027 6.550666093826294 12.975000381469727 6.84999942779541 C 13.257667034864426 7.149332761764526 13.462000295519829 7.49533286690712 13.588000297546387 7.887999534606934 C 13.714000299572945 8.280666202306747 13.743000194430351 8.668000191450119 13.675000190734863 9.050000190734863 Z"
            joinStyle: 0
            fillColor: "#666666"
            antialiasing: true
        }
        clip: true
    }

    Button {
        id: signUp_PB
        width: 217
        height: 64
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 148
        anchors.topMargin: 646
        background: Rectangle {
            id: rectangle_19
            color: "#ffffff"
            radius: 15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
        }

        Text {
            id: element3
            color: "#000000"
            text: qsTr("Continue")
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
                id: element4
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
                id: element5
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

    Item {
        id: fastLogin
        x: 196
        y: 290
        width: 136
        height: 58
        Rectangle {
            id: googleFast
            width: 61
            height: 58
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Rectangle {
                id: rectangle_12
                color: "#525252"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            SvgPathItem {
                id: element6
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 15
                anchors.rightMargin: 14
                anchors.topMargin: 14
                anchors.bottomMargin: 14
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 31.75346749038268 13.65000057220459 L 16.68207651593322 13.65000057220459 L 16.68207651593322 17.744999885559082 L 27.381613452421643 17.744999885559082 C 26.839240530385965 23.459999799728394 21.629173598806492 25.905000686645508 16.698510867136363 25.905000686645508 C 10.403698238430735 25.905000686645508 4.881356151375892 21.375 4.881356151375892 15 C 4.881356151375892 8.850000143051147 10.140729810194802 4.0950000286102295 16.714946785754975 4.0950000286102295 C 21.793529258307814 4.0950000286102295 24.768363521265467 7.049999713897705 24.768363521265467 7.049999713897705 L 27.89111439027489 4.079999685287476 C 27.89111439027489 4.079999685287476 23.880844292261465 0 16.550592301815254 0 C 7.215204478654593 0 0 7.200000286102295 0 15 C 0 22.575000286102295 6.7878792153557335 30 16.79712481143257 30 C 25.590139859502756 30 32 24.494999885559082 32 16.364999771118164 C 32 14.639999806880951 31.75346749038268 13.65000057220459 31.75346749038268 13.65000057220459 Z"
                joinStyle: 0
                fillColor: "#1f1f2e"
                antialiasing: true
            }
        }

        Button {
            id: githubFast
            width: 61
            height: 58
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 75
            background: Rectangle {
                id: rectangle_13
                color: "#525252"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Rectangle {
                id: mdi_github
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.rightMargin: 7
                anchors.topMargin: 7
                anchors.bottomMargin: 7
                SvgPathItem {
                    id: element7
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 4
                    anchors.rightMargin: 4
                    anchors.topMargin: 4
                    anchors.bottomMargin: 5
                    strokeWidth: 1
                    strokeStyle: 1
                    strokeColor: "transparent"
                    path: "M 19.16666603088379 0 C 16.649663581496476 -1.2212452945353396e-15 14.157306837309443 0.474205759442041 11.831899806775073 1.3955419486314555 C 9.506492776240703 2.3168781378208703 7.3935759545553195 3.6673015669977396 5.6137865111712015 5.369708871762815 C 2.01933929579618 8.807875795829831 3.4046838292460872e-15 13.471030591475508 0 18.333332844657754 C 4.255854786557609e-15 26.43666610186871 5.500833388487489 33.311665700065014 13.109999857584626 35.749999047082625 C 14.068333159128816 35.896665706561635 14.374999523162842 35.32833241132503 14.374999523162842 34.833332404849735 L 14.374999523162842 31.734998174996967 C 9.065833069165546 32.8349981893865 7.934999480883289 29.27833129406837 7.934999480883289 29.27833129406837 C 7.053332827468722 27.15166474528217 5.8075002094904455 26.583332624753744 5.8075002094904455 26.583332624753744 C 4.0633335504134385 25.446665979642948 5.941666286786404 25.483331954713133 5.941666286786404 25.483331954713133 C 7.858332889874783 25.611665285172112 8.874166591644281 27.371666496562945 8.874166591644281 27.371666496562945 C 10.54166654547055 30.158333053982865 13.35916616412004 29.33333296123433 14.45166611417135 28.89333298279731 C 14.624166115303836 27.70166639160463 15.122499642312523 26.89499942298516 15.659166293462114 26.436666101868713 C 11.404166379769642 25.978332780752268 6.938332883834846 24.4016659113353 6.938332883834846 17.416666202424867 C 6.938332883834846 15.381666230441814 7.666666640837979 13.749999524218136 8.912499887148533 12.448332931586501 C 8.72083322398364 11.989999610470058 8.049999710122744 10.083333283112124 9.1041663646698 7.608333305373255 C 9.1041663646698 7.608333305373255 10.714166375239689 7.113333353535554 14.374999523162842 9.47833322056029 C 15.889166180729864 9.074999900163322 17.537499372561776 8.873333376558811 19.16666603088379 8.873333376558811 C 20.795832689205803 8.873333376558811 22.444165881037712 9.074999900163322 23.958332538604736 9.47833322056029 C 27.61916568652789 7.113333353535554 29.22916569709778 7.608333305373255 29.22916569709778 7.608333305373255 C 30.283332351644834 10.083333283112124 29.6124997517218 11.989999610470058 29.420833088556904 12.448332931586501 C 30.666666334867458 13.749999524218136 31.39499735005702 15.381666230441814 31.39499735005702 17.416666202424867 C 31.39499735005702 24.41999922669593 26.909999948183668 25.95999902829092 22.63583338673907 26.418332349407365 C 23.325833391269022 26.98666567196276 23.958332538604736 28.104999657364004 23.958332538604736 29.809999625030198 L 23.958332538604736 34.833332404849735 C 23.958332538604736 35.32833241132503 24.264999359607692 35.914999049241054 25.24249930890401 35.749999047082625 C 32.85166577800115 33.293332384704385 38.33333206176758 26.43666610186871 38.33333206176758 18.333332844657754 C 38.33333206176758 15.925765268685925 37.83757332618438 13.541771845667984 36.87435822558109 11.317469454141 C 35.9111431249778 9.093167062614015 34.4993349939805 7.07211617652789 32.71954555059638 5.369708871762815 C 30.93975610721226 3.6673015669977396 28.82683928552688 2.3168781378208703 26.50143225499251 1.3955419486314555 C 24.176025224458137 0.474205759442041 21.683668480271102 2.442490589070679e-15 19.16666603088379 0 Z"
                    joinStyle: 0
                    fillColor: "#1f1f2e"
                    antialiasing: true
                }
                clip: true
            }
        }

        Button {
            id: googleFast1
            width: 61
            height: 58
            anchors.left: parent.left
            anchors.top: parent.top
            background: Rectangle {
                id: rectangle_20
                color: "#525252"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            SvgPathItem {
                id: element8
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 15
                anchors.rightMargin: 14
                anchors.topMargin: 14
                anchors.bottomMargin: 14
                strokeWidth: 1
                strokeStyle: 1
                strokeColor: "transparent"
                path: "M 31.75346749038268 13.65000057220459 L 16.68207651593322 13.65000057220459 L 16.68207651593322 17.744999885559082 L 27.381613452421643 17.744999885559082 C 26.839240530385965 23.459999799728394 21.629173598806492 25.905000686645508 16.698510867136363 25.905000686645508 C 10.403698238430735 25.905000686645508 4.881356151375892 21.375 4.881356151375892 15 C 4.881356151375892 8.850000143051147 10.140729810194802 4.0950000286102295 16.714946785754975 4.0950000286102295 C 21.793529258307814 4.0950000286102295 24.768363521265467 7.049999713897705 24.768363521265467 7.049999713897705 L 27.89111439027489 4.079999685287476 C 27.89111439027489 4.079999685287476 23.880844292261465 0 16.550592301815254 0 C 7.215204478654593 0 0 7.200000286102295 0 15 C 0 22.575000286102295 6.7878792153557335 30 16.79712481143257 30 C 25.590139859502756 30 32 24.494999885559082 32 16.364999771118164 C 32 14.639999806880951 31.75346749038268 13.65000057220459 31.75346749038268 13.65000057220459 Z"
                joinStyle: 0
                fillColor: "#1f1f2e"
                antialiasing: true
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"f8299c15-d902-5e09-97c8-ee936156cb29"}D{i:1;uuid:"6beaa2a9-05d4-57fc-b2d8-22f80c7e1ac9"}
D{i:3;uuid:"3be51dd8-a92b-551e-903d-b6509ac2cb49"}D{i:4;uuid:"59385469-3355-5779-81b0-0eda245e565e"}
D{i:5;uuid:"65b8814c-2819-5b29-ac8a-5db6f2a34585"}D{i:6;uuid:"81d29443-91fe-5d81-9955-d23a5dc656cf"}
D{i:7;uuid:"8dc6efc3-c204-5327-8f34-fa80076c2623"}D{i:8;uuid:"5249ceec-9149-5e4a-882a-c187434c60dc"}
D{i:9;uuid:"bb12f4c8-0db6-52ad-bd0d-ba216a307a35"}D{i:10;uuid:"d8614735-c972-54a7-8dd0-e6dd989552e7"}
D{i:11;uuid:"aec0dce3-6fa1-548f-86a4-c643f9b43ed7"}D{i:12;uuid:"62112f15-2833-5d31-9a11-3c9d520d5731"}
D{i:13;uuid:"b825b575-52df-5d89-afbb-82ed181d559c"}D{i:14;uuid:"0984fc79-1e27-5a04-9ffb-6cb482e8dccb"}
D{i:15;uuid:"46c0799f-07c6-57ac-92d9-bdd3da27e2e2"}D{i:20;uuid:"8017c87c-1be5-5596-86cc-4f7320857b52"}
D{i:23;uuid:"6f2c96ba-2b65-544b-af6e-6c6c5b32c736"}
}
##^##*/

