import QtQuick 2.15

Item {
    id: speedDisplay
    width: 120
    height: 90

    // Giá trị tốc độ hiện tại (km/h)
    property int speed: 0

    // Animate số tốc độ thay đổi mượt
    NumberAnimation on animatedSpeed {
        duration: 200
        easing.type: Easing.InOutQuad
    }

    // Tạo biến tạm để animate
    property real animatedSpeed: speed

    onSpeedChanged: {
        // Khi speed thay đổi, animate tới giá trị mới
        animatedSpeed = speed
    }

    // Nền trong suốt, chỉ dùng để layout

    // Số tốc độ
    Text {
        id: speedText
        text: Math.round(animatedSpeed)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        color: "#FFFFFF"
        font.pixelSize: 56
        font.bold: true
        font.family: "Arial"
    }

    // Đơn vị km/h nhỏ bên dưới
    Text {
        text: "km/h"
        anchors.horizontalCenter: speedText.horizontalCenter
        anchors.top: speedText.bottom
        color: "#B0BEC5"
        font.pixelSize: 20
        font.family: "Arial"
    }
}
