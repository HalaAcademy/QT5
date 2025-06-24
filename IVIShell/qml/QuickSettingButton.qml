import QtQuick 2.15

Item {
    id: root
    property string icon: ""
    property string label: ""
    property bool selected: false
    signal clicked()

    width: 56
    height: 56

    Rectangle {
        anchors.fill: parent
        color: selected ? "#3ec6ff" : "transparent"
        border.color: selected ? "#3ec6ff" : "#fff"
        border.width: 2
        radius: 14

        MouseArea {
            anchors.fill: parent
            onClicked: root.clicked()
            cursorShape: Qt.PointingHandCursor
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: label !== "" ? 2 : 0

        // Icon luôn hiển thị (nếu có)
        Image {
            source: icon
            width: 28
            height: 28
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            visible: icon !== ""
        }

        // Text dưới icon nếu có label (ví dụ: ECO MODE)
        Text {
            text: label
            color: "#fff"
            font.bold: true
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            visible: label !== ""
        }
    }
}
