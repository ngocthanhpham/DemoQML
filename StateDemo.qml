import QtQuick 2.0

Item{

    Rectangle {
        id: myRect
        width: 100; height: 100
        state: "black"
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: myRect.state == "red" ? myRect.state = "blue" : myRect.state = "red";
            state: "blue"
        }

        states: [
            State {
                name: "red"
                PropertyChanges {
                    target: myRect;
                    color: "red"
                }
            },
            State {
                name: "black"
                PropertyChanges {
                    target: myRect;
                    color: "black"
                }
            },
            State{
                name: "blue"
                PropertyChanges {
                    target: myRect
                    color: "blue"
                }
            }
        ]
    }

}

