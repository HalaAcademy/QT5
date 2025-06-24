import QtQuick 2.15

Item {
    id: energyRecovery
    height: 40

    // Property trạng thái, số liệu hồi năng lượng (tùy ý)
    property string label: "REGEN"
    property color color: "#FFA000"

    // Đường cong SVG (nửa trái)
    Image {
        id: regenArc
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        height: parent.height
        source: "qrc:/qml/icons/regen_arrow.svg"
        fillMode: Image.PreserveAspectFit
    }
}
