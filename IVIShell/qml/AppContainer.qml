import QtQuick 2.15

Item {
    id: appContainer
    property string appSource: ""

    Loader {
        id: appLoader
        anchors.fill: parent
        source: appContainer.appSource
        onStatusChanged: {
            if (status === Loader.Error) {
                console.log("Loader ERROR:", source, errorString())
            }
            if (status === Loader.Ready) {
                console.log("App loaded OK:", source)
            }
        }
    }

    function loadApp(qmlPath) {
        console.log("Load app with path:", qmlPath)
        appSource = qmlPath
    }
}
