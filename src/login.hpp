#pragma once

#include <QObject>

class DatabaseManager;  // Forward declaration of DatabaseManager

class LogIn : public QObject
{
    Q_OBJECT
public:
    explicit LogIn(DatabaseManager* dbManager, QObject *parent = nullptr);  // Constructor with DatabaseManager reference

    Q_INVOKABLE void logInUser(const QString& phone, const QString& password, const bool& isGoogleRegistered);
    Q_INVOKABLE QString getUsername();

private:
    QString m_username;
    DatabaseManager* m_dbManager;  // Store the pointer to DatabaseManager
    QString Hash(const QString &password, const QString &salt);

signals:
    void logInSuccessful(const QString& username);
};
