import QtQuick
import QtQuick.Controls
Item {
    visible: true
    id: root
    width: 1280
    height: Screen.width * 0.9

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
                loader.item.firstNamegoogle = firstNamegoogle;
                loader.item.lastNamegoogle = lastNamegoogle;
                loader.item.googleRegister = googleRegister;
                loader.item.pfp = pfp
            }
        }
    }

    // Variables to hold form data
    property string username: ""
    property string email: ""
    property string password: ""
    property string usernameGoogle: ""
    property string firstNamegoogle: ""
    property string lastNamegoogle: ""
    property bool googleRegister: false
    property string pfp: ""

    SignUpWindow {
        id: signUpWindow
        anchors.fill: parent // Fill the parent window

        signUp_PB.onClicked: {
            if(usernameField !== "" && emailField !== "" && passwordField !== "") {
                username = usernameField;
                email = emailField;
                password = passwordField;
                // Load the new QML file
                signUpWindow.visible = false
                loader.source = "SignUp1.qml";
            }
        }

        googleFast1.onClicked:
        {
            googlegateway.click();
        }
        Connections {
            target: googlegateway
            onGoogleLoginSuccessful: {
                signUpWindow.isGoogleRegistration = true; // Set to true for Google registration
                googleRegister = true;
                // Ensure that googlegateway.userName and googlegateway.email are not undefined
                if (googlegateway.userName !== undefined) {
                    signUpWindow.usernameField = googlegateway.userName;
                    console.log(signUpWindow.usernameField);
                } else {
                    console.log("Error: googlegateway.userName is undefined");
                }

                if (googlegateway.userEmail !== undefined) {
                    signUpWindow.emailField = googlegateway.userEmail; // Direct assignment to the email property
                } else {2
                    console.log("Error: googlegateway.email is undefined");
                }
                if (googlegateway.userFirstName !== undefined) {
                    firstNamegoogle = googlegateway.userFirstName; // Direct assignment to the email propertyco
                } else {
                    console.log("Error: googlegateway.userFirstName is undefined");
                }
                if (googlegateway.userLastName !== undefined) {
                    lastNamegoogle = googlegateway.userLastName; // Direct assignment to the email property
                } else {
                    console.log("Error: googlegateway.userLastName is undefined");
                }

                pfp = googlegateway.userPicture
                signUpWindow.visible = false
                username = signUpWindow.usernameField;
                email = signUpWindow.emailField;
                password = signUpWindow.passwordField;
                loader.source = "SignUp1.qml";

            }
        }
    }
}
