// qml/components/TripCard.qml
import QtQuick 2.15

Rectangle {
    id: tripCard
    width: 200
    height: 90
    radius: 14
    color: "#495166cc"           // Nền xám xanh nhạt
    border.color: "#6B7B96"      // Màu viền nhẹ, bạn có thể đổi mã màu khác
    border.width: 2              // Độ dày viền, có thể tăng/giảm

    Column {
        anchors.centerIn: parent
        spacing: 1

        // Dòng trên cùng: Hành trình A
        Text {
            text: "Hành trình A"
            color: "#FFF"
            font.pixelSize: 15
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Dòng chính: 14,4 km
        Text {
            text: "14,4 km"
            color: "#FFF"
            font.pixelSize: 20
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Dòng phụ: Quãng đường
        Text {
            text: "Quãng đường"
            color: "#FFF"
            font.pixelSize: 12
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
