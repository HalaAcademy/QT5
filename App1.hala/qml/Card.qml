import QtQuick 2.15

Rectangle {
    id: card
    width: 500
    height: 180
    radius: 16
    color: "#1c3964"
    border.color: "#2e4773"
    border.width: 1

    // Các property động
    property string title: ""
    property string description: ""
    property var labels: []        // ví dụ ["Tắt", "Bật"] hoặc []
    property int selectedIndex: 0
    property var onToggled: null   // callback function

    Column {
        anchors.fill: parent
        anchors.margins: 22
        spacing: 14

        // Tiêu đề
        Text {
            text: card.title
            visible: card.title.length > 0
            font.pixelSize: 20
            font.bold: true
            color: "#fff"
        }

        // Nội dung mô tả
        Text {
            text: card.description
            visible: card.description.length > 0
            font.pixelSize: 15
            color: "#cde0ff"
            wrapMode: Text.WordWrap
        }

        // Nếu labels có truyền vào, tự sinh GroupToggleButton
        GroupToggleButton {
            visible: card.labels.length > 0
            labels: card.labels
            selectedIndex: card.selectedIndex
            onToggled: function(index) {
                if (card.onToggled) card.onToggled(index)
            }
        }
    }
}
