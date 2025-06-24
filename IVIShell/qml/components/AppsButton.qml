// AppsButton.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: appsButton
    width: 50
    height: 50
    flat: true
    text: "" // Không hiện chữ

    // Nền hiệu ứng khi nhấn hoặc hover
    background: Rectangle {
        anchors.fill: parent
        color: (appsButton.pressed || appsButton.hovered) ? "#1C7AF6" : "transparent"  // Đỏ khi nhấn hoặc hover
        radius: 12
    }

    // Icon SVG (từ resource)
    contentItem: Image {
        anchors.centerIn: parent
        source: "qrc:/qml/icons/apps.svg"
        width: parent.width * 0.6
        height: parent.height * 0.6
        fillMode: Image.PreserveAspectFit
    }

}
