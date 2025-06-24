import QtQuick 2.15

Rectangle {
    id: card
    width: 230; height: 370; radius: 16
    color: "#1c3964"
    border.color: "#2e4773"
    border.width: 2

    // Column cho phần trên của card
    Column {
        id: topContent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 18
        spacing: 10

        Rectangle {
        width: 34      // hoặc 28, 32, tùy bạn
        height: 40     // chiều cao đứng, có thể chỉnh
        radius: 12
        color: "#fff"
        opacity: 0.85  // hoặc 1.0
        border.width: 0

        // Center icon trong hộp
        Image {
            source: "icons/bluetooth.svg"
            width: 22
            height: 22
            anchors.centerIn: parent
        }
    }

        Rectangle {
            width: 120; height: 72; radius: 10; color: "#282e46"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "Bậc thầy kể chuyện Sea..."
            color: "#fff"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "Vie Channel"
            color: "#b2cfff"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    // Progress bar canh dưới, phía trên controls
    Rectangle {
        id: progressBar
        width: parent.width - 36
        height: 8
        color: "#273c63"
        radius: 4
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: controlsRow.top
        anchors.bottomMargin: 18

        Rectangle {
            width: (parent.width) * 0.4
            height: parent.height
            color: "#6ed9ff"
            radius: 4
        }
    }

    // Controls canh sát đáy
    Row {
        id: controlsRow
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 24
        spacing: 18
        Image { source: "icons/prev.svg"; width: 26; height: 26 }
        Image { source: "icons/play.svg"; width: 32; height: 32 }
        Image { source: "icons/next.svg"; width: 26; height: 26 }
    }
}
