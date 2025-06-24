import QtQuick 2.15

Rectangle {
    id: bar
    height: 60
    color: "#3949ab"
    anchors.left: parent.left
    anchors.right: parent.right


    // Text bên trái
    Text {
        text: "Thư viện ứng dụng"
        color: "#fff"
        font.pixelSize: 25
        font.bold: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 32
    }

    // 2 icon bên phải
    Row {
        spacing: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 32

        Image { source: "icons/search.svg"; width: 32; height: 32 }
        Image { source: "icons/sort.svg"; width: 32; height: 32 }
    }
}
