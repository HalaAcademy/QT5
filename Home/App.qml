import QtQuick 2.15
import QtQuick.Layouts 1.3
import "qml"


Item {
    width: 800
    height: 480

    HeaderBar {
        id: header
        width: parent.width
        height: 60
    }

    RowLayout {
        anchors.top: header.bottom
        anchors.topMargin: 16
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 24
        spacing: 24
        height: 240

        PlayerCard { }
        NetworkStatusCard { }
    }
}
