#pragma once

#include <QObject>

class LogIn : public QObject
{
    Q_OBJECT
public:
    explicit LogIn(QObject *parent = nullptr);

    Q_INVOKABLE void logInUser(const QString& username, const QString& password);

    QString Hash(const QString &password, const QString &salt);

    void loadQmlFile();
};
