// Clock.qml
import QtQuick 2.15

Item {
    id: clock
    width: 120
    height: 48

    property string timeString: Qt.formatTime(new Date(), "HH:mm")

    Timer {
        interval: 1000     // vẫn kiểm tra mỗi giây, nhưng chỉ update khi phút đổi
        running: true
        repeat: true
        property string lastTime: Qt.formatTime(new Date(), "HH:mm")
        onTriggered: {
            var now = Qt.formatTime(new Date(), "HH:mm")
            if (now !== lastTime) {
                clock.timeString = now
                lastTime = now
            }
        }
    }

    Text {
        id: clockText
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0
        text: clock.timeString
        color: "#FFFFFF"
        font.pixelSize: 20
        font.bold: true
        font.family: "monospace"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
