import QtQuick 2.15
import QtQuick.Controls 2.15
import "components"

Rectangle {
    id: leftPanel
    width: 260
    color: "#101522"
    anchors.top: parent.top
    anchors.bottom: parent.bottom

    Clock {
        id: clock
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10  // Tùy chỉnh khoảng cách từ trên xuống
    }
    

    // Demo property điều khiển cảnh báo
    property bool brakeWarning: false
    property bool engineWarning: false
    property bool doorWarning: false

    WarningIcon {
        id: warningIcons
        anchors.fill: parent
        model: [
            {icon: "qrc:/qml/icons/warning_brake.svg", x: 8, y: 56, visible: leftPanel.brakeWarning},
            {icon: "qrc:/qml/icons/warning_engine.svg", x: 8, y: 100, visible: leftPanel.engineWarning},
            {icon: "qrc:/qml/icons/warning_door.svg", x: 220, y: 56, visible: leftPanel.doorWarning}
        ]
    }

    DrivingMode {
        id: drivingMode
        mode: "SPORT"
        anchors.top: clock.bottom       // <--- đặt top ngay dưới clock
        anchors.horizontalCenter: parent.horizontalCenter
    }

    EnergyRecovery {
        id: energyRecovery
        label: "REGEN"
        anchors.right: parent.horizontalCenter  // mép phải đúng giữa màn hình
        anchors.top: clock.bottom
        anchors.topMargin: 0
        width: 80
    }



    AcceleratorStatus {
        label: "REGEN"
        anchors.left: parent.horizontalCenter  // mép phải đúng giữa màn hình
        anchors.top: clock.bottom
        anchors.topMargin: 0
        width: 80
    }


    VehicleStatus {
        id: vehicleStatus
        status: "READY" // Hoặc "NOT READY", "CHARGING", "ERROR", "DRIVE", "PARK"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: energyRecovery.bottom
        anchors.topMargin: 5
    }


    SpeedDisplay {
        id: speedDisplay
        speed: 54   // Truyền số km/h thực tế từ model hoặc backend
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: vehicleStatus.bottom
        anchors.topMargin: 5
    }


    GearStatus {
        id: gearStatus
        gear: "N" // Thay đổi giá trị này (P, R, N, D)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: speedDisplay.bottom
        anchors.topMargin: 5
    }


    BatteryIndicator {
        id: batteryIndicator
        kilometers: 88
        percent: 42
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: gearStatus.bottom
        anchors.topMargin: 0
    }


    TripCard {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: batteryIndicator.bottom
        anchors.topMargin: 60
    }










    // Demo: thêm các thành phần, hoặc BottomBar ở dưới
    BottomBar {
        id: bottomBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        // Bắt tín hiệu và chuyển tiếp lên cha nếu cần
        onHomeClicked: {
            leftPanel.homeClicked()
        }
        onAppsClicked: {
            leftPanel.appsClicked()
        }
        onSettingsClicked: {
            leftPanel.settingsClicked()
        }
    }

    // Bubble các signal lên để Window hoặc cha có thể dùng nếu muốn
    signal homeClicked()
    signal appsClicked()
    signal settingsClicked()
}
