import QtQuick 2.15

Column {
    width: 100
    spacing: 8

    property string iconSource: ""
    property string label: ""
    property color bgColor: "transparent" // đổi tên từ color thành bgColor để tránh trùng với thuộc tính color của Rectangle

    Rectangle {
        width: 60; height: 60; radius: 5
        color: bgColor
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            source: iconSource
            anchors.centerIn: parent
            width: 38
            height: 38
            fillMode: Image.PreserveAspectFit
        }
    }
    Text {
        text: label
        color: "#fff"
        font.pixelSize: 15
        font.bold: true
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
