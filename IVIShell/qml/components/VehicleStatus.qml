import QtQuick 2.15

Item {
    id: vehicleStatus
    width: 80
    height: 10

    // Các trạng thái chính
    // Có thể dùng: "READY", "NOT READY", "CHARGING", "ERROR", "DRIVE", "PARK"
    property string status: "READY"

    // Đổi màu và nhãn tự động theo trạng thái
    property color statusColor: {
        switch (status) {
        case "READY":      return "#43A047";  // Xanh lá
        case "NOT READY":  return "#FFA000";  // Cam đậm
        case "CHARGING":   return "#039BE5";  // Xanh dương
        case "ERROR":      return "#D32F2F";  // Đỏ
        case "FAULT":      return "#D32F2F";  // Đỏ (tương tự ERROR)
        case "DRIVE":      return "#00BCD4";  // Xanh ngọc
        case "PARK":       return "#757575";  // Xám
        default:           return "#E0E0E0";  // Xám nhạt
        }
    }

    property string displayLabel: {
        switch (status) {
        case "READY":      return "READY";
        case "NOT READY":  return "NOT READY";
        case "CHARGING":   return "CHARGING";
        case "ERROR":      return "FAULT";
        case "FAULT":      return "FAULT";
        case "DRIVE":      return "DRIVE";
        case "PARK":       return "PARK";
        default:           return status;
        }
    }


    Text {
        anchors.centerIn: parent
        text: displayLabel
        color: statusColor
        font.pixelSize: 15
        font.bold: true
        font.family: "Arial"
    }
}
