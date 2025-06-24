// GroupToggleButton.qml
import QtQuick 2.15

Rectangle {
    id: groupBorder
    property int buttonWidth: 100
    property int buttonHeight: 40
    property var labels: ["ECO", "NORMAL"]
    property int selectedIndex: 0
    signal toggled(int index)

    width: labels.length * buttonWidth
    height: buttonHeight
    radius: 5
    color: "transparent"
    border.color: selectedIndex >= 0 ? "#19cfff" : "#ffffff22"
    border.width: selectedIndex >= 0 ? 2 : 1

    Row {
        anchors.fill: parent
        spacing: 0

        Repeater {
            model: labels.length
            delegate: ToggleButton {
                text: labels[index]
                checked: selectedIndex === index
                onClicked: {
                    groupBorder.selectedIndex = index
                    groupBorder.toggled(index)
                }
            }
        }
    }
}
