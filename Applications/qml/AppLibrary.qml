import QtQuick 2.15

GridView {
    id: appsView
    anchors.fill: parent
    anchors.topMargin: 70
    cellWidth: 120
    cellHeight: 128

    model: ListModel {
        ListElement { iconSource: "icons/setting.svg"; label: "Cài đặt";    bgColor: "#cfd8dc" }
        ListElement { iconSource: "icons/service.svg"; label: "Dịch vụ";    bgColor: "#ef5350" }
        ListElement { iconSource: "icons/ev.svg";     label: "EV";         bgColor: "#66bb6a" }
        ListElement { iconSource: "icons/book.svg";   label: "Hướng dẫn\nsử dụng"; bgColor: "#ffb74d" }
        ListElement { iconSource: "icons/browser.svg";label: "Trình duyệt\nweb"; bgColor: "#42a5f5" }
        ListElement { iconSource: "icons/car.svg";    label: "Xe và Lái xe";bgColor: "#ab47bc" }
        ListElement { iconSource: "icons/music.svg";  label: "Đa phương\ntiện"; bgColor: "#7986cb" }
    }

    delegate: AppIconButton {
        iconSource: model.iconSource
        label: model.label
        bgColor: model.bgColor
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                console.log("Open app:", label)
            }
        }
        // Debug text bên trong delegate (chỉ để test):
        // Text { text: "icon=" + iconSource + ", label=" + label + ", color=" + bgColor; color: "red" }
    }
}
