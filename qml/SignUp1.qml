import QtQuick
import QtQuick.Controls
Item {
    visible: true
    id: root
    width: 1280
    height: 832

    property string username: ""
    property string email: ""
    property string password: ""
    property string firstNamegoogle: ""
    property string lastNamegoogle: ""
    property string pfp: ""
    property bool googleRegister: false
    // This Loader will load the external QML file when the button is clicked
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    // The main component: IntroWindow
    SignUpWindow_1 {

        id: signUpWindow1
        anchors.fill: parent // Fill the parent window
        firstNameField: firstNamegoogle;
        lastNameField: lastNamegoogle;
        isgoogleregistration: googleRegister

        signUp_PB.onClicked:
        {
            var birth = birthField
            var phone = phoneField;
            var gender = "Male"

                var firstName = firstNameField;
                var lastName = lastNameField;
                register.registerAccount(username, email, password, firstName, lastName, birth, gender, phone, isgoogleregistration, pfp);
                register.registerSuccessful()
                {
                    loader.source = "SignIn.qml";
                    signUpWindow1.visible = false
                }
        }
    }
}
