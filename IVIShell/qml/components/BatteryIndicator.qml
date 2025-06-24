import QtQuick 2.15

Item {
    id: batteryIndicator
    width: 160
    // --- Dòng trên: km (trái), icon (giữa), phần trăm (phải) ---
    Item {
        id: infoRow
        width: parent.width
        height: 22
        anchors.top: parent.top

        // Km còn lại (căn trái)
        Text {
            id: kmText
            text: batteryIndicator.kilometers + " km"
            color: "#FFFFFF"
            font.bold: true
            font.pixelSize: 15
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.verticalCenter: parent.verticalCenter
        }

        // % pin (căn phải)
        Text {
            id: percentText
            text: batteryIndicator.percent + " %"
            color: "#FFFFFF"
            font.bold: true
            font.pixelSize: 15
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.verticalCenter: parent.verticalCenter
        }

        // Icon tia sét (giữa)
        Image {
            source: "qrc:/qml/icons/bolt.svg"
            width: 20
            height: 20
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    // --- Thanh battery (progress bar) ---
    Rectangle {
        id: progressBar
        width: parent.width
        height: 14
        radius: 7
        color: "#FFFFFF"
        border.color: "#666C7A"
        border.width: 2
        anchors.top: infoRow.bottom
        anchors.topMargin: 8

        // Phần progress (đã đầy)
        Rectangle {
            width: parent.width * batteryIndicator.percent / 100
            height: parent.height
            radius: 7
            color: "#63FF4B"
        }
    }

    // Truyền dữ liệu từ ngoài vào
    property int kilometers: 88
    property int percent: 42
}
