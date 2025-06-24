import QtQuick 2.15
import QtQuick.Layouts 1.15

Row {
    id: gearStatusRow
    property string gear: "P"   // "P", "R", "N", "D"

    spacing: 14
    anchors.horizontalCenter: parent.horizontalCenter
    height: 44

    // Hàm đổi font size
    function fontSize(letter) {
        return gear === letter ? 36 : 24;
    }

    // Hàm đổi font weight
    function fontWeight(letter) {
        return gear === letter ? Font.DemiBold : Font.Normal;
    }

    // P
    Text {
        text: "P"
        color: "#FFFFFF"
        font.pixelSize: gearStatusRow.fontSize("P")
        font.bold: gearStatusRow.gear === "P"
        font.weight: gearStatusRow.fontWeight("P")
        font.family: "Arial"
        opacity: gearStatusRow.gear === "P" ? 1.0 : 0.7
        anchors.verticalCenter: parent.verticalCenter
    }

    // R
    Text {
        text: "R"
        color: "#FFFFFF"
        font.pixelSize: gearStatusRow.fontSize("R")
        font.bold: gearStatusRow.gear === "R"
        font.weight: gearStatusRow.fontWeight("R")
        font.family: "Arial"
        opacity: gearStatusRow.gear === "R" ? 1.0 : 0.7
        anchors.verticalCenter: parent.verticalCenter
    }

    // N
    Text {
        text: "N"
        color: "#FFFFFF"
        font.pixelSize: gearStatusRow.fontSize("N")
        font.bold: gearStatusRow.gear === "N"
        font.weight: gearStatusRow.fontWeight("N")
        font.family: "Arial"
        opacity: gearStatusRow.gear === "N" ? 1.0 : 0.7
        anchors.verticalCenter: parent.verticalCenter
    }

    // D
    Text {
        text: "D"
        color: "#FFFFFF"
        font.pixelSize: gearStatusRow.fontSize("D")
        font.bold: gearStatusRow.gear === "D"
        font.weight: gearStatusRow.fontWeight("D")
        font.family: "Arial"
        opacity: gearStatusRow.gear === "D" ? 1.0 : 0.7
        anchors.verticalCenter: parent.verticalCenter
    }
}
