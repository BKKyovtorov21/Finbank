#pragma once

#include <QObject>

class LogIn : public QObject
{
    Q_OBJECT
public:
    explicit LogIn(QObject *parent = nullptr);

    Q_INVOKABLE void logInUser(const QString& username, const QString& password, const bool& isGoogleRegistered);

    Q_INVOKABLE QString getUsername();
private:
    QString m_username;
    QString Hash(const QString &password, const QString &salt);

signals:
    void logInSuccessful();

};
