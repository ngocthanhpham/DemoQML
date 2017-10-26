import QtQuick 2.0

Item {
    Rectangle {
        height: 200; width: 200
        id: coloredrectangle
        property alias color: bluerectangle.color
        color: "red"

        Rectangle {
            height: 150
            width: 150
            id: bluerectangle
            color: "#1234ff"
        }

        Component.onCompleted: {
            console.log (coloredrectangle.color)    //prints "#1234ff"
            setInternalColor()
            console.log (coloredrectangle.color)    //prints "#111111"
            coloredrectangle.color = "#884646"
            console.log (coloredrectangle.color)    //prints #884646
        }

        //internal function that has access to internal properties
        function setInternalColor() {
            color = "#111111"
        }
    }
}
