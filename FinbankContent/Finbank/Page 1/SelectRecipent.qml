import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 1280
    height: 832

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
        property string fullNameRef: ""
        property string pfpRef: ""
        property string emailRef: ""
        property string usernameRef: ""
        imageSource: rootdashboard.pfp

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

        Connections {
            target: searchrecipent
            onUserFound: function(firstname, lastname, email, username, pfp) {
                var userComponent = Qt.createComponent("FoundUser.qml");
                if (userComponent.status === Component.Ready) {
                    var userInstance = userComponent.createObject(userFlow, {
                        userFullname: firstname + " " + lastname,
                        userEmail: email,
                        userPfp: pfp,
                    });
                    if (userInstance) {
                        // Add to foundUsers array without updating recipentsWindow properties
                        foundUsers.push(userInstance);

                        // Connect the button's onClicked to handleUserClick, passing user data
                        userInstance.onClicked.connect(function() {
                            recipentsWindow.handleUserClick({
                                fullName: firstname + " " + lastname,
                                email: email,
                                username: username,  // Include username in the user data
                                pfp: pfp
                            });
                        });
                    } else {
                        console.error("Error: User instance creation failed.");
                    }
                } else {
                    console.error("Error creating FoundUser component:", userComponent.errorString());
                }
            }
        }

        // Update handleUserClick to receive the specific user's data
        function handleUserClick(userData) {
            recipentsWindow.visible = false;
            recipentsWindow.clearFoundUsers();
            loader.source = "SendMoney.qml";

            // Now set the references based on the clicked user's data
            recipentsWindow.fullNameRef = userData.fullName;
            recipentsWindow.emailRef = userData.email;
            recipentsWindow.usernameRef = userData.username;  // Set username reference
            recipentsWindow.pfpRef = userData.pfp;
            console.log("User clicked:", userData);
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
