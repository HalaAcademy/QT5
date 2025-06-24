import QtQuick 2.15

Rectangle {
    id: root
    width: 800
    height: 60
    color: "transparent"

    // Nền header tím bo góc
    Rectangle {
        id: bg
        anchors.fill: parent
        color: "#3949ab"
        anchors.margins: 0
        opacity: 1
    }

    Row {
        id: row
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 24
        spacing: 16

        // ICON CAR-SETTING
        Image {
            source: "icons/car_setting.svg"
            width: 36; height: 36
            fillMode: Image.PreserveAspectFit
        }

        // Tiêu đề
        Text {
            text: "Chế độ xe"
            color: "white"
            font.bold: true
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
        }
    }

    //  Bên phải: Ví dụ có thể để nút user hoặc status khác nếu cần
    // Row {
    //     anchors.verticalCenter: parent.verticalCenter
    //     anchors.right: parent.right
    //     anchors.rightMargin: 20
    //     spacing: 12
    //     Image {
    //         source: "icons/user.svg"
    //         width: 34; height: 34
    //     }
    // }
}
