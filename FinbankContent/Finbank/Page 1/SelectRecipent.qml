import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 1280
    height: 832
    color: "lightgrey"  // Background color for visibility

    property var foundUsers: []  // Holds created user instances
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }


    SelectRecipentWindow {
        id: recipentsWindow
        x: 0
        y: 0
        visible: true

        function findUser() {
            if (recipentsWindow.searchbarUser.text === "") {
                clearFoundUsers();
                return;
            }
            clearFoundUsers();
            searchrecipent.SearchUser(recipentsWindow.searchbarUser.text);
        }

        function clearFoundUsers() {
            for (var i = 0; i < foundUsers.length; i++) {
                foundUsers[i].destroy();
            }
            foundUsers = [];
        }

        function handleUserClick(userInstance) {
            recipentsWindow.visible = false;
            recipentsWindow.clearFoundUsers();
            loader.source = "SendMoney.qml";
        }

        Connections {
            target: searchrecipent
            onUserFound: function(firstname, lastname, email, username, pfp) {
                var userComponent = Qt.createComponent("FoundUser.qml");
                if (userComponent.status === Component.Ready) {
                    var userInstance = userComponent.createObject(userFlow, {
                        userFullname: firstname + " " + lastname,
                        userEmail: email,
                        userPfp: pfp
                    });
                    if (userInstance) {
                        foundUsers.push(userInstance);

                        // Connect the button's onClicked to handleUserClick
                        userInstance.onClicked.connect(function() {
                            recipentsWindow.handleUserClick(userInstance);
                        });
                    } else {
                        console.error("Error: User instance creation failed.");
                    }
                } else {
                    console.error("Error creating FoundUser component:", userComponent.errorString());
                }
            }
        }

        searchbarUser.onTextChanged: findUser()
    }

    Flow {
        id: userFlow
        y: 271
        anchors.top: recipentsWindow.bottom
        anchors.topMargin: -621
        anchors.horizontalCenterOffset: 80
        anchors.horizontalCenter: parent.horizontalCenter
        width: 1007
        height: 529
        spacing: 10
        visible: true
        z: 10
        clip: true
    }
}
