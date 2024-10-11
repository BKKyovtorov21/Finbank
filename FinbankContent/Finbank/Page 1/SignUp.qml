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

        onStatusChanged: {
            if (loader.status === Loader.Ready && loader.item) {
                // Pass the variables to the loaded QML file
                loader.item.username = username;
                loader.item.email = email;
                loader.item.password = password;
            }
        }
    }

    // Variables to hold form data
    property string username: ""
    property string email: ""
    property string password: ""

    // The main component: IntroWindow
    SignUpWindow {
        id: signUpWindow
        anchors.fill: parent // Fill the parent window

        signUpButton.onClicked: {
            if(usernameTextField.text !== "" && emailTextField.text !== "" && passwordTextField.text !== "") {
                username = usernameTextField.text;
                email = emailTextField.text;
                password = passwordTextField.text;

                console.log(username + " " + email + " " + password);

                // Load the new QML file
                loader.source = "SignUp1.qml";
            }
        }
    }
}
