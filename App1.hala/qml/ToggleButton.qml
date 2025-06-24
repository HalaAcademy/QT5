// ToggleButton.qml
import QtQuick 2.15

Rectangle {
    property bool checked: false
    property string text: ""
    signal clicked()

    width: 100
    height: 40
    radius: 5
    color: checked ? "#19cfff" : "transparent"
    border.color: "transparent"

    Text {
        anchors.centerIn: parent
        text: parent.text
        color: parent.checked ? "#fff" : "#d3edfd"
        font.bold: true
        font.pixelSize: 18
    }
    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
        cursorShape: Qt.PointingHandCursor
    }
}
