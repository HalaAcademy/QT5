// HomeButton.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: homeButton
    width: 50
    height: 50
    flat: true
    text: "" // Không hiện chữ

    background: Rectangle {
        anchors.fill: parent
        color: (homeButton.pressed || homeButton.hovered) ? "#1C7AF6" : "transparent"
        radius: 12
    }

    contentItem: Image {
        anchors.centerIn: parent
        source: "qrc:/qml/icons/home.svg"
        width: parent.width * 0.6
        height: parent.height * 0.6
        fillMode: Image.PreserveAspectFit
    }
}
