import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15

// Import UserMenu (nếu cùng folder thì chỉ cần tên, không cần import)

Rectangle {
    id: root
    height: 60
    color: "#194B9B"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 16

        // Logo chữ HALA bo cong nền trắng
        Rectangle {
            width: 70
            height: 35
            radius: 8
            color: "#ffffff"
            border.width: 0

            Text {
                text: "HALA"
                anchors.centerIn: parent
                font.pixelSize: 22
                font.bold: true
                color: "#194B9B"
                font.family: "Arial"
            }
        }

        // Spacer co giãn
        Item { Layout.fillWidth: true }

        // Cụm bên phải: Tên thiết bị + Avatar user
        RowLayout {
            spacing: 8
            Layout.alignment: Qt.AlignRight

            Text {
                text: "iPhone của VicerPham"
                color: "white"
                font.bold: true
                verticalAlignment: Text.AlignVCenter
            }
            // Avatar user (khi click xổ menu)
            Item {
                width: 32
                height: 32
                Image {
                    id: avatarBtn
                    source: "../user.svg"
                    anchors.fill: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: userMenu.open()
                    cursorShape: Qt.PointingHandCursor
                }
            }
            // Gọi UserMenu component (sát phải, nằm cuối)
            UserMenu { id: userMenu }
        }
    }
}
