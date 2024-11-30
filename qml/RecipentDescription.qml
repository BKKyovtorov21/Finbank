import QtQuick
import QtQuick.Controls
import QtCharts

Item {
    id: root
    width: 1280
    height: 832

    Loader {
        id: loader
        anchors.fill: parent
        source: ""  // Start with no source, will load dynamically
    }


    RecipentDescriptionWindow {
        id: recipentDescription
        anchors.fill: parent
        property string recipentIBANStr
        recipentIBAN: recipentIBANStr
        continueButton.onClicked:
        {
            recipentDescription.visible = false;
            loader.source = "TransferType.qml"
        }

        selectBankButton.onClicked:
        {
            timelineAnimation.running = true;
        }
        backButton.onClicked:
        {
            recipentDescription.visible = false;
            loader.source = "SendMoney.qml"
        }

        Component.onCompleted:
        {
            var userComponent = Qt.createComponent("SelectedRecipent.qml");
            if (userComponent.status === Component.Ready) {
                var userInstance = userComponent.createObject(rectangle_42, {
                    userFullname: recipentsWindow.fullNameRef,
                    userEmail: recipentsWindow.emailRef,
                    userPfp: recipentsWindow.pfpRef
                });
            }
            recipentIBANStr = dashboard.getDbVariable(recipentsWindow.usernameRef, "IBAN");


        }


    }
}
