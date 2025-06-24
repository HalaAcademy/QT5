// DriveModeCards.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 800
    // State cho các card
    property string driveMode: "eco"
    property bool creepEnabled: false
    property bool lockEnabled: true
    property int volumeLevel: 1

    ScrollView {
        anchors.fill: parent

        Column {
            spacing: 25
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 15

            Card {
                title: "Chế độ lái xe"
                description: "Chọn một chế độ để tối ưu vận hành."
                labels: ["ECO", "NORMAL"]
                selectedIndex: driveMode === "eco" ? 0 : 1
                onToggled: function(index) { driveMode = (index === 0 ? "eco" : "normal") }
            }

            Card {
                title: "Chế độ di chuyển chậm"
                description: "Xe sẽ di chuyển chậm về phía trước khi bàn đạp phanh được nhả ra."
                labels: ["Tắt", "Bật"]
                selectedIndex: creepEnabled ? 1 : 0
                onToggled: function(index) { creepEnabled = (index === 1) }
            }

            Card {
                title: "Khoá trẻ em"
                description: "Khi bật, cửa sau không thể mở từ bên trong."
                labels: ["Tắt", "Bật"]
                selectedIndex: lockEnabled ? 1 : 0
                onToggled: function(index) { lockEnabled = (index === 1) }
            }

            Card {
                title: "Âm lượng cảnh báo"
                description: "Chọn mức âm lượng cho âm báo."
                labels: ["Nhỏ", "Vừa", "To"]
                selectedIndex: volumeLevel
                onToggled: function(index) { volumeLevel = index }
            }
        }
    }
}
