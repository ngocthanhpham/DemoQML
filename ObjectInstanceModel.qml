import QtQuick 2.0

Item {
    width: 200; height: 200
    Rectangle{
        width: parent.width; height: parent.height
        Text {
            id: txt
            text: qsTr("Object instance model demo")
            color: "#ff0000"
        }
        Component{
            id: myComponent
            Text {
                id: txtComponent
                text: model.color
            }

        }
        ListView{
            anchors.fill: parent
            anchors.topMargin: 30
            model:txt
            delegate: myComponent
        }
    }
}
