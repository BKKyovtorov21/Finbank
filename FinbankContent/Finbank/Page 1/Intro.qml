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
    IntroWindow {
        id: introwindow
        anchors.fill: parent // Fill the parent window

        // This handles the button click event
        joinNow_PB.onClicked: {
            introwindow.visible = false;
            loader.source = "SignIn.qml";
        }

        logInButton.onClicked:
        {
            introwindow.visible = false;
            loader.source = "SignIn.qml"
        }
        createAccount_PB.onClicked:
        {
            introwindow.visible = false;
            loader.source = "SignUp.qml";
        }
        signUpButton.onClicked:
        {
            introwindow.visible = false;
            loader.source = "SignUp.qml";
        }
    }
}
