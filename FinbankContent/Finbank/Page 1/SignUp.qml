import QtQuick
import QtQuick.Controls

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

    // The main component: IntroWindow
    SignUpWindow {
        id: signUpWindow
        anchors.fill: parent // Fill the parent window

        signUpButton.onClicked:
        {
            if(usernameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "")
            {
                var username = usernameTextField.text;
                var email = emailTextField.text;
                var password = passwordTextField.text
                console.log(username + " " + email + " " + password);
                loader.source = "SignUp1.qml"
            }
        }
    }
}
