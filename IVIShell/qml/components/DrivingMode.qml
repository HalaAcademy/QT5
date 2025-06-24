import QtQuick 2.15

Item {
    id: drivingMode

    property string mode: "NORMAL"
    property color modeColor: "#FF5722"

    Text {
        anchors.centerIn: parent
        text: mode
        color: modeColor
        font.pixelSize: 13
        font.bold: true
        font.family: "Arial"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        // XÓA DÒNG letterSpacing nếu Qt của bạn < 5.14
        // letterSpacing: 2
    }
}
