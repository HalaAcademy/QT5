import QtQuick 2.15
import QtQuick.Controls 2.15

// Import các component, đặt cùng thư mục hoặc sửa lại đường dẫn import nếu nằm ở "components"
import "qml"

Item {
    width: 800
    height: 480

    // Header trên cùng
    HeaderBar {
        id: header
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        z: 2
    }

    // BottomBar dưới cùng
    BottomBar {
        id: bottomBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        z: 2
    }

    // Phần ở giữa (chiều cao tự động fit vào giữa hai bar)
    DriveModeCards {
        id: cards
        anchors.top: header.bottom
        anchors.bottom: bottomBar.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 15         // Cách header 20px
        anchors.bottomMargin: 15      // Cách bottomBar 20px
        z: 1
    }
}
