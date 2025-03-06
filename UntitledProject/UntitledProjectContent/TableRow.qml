// TableRow.qml
import QtQuick 2.15
import QtQuick.Layouts 1.15

RowLayout {
    id: tableRow
    Layout.preferredWidth: parent.width
    Layout.preferredHeight: 50

    // "Name Stock" Column

        Rectangle {
            id: stockRect
            Layout.leftMargin: 20
            Layout.preferredWidth: 35
            Layout.preferredHeight: 35
            color: "#F4F4F4"
            radius: 6
            Image {
                anchors.centerIn: parent
                source: iconSource // Custom property to make this dynamic
            }

        }
        ColumnLayout {
            anchors.left: stockRect.right
            anchors.leftMargin: 15
            Text { text: name; font.bold: true } // Custom property for name
            Text { text: stockSymbol } // Custom property for stock symbol
        }



    // Invest Date
    Text {
        text: investDate // Custom property for date
        Layout.leftMargin: 10
        Layout.preferredWidth: 100
        horizontalAlignment: Text.AlignHCenter
    }

    // Volume
    Text {
        text: volume // Custom property for volume
        Layout.preferredWidth: 80
        horizontalAlignment: Text.AlignHCenter
    }

    // Change
    Text {
        text: change // Custom property for change
        Layout.preferredWidth: 80
        horizontalAlignment: Text.AlignHCenter
    }

    // Price/Stock
    Text {
        text: pricePerStock // Custom property for price/stock
        Layout.preferredWidth: 100
        horizontalAlignment: Text.AlignHCenter
    }

    // Number of Lots
    Text {
        text: numberOfLots // Custom property for lots
        Layout.preferredWidth: 80
        horizontalAlignment: Text.AlignHCenter
        Layout.rightMargin: 50
    }

    // Define the custom properties
    property string name: ""
    property string stockSymbol: ""
    property string investDate: ""
    property string volume: ""
    property string change: ""
    property string pricePerStock: ""
    property string numberOfLots: ""
    property string iconSource: ""
}
