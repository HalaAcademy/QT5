import QtQuick 2.15

Rectangle {
    id: bottomBar
    width: parent.width
    height: 70
    color: "transparent"

    signal carModeClicked()
    signal cameraClicked()
    signal autoDriveClicked()
    signal cruiseClicked()
    signal settingClicked()
    signal carClicked()

    Rectangle {
        anchors.fill: parent
        color: "#11153d"
        opacity: 0.85
    }

    Row {
        id: buttonRow
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 48

        // Nút CAR MODE (active)
        Rectangle {
            width: 68; height: 44; radius: 12
            color: "#22d3f7"
            border.width: 0
            Row {
                anchors.centerIn: parent
                spacing: 6
                
                Text {
                    text: "CAR\nMODE"
                    color: "white"
                    font.pixelSize: 14
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    lineHeight: 0.8
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: bottomBar.carModeClicked()
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }

        // Camera
        Rectangle {
            width: 54; height: 44; radius: 12
            color: "transparent"
            border.color: "#36cdfc"
            border.width: 2
            Image {
                source: "icons/camera.svg"
                anchors.centerIn: parent
                width: 30; height: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: bottomBar.cameraClicked()
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }

        // Auto drive
        Rectangle {
            width: 54; height: 44; radius: 12
            color: "transparent"
            border.color: "#36cdfc"
            border.width: 2
            Image {
                source: "icons/auto_drive.svg"
                anchors.centerIn: parent
                width: 30; height: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: bottomBar.autoDriveClicked()
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }

        // Cruise
        Rectangle {
            width: 54; height: 44; radius: 12
            color: "transparent"
            border.color: "#36cdfc"
            border.width: 2
            Image {
                source: "icons/cruise.svg"
                anchors.centerIn: parent
                width: 30; height: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: bottomBar.cruiseClicked()
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }

        // Setting
        Rectangle {
            width: 54; height: 44; radius: 12
            color: "transparent"
            border.color: "#36cdfc"
            border.width: 2
            Image {
                source: "icons/car_mode.svg"
                anchors.centerIn: parent
                width: 30; height: 30
            }
            MouseArea {
                anchors.fill: parent
                onClicked: bottomBar.settingClicked()
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }

    }
}
