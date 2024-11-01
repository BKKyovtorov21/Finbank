#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSqlQuery>
#include <QCryptographicHash>
#include "login.hpp"

LogIn::LogIn(QObject *parent)
    : QObject{parent}
{
}

void LogIn::logInUser(const QString &username, const QString &password, const bool& isGoogleRegistered)
{
    m_username = username;
    QSqlQuery qry;
    if(!isGoogleRegistered)
    {
    qry.prepare("SELECT * FROM users WHERE username = :username");
    qry.bindValue(":username", username);
    if (qry.exec() && qry.next())
    {
        QString hashedPassword = Hash(password, qry.value("passwordSalt").toString());
        if (qry.value("password").toString() == hashedPassword)
        {
            emit logInSuccessful();
        }
        else
        {
            qDebug() << username;
            qDebug() << qry.value("password").toString();
            qDebug() << hashedPassword;
            qDebug() << password;

        }
    }
    }
    else
    {
        qry.prepare("SELECT * FROM users WHERE username = :username");
        qry.bindValue(":username", username);
        if (qry.exec() && qry.next())
        {
            if(qry.value("googleRegistered").toBool() == isGoogleRegistered)
            {
                emit logInSuccessful();
            }
            else
            {
                qDebug() << isGoogleRegistered;
            }
        }
    }
}

QString LogIn::Hash(const QString &password, const QString &salt)
{
    QByteArray passwordWithSalt = (password + salt).toUtf8();
    QByteArray hashedPassword = QCryptographicHash::hash(passwordWithSalt, QCryptographicHash::Sha256);
    return hashedPassword.toHex();
}

QString LogIn::getUsername()
{
    return m_username;
}
