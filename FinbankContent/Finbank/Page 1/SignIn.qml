import QtQuick
import QtQuick.Controls
import com.mycompany.login 1.0



Window {
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

    LogIn
    {
        id: login;
    }

    // The main component: IntroWindow
    LogInWindow {
        id: introwindow
        anchors.fill: parent // Fill the parent window

        logInButton.onClicked: {
            var username = usernameField.text;
            var password = passwordField.text;
            console.log("sds");
            login.logInUser(username, password);
        }
    }
}
