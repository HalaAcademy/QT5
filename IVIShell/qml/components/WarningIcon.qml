// WarningIcon.qml
import QtQuick 2.15

Item {
    id: root
    property var model: []   // array chứa các object {icon, x, y, visible}
    // Nếu muốn tích hợp từ C++ thì có thể dùng ListModel, còn không thì chỉ cần array JS như trên

    width: parent ? parent.width : 260
    height: parent ? parent.height : 480

    // Lặp qua model, tạo từng icon đúng vị trí
    Repeater {
        model: root.model
        delegate: Image {
            source: modelData.icon
            x: modelData.x
            y: modelData.y
            width: 32
            height: 32
            visible: modelData.visible
            fillMode: Image.PreserveAspectFit
            // Hiệu ứng nhấp nháy nếu cần:
            // SequentialAnimation on opacity {
            //     loops: Animation.Infinite
            //     NumberAnimation { to: 0.4; duration: 300 }
            //     NumberAnimation { to: 1.0; duration: 300 }
            //     running: modelData.visible
            // }
        }
    }
}
