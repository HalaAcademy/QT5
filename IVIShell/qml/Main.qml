import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 800
    height: 480
    visible: true
    color: "#000000"

    // LeftPanel bên trái
    LeftPanel {
        id: leftPanel
        width: 260
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        // Bắt sự kiện click từ bar trong leftPanel
        onHomeClicked: {
            let homeQml = appManager.getAppQml("Home");
            if (homeQml !== "") appContainer.loadApp("file:///" + homeQml);
        }
        onAppsClicked: {
            let appsQml = appManager.getAppQml("Applications");
            if (appsQml !== "") appContainer.loadApp("file:///" + appsQml);
        }
        onSettingsClicked: {
            let settingsQml = appManager.getAppQml("Setting");
            if (settingsQml !== "") appContainer.loadApp("file:///" + settingsQml);
        }
    }

    // Divider sát phải LeftPanel
    Rectangle {
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: leftPanel.right
        gradient: Gradient {
            GradientStop { position: 0.2; color: "#888888" }
            GradientStop { position: 0.5; color: "#FFFFFF" }
            GradientStop { position: 0.8; color: "#888888" }
        }
    }

    // Main content bên phải
    Item {
        id: mainContent
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: leftPanel.right
        anchors.leftMargin: 1
        anchors.right: parent.right
        clip: true

        // Nền
        Rectangle {
            anchors.fill: parent
            color: "#243165"
        }

        // App loader
        AppContainer {
            id: appContainer
            anchors.fill: parent
            z: 1
        }

        // MouseArea phủ toàn bộ, dùng để ẩn quickSettings khi bấm ra ngoài
        MouseArea {
            id: outsidePanelArea
            anchors.fill: parent
            z: 998
            visible: quickSettings.panelY === quickSettings.visibleY
            enabled: visible
            propagateComposedEvents: true
            onClicked: {
                quickSettings.hide()
            }
        }

        // Quick settings panel (nằm trên cùng)
        QuickSettingsPanel {
            id: quickSettings
            width: parent.width
            z: 999
        }
    }

    Component.onCompleted: {
        // KHÔNG hard-code, lấy động từ AppManager (C++)
        let defaultAppQml = appManager.getDefaultAppQml();
        console.log("Default app QML path:", defaultAppQml)
        if (defaultAppQml !== "") {
            appContainer.loadApp("file:///" + defaultAppQml);
        }
    }
}
