#include "AppManager.hpp"
#include <QDir>
#include <QFile>
#include <QFileInfo>
#include <QJsonDocument>
#include <QJsonObject>
#include <QDebug>

AppManager::AppManager(QObject *parent) : QObject(parent) {}

QString AppManager::getDefaultAppQml() {
    // Ví dụ chỉ duyệt HomeApp. Nếu muốn tự động duyệt nhiều app, mở rộng hàm này.
    QString homeAppPath = "../../Home";
    QString metaPath = homeAppPath + "/metadata.json";
    QFile metaFile(metaPath);

    if (!metaFile.exists()) {
        qWarning() << "metadata.json NOT FOUND at" << metaPath;
        return "";
    }
    if (!metaFile.open(QIODevice::ReadOnly)) {
        qWarning() << "metadata.json CANNOT OPEN at" << metaPath;
        return "";
    }
    QByteArray metaData = metaFile.readAll();
    metaFile.close();

    QJsonParseError parseError;
    QJsonDocument doc = QJsonDocument::fromJson(metaData, &parseError);
    if (parseError.error != QJsonParseError::NoError || !doc.isObject()) {
        qWarning() << "metadata.json parse error:" << parseError.errorString();
        return "";
    }

    QJsonObject obj = doc.object();
    if (obj.value("default").toBool() && obj.contains("entry")) {
        QString entryFile = obj.value("entry").toString();
        if (entryFile.isEmpty()) {
            qWarning() << "metadata.json missing entry field!";
            return "";
        }
        QString qmlPath = QFileInfo(homeAppPath + "/" + entryFile).absoluteFilePath();
        qDebug() << "Default app QML:" << qmlPath;
        return qmlPath;
    }
    qDebug() << "metadata.json has no default:true or no entry field";
    return "";
}

QString AppManager::getAppQml(const QString &appName) {

    QString appDirPath = "../../" + appName;
    QString metaPath = appDirPath + "/metadata.json";
    QFile metaFile(metaPath);

    if (!metaFile.exists()) {
        qWarning() << "metadata.json NOT FOUND at" << metaPath;
        return "";
    }
    if (!metaFile.open(QIODevice::ReadOnly)) {
        qWarning() << "metadata.json CANNOT OPEN at" << metaPath;
        return "";
    }
    QByteArray metaData = metaFile.readAll();
    metaFile.close();

    QJsonParseError parseError;
    QJsonDocument doc = QJsonDocument::fromJson(metaData, &parseError);
    if (parseError.error != QJsonParseError::NoError || !doc.isObject()) {
        qWarning() << "metadata.json parse error:" << parseError.errorString();
        return "";
    }

    QJsonObject obj = doc.object();
    if (obj.contains("entry")) {
        QString entryFile = obj.value("entry").toString();
        if (entryFile.isEmpty()) {
            qWarning() << "metadata.json missing entry field!";
            return "";
        }
        QString qmlPath = QFileInfo(appDirPath + "/" + entryFile).absoluteFilePath();
        qDebug() << "App" << appName << "QML:" << qmlPath;
        return qmlPath;
    }
    qDebug() << "metadata.json missing entry field for app:" << appName;
    return "";
}
