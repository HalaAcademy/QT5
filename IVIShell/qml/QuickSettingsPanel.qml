import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: quickPanel
    width: parent.width
    height: 200

    // Trạng thái panel
    property real hiddenY: -height + 10
    property real visibleY: 0
    property real panelY: hiddenY

    // Chọn nút nào đang active
    property int currentIndex: 0

    y: panelY
    z: 999

    // Opacity động tuỳ trạng thái panel
    property real panelOpacity: panelY === hiddenY ? 0 : 0.96

    Rectangle {
        anchors.fill: parent
        color: "#203A5B"
        opacity: quickPanel.panelOpacity
        border.color: "#5acfff"
        Behavior on opacity { NumberAnimation { duration: 250 } }
    }

    Column {
        anchors.top: parent.top
        anchors.topMargin: 55
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: parent.left
        spacing: 14

        // --- Dãy nút shortcut ---
        Row {
            id: shortcutRow
            spacing: 15
            anchors.horizontalCenter: parent.horizontalCenter

            QuickSettingButton {
                icon: "icons/settings.svg"
                selected: quickPanel.currentIndex === 0
                onClicked: quickPanel.currentIndex = 0
            }
            QuickSettingButton {
                icon: "icons/wifi.svg"
                selected: quickPanel.currentIndex === 1
                onClicked: quickPanel.currentIndex = 1
            }
            QuickSettingButton {
                icon: "icons/phone.svg"
                selected: quickPanel.currentIndex === 2
                onClicked: quickPanel.currentIndex = 2
            }
            QuickSettingButton {
                label: "ECO\nMODE"
                selected: quickPanel.currentIndex === 3
                onClicked: quickPanel.currentIndex = 3
            }
            QuickSettingButton {
                icon: "icons/tent.svg"
                selected: quickPanel.currentIndex === 4
                onClicked: quickPanel.currentIndex = 4
            }
            QuickSettingButton {
                icon: "icons/headset.svg"
                selected: quickPanel.currentIndex === 5
                onClicked: quickPanel.currentIndex = 5
            }
            QuickSettingButton {
                icon: "icons/video.svg"
                selected: quickPanel.currentIndex === 6
                onClicked: quickPanel.currentIndex = 6
            }
        }

        // --- Thanh trượt điều khiển độ sáng ---
        Column {
            spacing: 4
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                text: "Độ sáng màn hình"
                color: "#fff"
                font.pixelSize: 14
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Slider {
                id: brightnessSlider
                width: 240
                from: 0; to: 100
                value: 80
            }
        }
    }

    // --- Thanh kéo thả ---
    Rectangle {
        id: dragHandle
        width: 50
        height: 5
        radius: 10
        color: "#aaaaaa"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        z: 10
        opacity: 0.7
    }

    // --- Kéo thả mở/đóng panel ---
    property bool isPressed: false
    property real pressY: 0
    property bool hasOpened: false
    property bool hasClosed: false

    MouseArea {
        anchors.fill: parent
        z: 20
        hoverEnabled: true

        onPressed: {
            isPressed = true
            pressY = mouse.y
            hasOpened = false
            hasClosed = false
        }
        onPositionChanged: {
            if (panelY === hiddenY && isPressed && !hasOpened && (mouse.y - pressY > 10)) {
                quickPanel.show()
                hasOpened = true
                hasClosed = false
            }
            else if (panelY === visibleY && isPressed && !hasClosed && (pressY - mouse.y > 10)) {
                quickPanel.hide()
                hasClosed = true
                hasOpened = false
            }
        }
        onReleased: {
            isPressed = false
            hasOpened = false
            hasClosed = false
        }
    }

    Behavior on panelY {
        NumberAnimation { duration: 400; easing.type: Easing.InOutQuad }
    }

    function show() { panelY = visibleY }
    function hide() { panelY = hiddenY }
}
