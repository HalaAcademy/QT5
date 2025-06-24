import QtQuick 2.15
import QtQuick.Controls 2.15
import "qml"

Rectangle {
    width: 900
    height: 700
    color: "#214076" // Màu nền bạn muốn

    // Thanh header trên cùng
    HeaderBar {
        id: header
        width: parent.width
        height: 70
        anchors.top: parent.top
    }

    // Nội dung chính: AppLibrary
    AppLibrary {
        id: appLib
        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 80
        anchors.leftMargin: 30
    }
}
