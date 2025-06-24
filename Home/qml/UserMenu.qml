import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.0


Popup {
    id: userMenu
    x: parent ? parent.width - width - 16 : 0   // Sát phải parent nếu có
    y: parent ? parent.height + 4 : 60          // Dưới header nếu có
    width: 230
    modal: true
    focus: true

    background: Rectangle {
        color: "#ffffff"
        opacity: 0.93
        radius: 16
        border.color: "#aee8fa"
        border.width: 1
        layer.enabled: true
        layer.effect: DropShadow {
            color: "black"         // hoặc "gray" hoặc "rgba(68,68,68,0.25)"
            radius: 18
            samples: 24
            verticalOffset: 4
            opacity: 0.22          // Thêm dòng này để điều chỉnh độ trong suốt nếu muốn
        }
    }

    Column {
        anchors.fill: parent
        anchors.margins: 5
        spacing: 8

        // User chính
        Rectangle {
            width: parent.width
            height: 40
            radius: 12
            color: "#edf6ff"
            border.color: "#aee8fa"
            Row {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 12

                Rectangle {
                    width: 28
                    height: 28
                    radius: 16
                    color: "#2276d7"
                    Text {
                        text: "PV"
                        anchors.centerIn: parent
                        color: "#fff"
                        font.bold: true
                        font.pixelSize: 14
                    }
                }
                Text {
                    text: "PHẠM VĂN..."
                    font.bold: true
                    font.pixelSize: 16
                    elide: Text.ElideRight
                    color: "#194B9B"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: userMenu.close()
            }
        }

        // User Khách
        Rectangle {
            width: parent.width
            height: 40
            radius: 10
            color: "#f6f7fb"
            border.color: "#cfdcec"
            Row {
                anchors.fill: parent
                anchors.margins: 5
                spacing: 12
                Image {
                    source: "../user.svg"
                    width: 28
                    height: 28
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text {
                    text: "Khách"
                    font.pixelSize: 16
                    color: "#263666"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: userMenu.close()
            }
        }
    }
}
