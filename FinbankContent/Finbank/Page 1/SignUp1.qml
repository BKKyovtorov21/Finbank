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
    SignUpWindow_1 {
        id: signUpWindow1
        anchors.fill: parent // Fill the parent window

        signUp_PB.onClicked:
        {
            if(firstNameTextField.text != "" && lastNameTextField.text != "" && birthDateTextField.text != ""){
                var firstName = firstNameTextField.text;
                var lastName = lastNameTextField.text;
                var birth = birthDateTextField.text
                var phone = phoneNumberTextField.text

                console.log(firstName + " " + lastName + " " + birth + " " + phone)
            }

        }
    }
}
