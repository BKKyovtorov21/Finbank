import QtQuick
import QtQuick.Controls
import com.mycompany.register 1.0  // Import the C++ class
Window {
    visible: true
    id: root
    width: 1280
    height: 832

    property string username: ""
    property string email: ""
    property string password: ""

    // This Loader will load the external QML file when the button is clicked
    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }

    Register {
            id: registerObj  // Instance of the Register class
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
                var gender;
                if(maleCheckBox.checked)
                {
                    gender = "Male";
                }
                else if(femaleCheckBox.checked)
                {
                    gender = "Female";
                }

                console.log(firstName + " " + lastName + " " + birth + " " + phone);
                registerObj.registerAccount(username, email, password, firstName, lastName, birth, gender, phone);
            }

        }
    }
}
