import QtQuick
import QtQuick.Controls
import com.mycompany.googlegateway
Item {
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

    GoogleGateway
    {
        id: gogl
    }

    // The main component: IntroWindow
    SignUpWindow {
        id: signUpWindow
        anchors.fill: parent // Fill the parent window

        signUp_PB.onClicked: {
            if(usernameField.text !== "" && emailField.text !== "" && passwordField.text !== "") {
                username = usernameField.text;
                email = emailField.text;
                password = passwordField.text;

                console.log(username + " " + email + " " + password);

                // Load the new QML file
                signUpWindow.visible = false
                loader.source = "SignUp1.qml";

            }
        }

        googleFast1.onClicked:
        {
        }
    }
}
