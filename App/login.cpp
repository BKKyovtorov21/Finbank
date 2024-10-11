#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSqlQuery>
#include <QCryptographicHash>
#include "login.hpp"

LogIn::LogIn(QObject *parent)
    : QObject{parent}
{}

void LogIn::logInUser(const QString &username, const QString &password)
{
    qDebug() << username;
    qDebug() << password;
    QSqlQuery qry;
    qry.prepare("SELECT * FROM users WHERE username = :username");
    qry.bindValue(":username", username);
    if (qry.exec() && qry.next())
    {
        QString hashedPassword = Hash(password, qry.value("passwordSalt").toString());
        if (qry.value("password").toString() == hashedPassword)
        {
            // If login is successful, load the QML file
            loadQmlFile();
        }
    }
}

QString LogIn::Hash(const QString &password, const QString &salt)
{
    QByteArray passwordWithSalt = (password + salt).toUtf8();
    QByteArray hashedPassword = QCryptographicHash::hash(passwordWithSalt, QCryptographicHash::Sha256);
    return hashedPassword.toHex();
}

void LogIn::loadQmlFile()
{
    // Create a QQmlApplicationEngine
    QQmlApplicationEngine engine;

    // Load the QML file
    engine.load(QUrl(QStringLiteral(":/qmls/FinbankContent/Finbank/Page 1/SignIn.qml")));

    if (engine.rootObjects().isEmpty()) {
        qWarning() << "Failed to load QML file!";
        return;
    }

    // If you need to pass some data from C++ to QML, you can do it like this:
    // engine.rootContext()->setContextProperty("loginInstance", this);
}
