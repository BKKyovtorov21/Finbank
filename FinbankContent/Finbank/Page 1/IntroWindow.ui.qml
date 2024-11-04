import QtQuick
import QtQuick.Controls
import QtQuick.Studio.Components 1.0
import QtQuick.Shapes 1.0
import QtQuick.Timeline 1.0

Rectangle {
    id: introWindow
    width: 1280
    height: 832
    color: "transparent"
    property alias joinNow_PB: joinNow_PB
    property alias createAccount_PB: createAccount_PB
    property alias signUpButton: signUpButton
    property alias logInButton: logInButton

    Item {
        id: mainWindow_Inside
        x: 61
        y: 58
        width: 1152
        height: 713
        Image {
            id: rectangle_9
            anchors.left: parent.left
            anchors.top: parent.top
            source: "../assets/rectangle_9.png"
        }

        Rectangle {
            id: introGroup
            width: 595
            height: 143
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 335
            anchors.topMargin: 98
            Text {
                id: control_your_finances_anywhere
                color: "#ffffff"
                text: qsTr("Control your finances anywhere")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: -1
                anchors.bottomMargin: 73
                font.pixelSize: 40
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }

            Text {
                id: save_Manage_and_track_your_money_Open_a_full_bank_account_from_e
                color: "#ffffff"
                text: qsTr("Save, Manage and track your money. Open a full bank account from every platform")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 12
                anchors.rightMargin: 60
                anchors.topMargin: 70
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }
        }

        Button {
            id: joinNow_PB
            width: 131
            height: 53
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 398
            anchors.topMargin: 269
            background: Rectangle {
                id: rectangle_1
                color: "#ffffff"
                radius: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Text {
                id: join_now
                color: "#0c0909"
                text: qsTr("Join now")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 11
                anchors.rightMargin: 11
                anchors.topMargin: 14
                anchors.bottomMargin: 14
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }
        }

        Button {
            id: createAccount_PB
            width: 197
            height: 53
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 620
            anchors.topMargin: 269
            background: Rectangle {
                id: rectangle_2
                color: "#00d9d9d9"
                radius: 30
                border.color: "#ffffff"
                border.width: 1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }

            Text {
                id: create_account
                color: "#ffffff"
                text: qsTr("Create account")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 11
                anchors.rightMargin: 11
                anchors.topMargin: 14
                anchors.bottomMargin: 14
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }
        }

        Rectangle {
            id: investment_group
            width: 284
            height: 276
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 304
            anchors.topMargin: 373
            Rectangle {
                id: rectangle_4
                color: "#29293a"
                radius: 33
                border.color: "#000000"
                border.width: 1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 16
                anchors.rightMargin: 16
                anchors.topMargin: 18
                anchors.bottomMargin: 31
                rotation: 8.57
            }

            Image {
                id: stocks_market_graph_chart_on_laptop_screen_linear_icon_trading_p
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 17
                anchors.topMargin: 17
                source: "../assets/stocks_market_graph_chart_on_laptop_screen_linear_icon_trading_p.png"
            }

            Text {
                id: full_stock_trading_and_investment_utilities
                color: "#868ca7"
                text: qsTr("Full stock trading and\ninvestment utilities\n")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 12
                anchors.rightMargin: 31
                anchors.topMargin: 40
                anchors.bottomMargin: 198
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                rotation: 6.332
                font.weight: Font.Bold

            }
        }

        Rectangle {
            id: virtualCardGroup
            width: 274
            height: 244
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 511
            anchors.topMargin: 410
            Rectangle {
                id: rectangle_7
                color: "#29293a"
                radius: 33
                border.color: "#000000"
                border.width: 1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 10
                anchors.rightMargin: 4
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                rotation: -2
            }

            Image {
                id: credit_card_teller_card_debit_card_icon_vector_illustration_8583
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 18
                anchors.rightMargin: 42
                anchors.topMargin: 43
                anchors.bottomMargin: 7
                source: "../assets/credit_card_teller_card_debit_card_icon_vector_illustration_8583.png"
            }

            Text {
                id: virtual_cards
                color: "#868ca7"
                text: qsTr("Virtual cards")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 33
                anchors.topMargin: 29
                anchors.bottomMargin: 177
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                rotation: 0.406
                font.weight: Font.Bold

            }
        }

        Rectangle {
            id: transferGroup
            width: 292
            height: 271
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 687
            anchors.topMargin: 354
            Rectangle {
                id: rectangle_8
                color: "#29293a"
                radius: 33
                border.color: "#000000"
                border.width: 1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 16
                anchors.rightMargin: 16
                anchors.topMargin: 18
                anchors.bottomMargin: 18
                rotation: -8.572
            }

            SvgPathItem {
                id: arrow_1_Stroke_
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 101
                anchors.rightMargin: 69
                anchors.topMargin: 97
                anchors.bottomMargin: 37
                strokeWidth: 8
                strokeStyle: 1
                strokeColor: "transparent"
                rotation: 85.507
                path: "M 2.8148322105407715 31.39756202697754 C 1.301707148551941 29.7879821062088 1.3798996210098267 27.256529211997986 2.9894797801971436 25.743404388427734 L 29.21910285949707 1.0856101512908936 C 30.828683853149414 -0.42751622200012207 33.36013412475586 -0.3493225574493408 34.873260498046875 1.2602565288543701 C 36.38638687133789 2.869837522506714 36.30819320678711 5.401289463043213 34.698612213134766 6.914413928985596 L 15.504980087280273 24.957855224609375 L 122.31269836425781 28.256969451904297 L 122.06570434570312 36.25315475463867 L 15.257990837097168 32.95404052734375 L 33.30143356323242 52.147674560546875 C 34.81455612182617 53.75725555419922 34.736366271972656 56.28870964050293 33.12678527832031 57.80183410644531 C 31.51720428466797 59.314958572387695 28.98575210571289 59.23676681518555 27.472627639770508 57.6271858215332 L 2.8148322105407715 31.39756202697754 Z M 94.09305572509766 79.51277923583984 L 119.54890441894531 104.96862030029297 C 121.11100006103516 106.53072357177734 121.11100006103516 109.0633773803711 119.54890441894531 110.62548065185547 L 94.09305572509766 136.08132934570312 C 92.53096008300781 137.64342498779297 89.99829864501953 137.64342498779297 88.43620300292969 136.08132934570312 C 86.87410736083984 134.51923370361328 86.87410736083984 131.98656463623047 88.43620300292969 130.42446899414062 L 107.0636215209961 111.79705047607422 L 0 111.79705047607422 L 0 103.79705047607422 L 107.0636215209961 103.79705047607422 L 88.43620300292969 85.16963195800781 C 86.87410736083984 83.60753631591797 86.87410736083984 81.07487487792969 88.43620300292969 79.51277923583984 C 89.99829864501953 77.95068359375 92.53096008300781 77.95068359375 94.09305572509766 79.51277923583984 Z"
                joinStyle: 0
                fillColor: "#d61f1f2e"
                antialiasing: true
            }

            Text {
                id: easy_and_taxless_transfers
                color: "#868ca7"
                text: qsTr("Easy and taxless transfers")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 18
                anchors.rightMargin: 34
                anchors.topMargin: 37
                anchors.bottomMargin: 196
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                rotation: -5.721
                font.weight: Font.Bold

            }
        }
    }

    Item {
        id: mainWindow_Outside
        x: -77
        y: -60
        width: 1492
        height: 969
        Rectangle {
            id: rectangle_3
            width: 1280
            height: 832
            color: "#00d9d9d9"
            border.color: "#ffffff"
            border.width: 60
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 77
            anchors.topMargin: 60
        }

        Rectangle {
            id: helpButton
            width: 107
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 877
            anchors.topMargin: 76
            Text {
                id: help
                color: "#000000"
                text: qsTr("Help")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: -1
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }
        }

        Rectangle {
            id: personalButton
            width: 119
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 138
            anchors.topMargin: 76
            Text {
                id: personal
                color: "#000000"
                text: qsTr("Personal")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 11
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }

            Rectangle {
                id: mingcute_down_line
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 95
                Item {
                    id: group
                    x: 0
                    y: 0
                    width: 24
                    height: 24
                    SvgPathItem {
                        id: element
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 24 0 L 24 24 L 0 24 L 0 0 L 24 0 Z M 12.593000411987305 23.257999420166016 L 12.581999778747559 23.260000228881836 L 12.51099967956543 23.295000076293945 L 12.491000175476074 23.298999786376953 L 12.47700023651123 23.295000076293945 L 12.406000137329102 23.260000228881836 C 12.395333470776677 23.256666895467788 12.387333302758634 23.25833272282034 12.381999969482422 23.264999389648438 L 12.378000259399414 23.274999618530273 L 12.361000061035156 23.702999114990234 L 12.366000175476074 23.722999572753906 L 12.37600040435791 23.736000061035156 L 12.479999542236328 23.809999465942383 L 12.494999885559082 23.81399917602539 L 12.506999969482422 23.809999465942383 L 12.611000061035156 23.736000061035156 L 12.623000144958496 23.719999313354492 L 12.626999855041504 23.702999114990234 L 12.609999656677246 23.275999069213867 C 12.60733299003914 23.265332402661443 12.601667078211904 23.25933275348507 12.593000411987305 23.257999420166016 Z M 12.857999801635742 23.145000457763672 L 12.845000267028809 23.14699935913086 L 12.65999984741211 23.239999771118164 L 12.649999618530273 23.25 L 12.647000312805176 23.26099967956543 L 12.664999961853027 23.69099998474121 L 12.670000076293945 23.702999114990234 L 12.678000450134277 23.709999084472656 L 12.878999710083008 23.80299949645996 C 12.891666376963258 23.80633282987401 12.90133332554251 23.803666742518544 12.907999992370605 23.795000076293945 L 12.911999702453613 23.7810001373291 L 12.878000259399414 23.16699981689453 C 12.874666925985366 23.15433315001428 12.867999801412225 23.147000457858667 12.857999801635742 23.145000457763672 Z M 12.142999649047852 23.14699935913086 C 12.138592905830592 23.144328706199303 12.133326035458595 23.143463032785803 12.1282958984375 23.144580841064453 C 12.123265761416405 23.145698649343103 12.118861066410318 23.148714195005596 12.116000175476074 23.152999877929688 L 12.109999656677246 23.16699981689453 L 12.076000213623047 23.7810001373291 C 12.076666880282573 23.79300013743341 12.08233374543488 23.80100030498579 12.093000411987305 23.80500030517578 L 12.107999801635742 23.80299949645996 L 12.309000015258789 23.709999084472656 L 12.319000244140625 23.70199966430664 L 12.322999954223633 23.69099998474121 L 12.34000015258789 23.26099967956543 L 12.336999893188477 23.249000549316406 L 12.32699966430664 23.23900032043457 L 12.142999649047852 23.14699935913086 Z"
                        joinStyle: 0
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 5
                        anchors.rightMargin: 5
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 7.376287937164307 7.376287937164307 C 7.1887602508068085 7.563758999109268 6.934452325105667 7.669074535369873 6.669288158416748 7.669074535369873 C 6.404123991727829 7.669074535369873 6.149816066026688 7.563758999109268 5.9622883796691895 7.376287937164307 L 0.3052884042263031 1.7192884683609009 C 0.20977820456027985 1.6270416304469109 0.13359586149454117 1.5166970118880272 0.08118686079978943 1.3946930170059204 C 0.02877786010503769 1.2726890221238136 0.0011915727336599957 1.1414688378572464 0.0000377563810616266 1.008689522743225 C -0.0011160599715367425 0.8759102076292038 0.024185910820961 0.7442309558391571 0.07446679472923279 0.6213346123695374 C 0.12474767863750458 0.4984382688999176 0.1990007981657982 0.38678572326898575 0.29289349913597107 0.29289302229881287 C 0.38678620010614395 0.19900032132863998 0.4984377920627594 0.12474720180034637 0.6213341355323792 0.07446631789207458 C 0.7442304790019989 0.024185433983802795 0.8759102076292038 -0.001116059302148642 1.008689522743225 0.0000377570504497271 C 1.1414688378572464 0.0011915734030480962 1.2726885452866554 0.02877786010503769 1.3946925401687622 0.08118686079978943 C 1.516696535050869 0.13359586149454117 1.6270416304469109 0.20977772772312164 1.7192884683609009 0.3052879273891449 L 6.669288158416748 5.255288600921631 L 11.61928939819336 0.3052879273891449 C 11.807891562581062 0.12312985956668854 12.060492277145386 0.02233552560210228 12.322689056396484 0.024613944813609123 C 12.584885835647583 0.026892364025115967 12.83569860458374 0.13206109404563904 13.021106719970703 0.31746920943260193 C 13.206514835357666 0.5028773248195648 13.31168451718986 0.7536901235580444 13.313962936401367 1.015886902809143 C 13.316241355612874 1.2780836820602417 13.215447023510933 1.530686303973198 13.033288955688477 1.7192884683609009 L 7.376287937164307 7.376287937164307 Z"
                        joinStyle: 0
                        fillColor: "#000000"
                        antialiasing: true
                    }
                }
                clip: true
            }
        }

        Rectangle {
            id: businessButton
            width: 119
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 294
            anchors.topMargin: 76
            Text {
                id: business
                color: "#000000"
                text: qsTr("Business")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 11
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }

            Rectangle {
                id: mingcute_down_line1
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 95
                Item {
                    id: group1
                    x: 0
                    y: 0
                    width: 24
                    height: 24
                    SvgPathItem {
                        id: element2
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 24 0 L 24 24 L 0 24 L 0 0 L 24 0 Z M 12.593000411987305 23.257999420166016 L 12.581999778747559 23.260000228881836 L 12.51099967956543 23.295000076293945 L 12.491000175476074 23.298999786376953 L 12.47700023651123 23.295000076293945 L 12.406000137329102 23.260000228881836 C 12.395333470776677 23.256666895467788 12.387333302758634 23.25833272282034 12.381999969482422 23.264999389648438 L 12.378000259399414 23.274999618530273 L 12.361000061035156 23.702999114990234 L 12.366000175476074 23.722999572753906 L 12.37600040435791 23.736000061035156 L 12.479999542236328 23.809999465942383 L 12.494999885559082 23.81399917602539 L 12.506999969482422 23.809999465942383 L 12.611000061035156 23.736000061035156 L 12.623000144958496 23.719999313354492 L 12.626999855041504 23.702999114990234 L 12.609999656677246 23.275999069213867 C 12.60733299003914 23.265332402661443 12.601667078211904 23.25933275348507 12.593000411987305 23.257999420166016 Z M 12.857999801635742 23.145000457763672 L 12.845000267028809 23.14699935913086 L 12.65999984741211 23.239999771118164 L 12.649999618530273 23.25 L 12.647000312805176 23.26099967956543 L 12.664999961853027 23.69099998474121 L 12.670000076293945 23.702999114990234 L 12.678000450134277 23.709999084472656 L 12.878999710083008 23.80299949645996 C 12.891666376963258 23.80633282987401 12.90133332554251 23.803666742518544 12.907999992370605 23.795000076293945 L 12.911999702453613 23.7810001373291 L 12.878000259399414 23.16699981689453 C 12.874666925985366 23.15433315001428 12.867999801412225 23.147000457858667 12.857999801635742 23.145000457763672 Z M 12.142999649047852 23.14699935913086 C 12.138592905830592 23.144328706199303 12.133326035458595 23.143463032785803 12.1282958984375 23.144580841064453 C 12.123265761416405 23.145698649343103 12.118861066410318 23.148714195005596 12.116000175476074 23.152999877929688 L 12.109999656677246 23.16699981689453 L 12.076000213623047 23.7810001373291 C 12.076666880282573 23.79300013743341 12.08233374543488 23.80100030498579 12.093000411987305 23.80500030517578 L 12.107999801635742 23.80299949645996 L 12.309000015258789 23.709999084472656 L 12.319000244140625 23.70199966430664 L 12.322999954223633 23.69099998474121 L 12.34000015258789 23.26099967956543 L 12.336999893188477 23.249000549316406 L 12.32699966430664 23.23900032043457 L 12.142999649047852 23.14699935913086 Z"
                        joinStyle: 0
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element3
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 5
                        anchors.rightMargin: 5
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 7.376287937164307 7.376287937164307 C 7.1887602508068085 7.563758999109268 6.934452325105667 7.669074535369873 6.669288158416748 7.669074535369873 C 6.404123991727829 7.669074535369873 6.149816066026688 7.563758999109268 5.9622883796691895 7.376287937164307 L 0.3052884042263031 1.7192884683609009 C 0.20977820456027985 1.6270416304469109 0.13359586149454117 1.5166970118880272 0.08118686079978943 1.3946930170059204 C 0.02877786010503769 1.2726890221238136 0.0011915727336599957 1.1414688378572464 0.0000377563810616266 1.008689522743225 C -0.0011160599715367425 0.8759102076292038 0.024185910820961 0.7442309558391571 0.07446679472923279 0.6213346123695374 C 0.12474767863750458 0.4984382688999176 0.1990007981657982 0.38678572326898575 0.29289349913597107 0.29289302229881287 C 0.38678620010614395 0.19900032132863998 0.4984377920627594 0.12474720180034637 0.6213341355323792 0.07446631789207458 C 0.7442304790019989 0.024185433983802795 0.8759102076292038 -0.001116059302148642 1.008689522743225 0.0000377570504497271 C 1.1414688378572464 0.0011915734030480962 1.2726885452866554 0.02877786010503769 1.3946925401687622 0.08118686079978943 C 1.516696535050869 0.13359586149454117 1.6270416304469109 0.20977772772312164 1.7192884683609009 0.3052879273891449 L 6.669288158416748 5.255288600921631 L 11.61928939819336 0.3052879273891449 C 11.807891562581062 0.12312985956668854 12.060492277145386 0.02233552560210228 12.322689056396484 0.024613944813609123 C 12.584885835647583 0.026892364025115967 12.83569860458374 0.13206109404563904 13.021106719970703 0.31746920943260193 C 13.206514835357666 0.5028773248195648 13.31168451718986 0.7536901235580444 13.313962936401367 1.015886902809143 C 13.316241355612874 1.2780836820602417 13.215447023510933 1.530686303973198 13.033288955688477 1.7192884683609009 L 7.376287937164307 7.376287937164307 Z"
                        joinStyle: 0
                        fillColor: "#000000"
                        antialiasing: true
                    }
                }
                clip: true
            }
        }

        Rectangle {
            id: companyButton
            width: 119
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 462
            anchors.topMargin: 76
            Text {
                id: company
                color: "#000000"
                text: qsTr("Company")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 11
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }

            Rectangle {
                id: mingcute_down_line2
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 95
                Item {
                    id: group2
                    x: 0
                    y: 0
                    width: 24
                    height: 24
                    SvgPathItem {
                        id: element4
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 24 0 L 24 24 L 0 24 L 0 0 L 24 0 Z M 12.593000411987305 23.257999420166016 L 12.581999778747559 23.260000228881836 L 12.51099967956543 23.295000076293945 L 12.491000175476074 23.298999786376953 L 12.47700023651123 23.295000076293945 L 12.406000137329102 23.260000228881836 C 12.395333470776677 23.256666895467788 12.387333302758634 23.25833272282034 12.381999969482422 23.264999389648438 L 12.378000259399414 23.274999618530273 L 12.361000061035156 23.702999114990234 L 12.366000175476074 23.722999572753906 L 12.37600040435791 23.736000061035156 L 12.479999542236328 23.809999465942383 L 12.494999885559082 23.81399917602539 L 12.506999969482422 23.809999465942383 L 12.611000061035156 23.736000061035156 L 12.623000144958496 23.719999313354492 L 12.626999855041504 23.702999114990234 L 12.609999656677246 23.275999069213867 C 12.60733299003914 23.265332402661443 12.601667078211904 23.25933275348507 12.593000411987305 23.257999420166016 Z M 12.857999801635742 23.145000457763672 L 12.845000267028809 23.14699935913086 L 12.65999984741211 23.239999771118164 L 12.649999618530273 23.25 L 12.647000312805176 23.26099967956543 L 12.664999961853027 23.69099998474121 L 12.670000076293945 23.702999114990234 L 12.678000450134277 23.709999084472656 L 12.878999710083008 23.80299949645996 C 12.891666376963258 23.80633282987401 12.90133332554251 23.803666742518544 12.907999992370605 23.795000076293945 L 12.911999702453613 23.7810001373291 L 12.878000259399414 23.16699981689453 C 12.874666925985366 23.15433315001428 12.867999801412225 23.147000457858667 12.857999801635742 23.145000457763672 Z M 12.142999649047852 23.14699935913086 C 12.138592905830592 23.144328706199303 12.133326035458595 23.143463032785803 12.1282958984375 23.144580841064453 C 12.123265761416405 23.145698649343103 12.118861066410318 23.148714195005596 12.116000175476074 23.152999877929688 L 12.109999656677246 23.16699981689453 L 12.076000213623047 23.7810001373291 C 12.076666880282573 23.79300013743341 12.08233374543488 23.80100030498579 12.093000411987305 23.80500030517578 L 12.107999801635742 23.80299949645996 L 12.309000015258789 23.709999084472656 L 12.319000244140625 23.70199966430664 L 12.322999954223633 23.69099998474121 L 12.34000015258789 23.26099967956543 L 12.336999893188477 23.249000549316406 L 12.32699966430664 23.23900032043457 L 12.142999649047852 23.14699935913086 Z"
                        joinStyle: 0
                        antialiasing: true
                    }

                    SvgPathItem {
                        id: element5
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 5
                        anchors.rightMargin: 5
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                        strokeWidth: 1
                        strokeStyle: 1
                        strokeColor: "transparent"
                        path: "M 7.376287937164307 7.376287937164307 C 7.1887602508068085 7.563758999109268 6.934452325105667 7.669074535369873 6.669288158416748 7.669074535369873 C 6.404123991727829 7.669074535369873 6.149816066026688 7.563758999109268 5.9622883796691895 7.376287937164307 L 0.3052884042263031 1.7192884683609009 C 0.20977820456027985 1.6270416304469109 0.13359586149454117 1.5166970118880272 0.08118686079978943 1.3946930170059204 C 0.02877786010503769 1.2726890221238136 0.0011915727336599957 1.1414688378572464 0.0000377563810616266 1.008689522743225 C -0.0011160599715367425 0.8759102076292038 0.024185910820961 0.7442309558391571 0.07446679472923279 0.6213346123695374 C 0.12474767863750458 0.4984382688999176 0.1990007981657982 0.38678572326898575 0.29289349913597107 0.29289302229881287 C 0.38678620010614395 0.19900032132863998 0.4984377920627594 0.12474720180034637 0.6213341355323792 0.07446631789207458 C 0.7442304790019989 0.024185433983802795 0.8759102076292038 -0.001116059302148642 1.008689522743225 0.0000377570504497271 C 1.1414688378572464 0.0011915734030480962 1.2726885452866554 0.02877786010503769 1.3946925401687622 0.08118686079978943 C 1.516696535050869 0.13359586149454117 1.6270416304469109 0.20977772772312164 1.7192884683609009 0.3052879273891449 L 6.669288158416748 5.255288600921631 L 11.61928939819336 0.3052879273891449 C 11.807891562581062 0.12312985956668854 12.060492277145386 0.02233552560210228 12.322689056396484 0.024613944813609123 C 12.584885835647583 0.026892364025115967 12.83569860458374 0.13206109404563904 13.021106719970703 0.31746920943260193 C 13.206514835357666 0.5028773248195648 13.31168451718986 0.7536901235580444 13.313962936401367 1.015886902809143 C 13.316241355612874 1.2780836820602417 13.215447023510933 1.530686303973198 13.033288955688477 1.7192884683609009 L 7.376287937164307 7.376287937164307 Z"
                        joinStyle: 0
                        fillColor: "#000000"
                        antialiasing: true
                    }
                }
                clip: true
            }
        }

        Rectangle {
            id: languageButton
            width: 61
            height: 24
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1021
            anchors.topMargin: 76
            Rectangle {
                id: material_symbols_language
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 37
                SvgPathItem {
                    id: element6
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
                    path: "M 10 20 C 8.633333325386047 20 7.3416666984558105 19.737333238124847 6.125 19.211999893188477 C 4.9083333015441895 18.686666548252106 3.8460001945495605 17.97000026702881 2.938000202178955 17.062000274658203 C 2.0300002098083496 16.154000282287598 1.3133334517478943 15.09166669845581 0.7880001068115234 13.875 C 0.2626667618751526 12.65833330154419 4.440892098500626e-16 11.366666674613953 0 10 C 0 8.616666674613953 0.2626667618751526 7.32099986076355 0.7880001068115234 6.11299991607666 C 1.3133334517478943 4.9049999713897705 2.0300002098083496 3.8466668725013733 2.938000202178955 2.938000202178955 C 3.8460001945495605 2.029333531856537 4.9083333015441895 1.3126667737960815 6.125 0.7880001068115234 C 7.3416666984558105 0.26333343982696533 8.633333325386047 0.0006666666595265269 10 0 C 11.383333325386047 0 12.679332852363586 0.2626667618751526 13.887999534606934 0.7880001068115234 C 15.09666621685028 1.3133334517478943 16.15466696023941 2.0300002098083496 17.062000274658203 2.938000202178955 C 17.969333589076996 3.8460001945495605 18.685999870300293 4.904333233833313 19.211999893188477 6.11299991607666 C 19.73799991607666 7.321666598320007 20.000666666659527 8.61733329296112 20 10 C 20 11.366666674613953 19.737333238124847 12.65833330154419 19.211999893188477 13.875 C 18.686666548252106 15.09166669845581 17.97000026702881 16.15433305501938 17.062000274658203 17.062999725341797 C 16.154000282287598 17.971666395664215 15.095666766166687 18.688332676887512 13.88700008392334 19.21299934387207 C 12.678333401679993 19.73766601085663 11.38266670703888 19.999999999999996 10 20 Z M 10 17.950000762939453 C 10.433333337306976 17.350000739097595 10.808333337306976 16.725000739097595 11.125 16.075000762939453 C 11.441666662693024 15.425000786781311 11.699999615550041 14.733333349227905 11.899999618530273 14 L 8.100000381469727 14 C 8.300000384449959 14.733333349227905 8.558333337306976 15.425000786781311 8.875 16.075000762939453 C 9.191666662693024 16.725000739097595 9.566666662693024 17.350000739097595 10 17.950000762939453 Z M 7.399999618530273 17.549999237060547 C 7.0999996066093445 16.999999225139618 6.8376665860414505 16.42899990081787 6.61299991607666 15.836999893188477 C 6.38833324611187 15.244999885559082 6.200666859745979 14.632666647434235 6.050000190734863 14 L 3.0999999046325684 14 C 3.5833332240581512 14.833333313465118 4.1876667737960815 15.558332562446594 4.913000106811523 16.174999237060547 C 5.638333439826965 16.7916659116745 6.46733295917511 17.249999225139618 7.399999618530273 17.549999237060547 Z M 12.600000381469727 17.549999237060547 C 13.533333718776703 17.249999225139618 14.362666010856628 16.7916659116745 15.08799934387207 16.174999237060547 C 15.813332676887512 15.558332562446594 16.41733294725418 14.833333313465118 16.899999618530273 14 L 13.949999809265137 14 C 13.799999803304672 14.633333325386047 13.612666204571724 15.245999336242676 13.387999534606934 15.83799934387207 C 13.163332864642143 16.429999351501465 12.900667041540146 17.00066590309143 12.600000381469727 17.549999237060547 Z M 2.25 12 L 5.650000095367432 12 C 5.600000094622374 11.66666665673256 5.5626667737960815 11.33766621351242 5.538000106811523 11.012999534606934 C 5.513333439826965 10.688332855701447 5.5006666666595265 10.350666671991348 5.5 10 C 5.4993333333404735 9.649333328008652 5.512000106275082 9.311999917030334 5.538000106811523 8.98799991607666 C 5.564000107347965 8.663999915122986 5.601333428174257 8.334666669368744 5.650000095367432 8 L 2.25 8 C 2.16666666418314 8.33333334326744 2.104333534836769 8.662666589021683 2.063000202178955 8.98799991607666 C 2.021666869521141 9.313333243131638 2.0006666666595265 9.650666654109955 2 10 C 1.9993333333404735 10.349333345890045 2.0203335359692574 10.686999529600143 2.063000202178955 11.012999534606934 C 2.105666868388653 11.338999539613724 2.1679999977350235 11.668000012636185 2.25 12 Z M 7.649999618530273 12 L 12.350000381469727 12 C 12.400000382214785 11.66666665673256 12.437666963785887 11.33766621351242 12.463000297546387 11.012999534606934 C 12.488333631306887 10.688332855701447 12.500666666659527 10.350666671991348 12.5 10 C 12.499333333340473 9.649333328008652 12.486666560173035 9.311999917030334 12.461999893188477 8.98799991607666 C 12.437333226203918 8.663999915122986 12.400000382214785 8.334666669368744 12.350000381469727 8 L 7.649999618530273 8 C 7.599999617785215 8.33333334326744 7.5626667737960815 8.662666589021683 7.538000106811523 8.98799991607666 C 7.513333439826965 9.313333243131638 7.5006666666595265 9.650666654109955 7.5 10 C 7.4993333333404735 10.349333345890045 7.512000106275082 10.686999529600143 7.538000106811523 11.012999534606934 C 7.564000107347965 11.338999539613724 7.601332951337099 11.668000012636185 7.649999618530273 12 Z M 14.350000381469727 12 L 17.75 12 C 17.83333333581686 11.66666665673256 17.89599972590804 11.33766621351242 17.937999725341797 11.012999534606934 C 17.979999724775553 10.688332855701447 18.000666666659527 10.350666671991348 18 10 C 17.999333333340473 9.649333328008652 17.97866639122367 9.311999917030334 17.937999725341797 8.98799991607666 C 17.897333059459925 8.663999915122986 17.834666669368744 8.334666669368744 17.75 8 L 14.350000381469727 8 C 14.400000382214785 8.33333334326744 14.43766601011157 8.662666589021683 14.46299934387207 8.98799991607666 C 14.48833267763257 9.313333243131638 14.500666666659527 9.650666654109955 14.5 10 C 14.499333333340473 10.349333345890045 14.486666560173035 10.686999529600143 14.461999893188477 11.012999534606934 C 14.437333226203918 11.338999539613724 14.400000382214785 11.668000012636185 14.350000381469727 12 Z M 13.949999809265137 6 L 16.899999618530273 6 C 16.41666629910469 5.166666686534882 15.8126659989357 4.441666483879089 15.08799934387207 3.8249998092651367 C 14.363332688808441 3.208333134651184 13.534000396728516 2.7499998211860657 12.600000381469727 2.4499998092651367 C 12.900000393390656 2.9999998211860657 13.162666201591492 3.571000099182129 13.387999534606934 4.163000106811523 C 13.613332867622375 4.755000114440918 13.800666481256485 5.367333352565765 13.949999809265137 6 Z M 8.100000381469727 6 L 11.899999618530273 6 C 11.699999615550041 5.266666650772095 11.441666662693024 4.575000166893005 11.125 3.9250001907348633 C 10.808333337306976 3.275000214576721 10.433333337306976 2.650000214576721 10 2.0500001907348633 C 9.566666662693024 2.650000214576721 9.191666662693024 3.275000214576721 8.875 3.9250001907348633 C 8.558333337306976 4.575000166893005 8.300000384449959 5.266666650772095 8.100000381469727 6 Z M 3.0999999046325684 6 L 6.050000190734863 6 C 6.200000196695328 5.366666674613953 6.387666583061218 4.754000186920166 6.61299991607666 4.1620001792907715 C 6.838333249092102 3.570000171661377 7.100666284561157 2.999333143234253 7.399999618530273 2.4499998092651367 C 6.466666281223297 2.7499998211860657 5.637333512306213 3.208333134651184 4.9120001792907715 3.8249998092651367 C 4.18666684627533 4.441666483879089 3.582666575908661 5.166666686534882 3.0999999046325684 6 Z"
                    joinStyle: 0
                    fillColor: "#000000"
                    antialiasing: true
                }
                clip: true
            }

            Text {
                id: en
                color: "#000000"
                text: qsTr("En")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 30
                anchors.rightMargin: -1
                anchors.topMargin: 2
                anchors.bottomMargin: 5
                font.pixelSize: 20
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }
        }

        Button {
            id: signUpButton
            width: 108
            height: 40
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1127
            anchors.topMargin: 68
            background: Rectangle {
                id: rectangle_5
                color: "#000000"
                radius: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 10
                anchors.rightMargin: 10
            }

            Text {
                id: sign_up
                color: "#ffffff"
                text: qsTr("Sign up")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: -1
                anchors.topMargin: 9
                anchors.bottomMargin: 6
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }
        }

        Button {
            id: logInButton
            width: 108
            height: 40
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1249
            anchors.topMargin: 68
            background: Rectangle {
                id: rectangle_6
                color: "#ffffff"
                radius: 30
                border.color: "#000000"
                border.width: 1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 6
                anchors.rightMargin: 14
            }

            Text {
                id: log_in
                color: "#000000"
                text: qsTr("Log in")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: -1
                anchors.topMargin: 9
                anchors.bottomMargin: 6
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.weight: Font.Normal

            }
        }

        Rectangle {
            id: ellipse_1
            width: 367
            height: 301
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            ArcItem {
                id: ellipse_2
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#1ae1d3d3"
                end: 450.00001
                begin: 90
                arcWidth: 183.5
                antialiasing: true
            }
        }

        Rectangle {
            id: ellipse_3
            width: 367
            height: 301
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 1125
            anchors.topMargin: 668
            ArcItem {
                id: ellipse_4
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                strokeWidth: 0
                strokeStyle: 0
                strokeColor: "transparent"
                outlineArc: true
                fillColor: "#1ae1d3d3"
                end: 450.00001
                begin: 90
                arcWidth: 183.5
                antialiasing: true
            }
        }

        Rectangle {
            id: logo
            width: 69
            height: 65
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 680
            anchors.topMargin: 60
            Image {
                id: logo1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../assets/logo1.png"
            }
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

/*##^##
Designer {
    D{i:0;uuid:"bc7b0c70-7356-5722-bcbc-a9e32975173d"}D{i:1;uuid:"88512bcb-1bf2-5f47-a6f4-e0f7d20b6c14"}
D{i:2;uuid:"b446ccfb-4e17-55e7-8b08-5d12e89c708f"}D{i:3;uuid:"b9786a24-4268-5314-b0cc-703d0470347a"}
D{i:4;uuid:"9f81aadd-8770-5574-ba80-d0e456e19847"}D{i:5;uuid:"2171e32b-c469-5a5c-baa6-58a23d323a00"}
D{i:12;uuid:"3c02b048-713a-5541-a66c-0938ceb3984a"}D{i:13;uuid:"21f9f607-6ca1-5553-9017-1ab2e4274c48"}
D{i:14;uuid:"d001998b-34cb-53c0-af55-7faa3e173be1"}D{i:15;uuid:"19914d00-f68b-5ae0-b1fb-bd517744c155"}
D{i:16;uuid:"2f00917a-d998-53e7-a51a-66d5579a44c7"}D{i:17;uuid:"4901dec7-257c-5f5d-8c77-ca07cbfbdfd3"}
D{i:18;uuid:"35abf427-4b91-5ada-83be-468d2f8ceb38"}D{i:19;uuid:"b6006385-d298-550e-97ce-aff403d90a5b"}
D{i:20;uuid:"1bae0bb9-1731-5c54-ba4d-f9548f9d8422"}D{i:21;uuid:"f6b14625-ae57-536a-818d-f3959d9820d2"}
D{i:22;uuid:"fe2c0af1-9178-5cc8-a476-a25cc122e136"}D{i:23;uuid:"17822324-05c2-5b36-b21d-58daafb69f54"}
D{i:24;uuid:"9df62eb1-5901-5081-ac8a-6687762b3bf4"}D{i:25;uuid:"11d207b4-a5b8-5ef4-a682-8800f4cb8d0c"}
D{i:26;uuid:"8ac3a751-afcd-5f26-97c1-3efc9e748f4e"}D{i:27;uuid:"560650e9-8864-52c1-9829-8af52c03b89f"}
D{i:28;uuid:"17264298-20ff-53a3-81e2-f625b683b400"}D{i:29;uuid:"74f90d14-4a3e-57ee-8cd2-0ee16707e194"}
D{i:30;uuid:"93ca8014-df15-5d6c-b93e-0fbca969c6c2"}D{i:31;uuid:"4e1604fd-8616-5f30-8624-142c57e3caf3"}
D{i:32;uuid:"9a369972-79ce-5e21-b82a-7da9989ede41"}D{i:33;uuid:"98ad48f0-f91a-5d92-a18a-d86d69ffeea8"}
D{i:34;uuid:"bd635ee2-3e30-5bee-90b5-c88c23be8ec6"}D{i:35;uuid:"77f27ba9-ed00-55f8-af19-0404776df739"}
D{i:36;uuid:"7d97628f-a26d-5a07-bc29-05d78b6ae3ed"}D{i:37;uuid:"8cf1b3bf-843a-585d-9aa4-fa4269d6670f"}
D{i:38;uuid:"a5cf84b6-b178-54ee-9221-f6b7a118bbeb"}D{i:39;uuid:"b770c612-3fe0-532f-a931-ab6612f0e294"}
D{i:40;uuid:"2ec37727-291c-5b77-aea0-42a473db25d9"}D{i:56;uuid:"acecd595-6cbc-5ee4-833b-50cf37a63f9b"}
D{i:57;uuid:"1ccfa2ff-ebd6-5791-8d70-2a47fb6a3bc8"}D{i:58;uuid:"f92bfd1f-0ef0-5e7c-83c9-84cf2643b33d"}
}
##^##*/

