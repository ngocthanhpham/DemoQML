import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWindow
    title: "Main window"
    width: 600
    height: 600
    visible: true
    flags: Qt.Dialog
    modality: Qt.ApplicationModal

    Component {
        id:  popupWindow
        ApplicationWindow {
            title: "Popup window"
            width: 400
            height: 400
            visible: true
            flags: Qt.Dialog
            modality: Qt.ApplicationModal
            Text {
                anchors.centerIn: parent
                text: "Close me to show main window"
            }
        }
    }

    Button {
        anchors.centerIn: parent
        text: "Show popup window"
        onClicked: {
            var window = popupWindow.createObject(mainWindow);
            mainWindow.hide();
            conn.target = window;
        }
    }

    Connections {
        id: conn
        onVisibleChanged: {
            mainWindow.show();
        }
    }
}
