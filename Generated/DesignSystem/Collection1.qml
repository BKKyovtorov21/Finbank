pragma Singleton

import QtQuick

QtObject {
    property QtObject currentTheme: mode1
    property QtObject mode1: QtObject {}
}
