// qml/BottomBar.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.0
import "components"

Rectangle {
    id: bottomBar
    height: 60
    color: "transparent"

    // Tạo các tín hiệu để báo cho cha biết nút nào được bấm
    signal homeClicked()
    signal appsClicked()
    signal settingsClicked()

    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.leftMargin: 15
    anchors.rightMargin: 15

    Row {
        id: buttonRow
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        spacing: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        SettingsButton {
            id: settingsBtn
            onClicked: bottomBar.settingsClicked()
        }
        AppsButton {
            id: appsBtn
            onClicked: bottomBar.appsClicked()
        }
        HomeButton {
            id: homeBtn
            onClicked: bottomBar.homeClicked()
        }
    }

    layer.enabled: true
    layer.effect: DropShadow {
        color: "#00000088"
        radius: 8
        samples: 16
        verticalOffset: 4
        horizontalOffset: 0
    }
}
