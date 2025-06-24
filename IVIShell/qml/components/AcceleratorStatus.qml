import QtQuick 2.15

Item {
    id: acceleratorStatus
    height: 40

    // Property trạng thái, số liệu đạp ga (tuỳ ý)
    property string label: "GA"
    property color color: "#FFA000"

    // Đường cong SVG (nửa phải) – nhớ đặt đúng file SVG cho nửa phải!
    Image {
        id: accelArc
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        height: parent.height
        source: "qrc:/qml/icons/brake_level.svg"  // hoặc brake_level.svg tuỳ bạn đặt tên
        fillMode: Image.PreserveAspectFit
    }
}
