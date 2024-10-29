import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 1280
    height: 832
    color: "lightgrey"  // Background color for visibility

    property var foundUsers: []  // Holds created user instances

    SelectRecipentWindow {
        id: currenciesWindow
        x: 0
        y: 0
        visible: true

        function findUser() {
            if (currenciesWindow.searchbarUser.text === "") {
                // If input is empty, clear previous instances and skip the search
                clearFoundUsers();
                return;
            }
            clearFoundUsers();  // Clear previous instances before searching
            searchrecipent.SearchUser(currenciesWindow.searchbarUser.text);
        }

        // Function to clear all found user instances
        function clearFoundUsers() {
            for (var i = 0; i < foundUsers.length; i++) {
                foundUsers[i].destroy();  // Destroy each instance
            }
            foundUsers = [];  // Reset the array
        }

        Connections {
            target: searchrecipent
            onUserFound: function(firstname, lastname, email, username) {
                var userComponent = Qt.createComponent("FoundUser.qml");
                if (userComponent.status === Component.Ready) {
                    var userInstance = userComponent.createObject(userFlow, {
                        userFullname: firstname + " " + lastname,
                        userEmail: email
                    });
                    if (userInstance) {
                        foundUsers.push(userInstance);
                    } else {
                        console.error("Error: User instance creation failed.");
                    }
                } else {
                    console.error("Error creating FoundUser component:", userComponent.errorString());
                }
            }
        }

        // Trigger findUser when the text changes
        searchbarUser.onTextChanged: findUser()
    }

    Flow {
        id: userFlow
        y: 271
        anchors.top: currenciesWindow.bottom
        anchors.topMargin: -621
        anchors.horizontalCenterOffset: 80
        anchors.horizontalCenter: parent.horizontalCenter
        width: 1007
        height: 529
        spacing: 10  // Set spacing between each item in the Flow
        visible: true
        z: 10
        clip: true
    }
}
