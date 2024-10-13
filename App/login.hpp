#pragma once

#include <QObject>
#include <QQmlApplicationEngine>

class LogIn : public QObject
{
    Q_OBJECT
public:
    explicit LogIn(QQmlApplicationEngine *engine, QObject *parent = nullptr);

    Q_INVOKABLE void logInUser(const QString& username, const QString& password);

    QString Hash(const QString &password, const QString &salt);

    void loadQmlFile();

private:
    QQmlApplicationEngine *m_engine; // Pointer to the QML engine

signals:
    void logInSuccessful();

};
