import QtQuick 2.0

Item {
    Rectangle {
          width: 100; height: 100
          gradient: Gradient {
              GradientStop { position: 0; color: "red" }
              GradientStop { position: 0.33; color: "yellow" }
              GradientStop { position: 1.0; color: "green" }
          }
      }
}
