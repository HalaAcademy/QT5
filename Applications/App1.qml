import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 600
    height: 400

    Rectangle {
        width: parent.width
        height: 60
        color: "#3949ab"
        Text {
            anchors.centerIn: parent
            text: "Thư viện ứng dụng"
            color: "white"
            font.bold: true
            font.pixelSize: 22
        }
    }

    GridView {
        id: appsView
        anchors.top: parent.top
        anchors.topMargin: 70
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        cellWidth: 90
        cellHeight: 100
        model: 8

        delegate: Rectangle {
            width: 80
            height: 90
            radius: 12
            color: "#fff"
            border.color: "#3949ab"
            border.width: 1
            Column {
                anchors.centerIn: parent
                spacing: 8
                Rectangle { width: 40; height: 40; color: "#3949ab"; radius: 8 }
                Text { text: "App " + (index+1); font.pointSize: 10; color: "#3949ab" }
            }
            MouseArea { anchors.fill: parent; onClicked: console.log("Open app index", index+1) }
        }
    }
}



// Thanh header trên cùng
    //HeaderBar {
        id: header
        width: parent.width
        height: 70
        anchors.top: parent.top
    }