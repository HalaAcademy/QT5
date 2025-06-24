#ifndef APPMANAGER_HPP
#define APPMANAGER_HPP

#include <QObject>

class AppManager : public QObject
{
    Q_OBJECT
public:
    explicit AppManager(QObject *parent = nullptr);

    Q_INVOKABLE QString getDefaultAppQml();
    Q_INVOKABLE QString getAppQml(const QString &appName);
};

#endif // APPMANAGER_HPP
