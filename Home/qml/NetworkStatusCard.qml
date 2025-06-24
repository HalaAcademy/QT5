import QtQuick 2.15

Rectangle {
    id: card
    width: 230; height: 370; radius: 16
    color: "#1c3964"
    border.color: "#2e4773"
    border.width: 2

    Column {
        anchors.fill: parent
        anchors.margins: 28
        spacing: 18
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            source: "icons/wifi.svg"
            width: 44; height: 44
        }
        Text {
            text: "Không có kết nối mạng"
            font.bold: true
            color: "white"
            font.pointSize: 12
        }
        
        Rectangle {
            width: 110; height: 38; radius: 16; color: "#2276d7"
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                anchors.centerIn: parent
                text: "Kết nối"
                color: "#fff"
                font.bold: true
                font.pixelSize: 15
            }
            MouseArea {
                anchors.fill: parent
                onClicked: console.log("Kết nối mạng!")
            }
        }
    }
}
