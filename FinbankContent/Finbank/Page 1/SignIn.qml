import QtQuick
import QtQuick.Controls
Rectangle {
    visible: true
    id: root
    width: 1280
    height: 832

    // This Loader will load the external QML file when the button is clicked
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }


    // The main component: IntroWindow
    SignInWindow {
        id: signInWindow
        anchors.fill: parent // Fill the parent window

        logInButton.onClicked: {
            var username = usernameField.text;
            var password = passwordField.text;
             login.logInUser(username, password, 0);
            login.logInSuccessful()
            {
                loader.setSource("Dashboard.qml", { "username": username });
                signInWindow.visible = false;
            }
        }
        googleFast.onClicked:
        {
            googlegateway.click();
        }

        Connections {
            target: googlegateway
            onGoogleLoginSuccessful: {
                var username = "";
                var password = "";
                if (googlegateway.userName !== undefined) {
                    username = googlegateway.userName;
                }
                login.logInUser(username, password, 1);
                login.logInSuccessful()
                {
                    loader.setSource("Dashboard.qml", { "username": username });
                    signInWindow.visible = false;
                }
            }
        }
    }
}
