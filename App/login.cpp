#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSqlQuery>
#include <QCryptographicHash>
#include <QMessageBox>
#include <QDebug>
#include <QSqlError>
#include "login.hpp"

LogIn::LogIn(QObject *parent)
    : QObject{parent}
{
}

void LogIn::logInUser(const QString &username, const QString &password, const bool& isGoogleRegistered)
{
    m_username = username;
    QSqlQuery qry;

    if (!isGoogleRegistered)
    {
        qry.prepare("SELECT * FROM users WHERE username = :username");
        qry.bindValue(":username", username);

        if (qry.exec())
        {
            if (qry.next())
            {
                QString hashedPassword = Hash(password, qry.value("passwordSalt").toString());

                if (qry.value("password").toString() == hashedPassword)
                {
                    emit logInSuccessful();
                    return; // Exit the function if login is successful
                }
                else
                {
                    qDebug() << "Login failed: Password mismatch";
                    qDebug() << "Stored password hash:" << qry.value("password").toString();
                    qDebug() << "Computed hash with input:" << hashedPassword;

                    // Show error message for password mismatch
                    QMessageBox::critical(nullptr, "Login Failed", "Incorrect username or password.");
                    return;
                }
            }
            else
            {
                qDebug() << "Login failed: Username not found";

                // Show error message for username not found
                QMessageBox::critical(nullptr, "Login Failed", "Username not found.");
                return;
            }
        }
        else
        {
            qDebug() << "Query execution failed:" << qry.lastError().text();

            // Show error message for query execution failure
            QMessageBox::critical(nullptr, "Login Error", "Database query failed: " + qry.lastError().text());
            return;
        }
    }
    else // Google registration case
    {
        qry.prepare("SELECT * FROM users WHERE username = :username");
        qry.bindValue(":username", username);

        if (qry.exec())
        {
            if (qry.next())
            {
                if (qry.value("googleRegistered").toBool() == isGoogleRegistered)
                {
                    emit logInSuccessful();
                    return;
                }
                else
                {
                    qDebug() << "Login failed: Google registration mismatch";

                    // Show error message for Google registration mismatch
                    QMessageBox::critical(nullptr, "Login Failed", "This account is not registered with Google.");
                    return;
                }
            }
            else
            {
                qDebug() << "Login failed: Username not found (Google registration)";

                // Show error message for username not found in Google registration
                QMessageBox::critical(nullptr, "Login Failed", "Username not found.");
                return;
            }
        }
        else
        {
            qDebug() << "Query execution failed:" << qry.lastError().text();

            // Show error message for query execution failure
            QMessageBox::critical(nullptr, "Login Error", "Database query failed: " + qry.lastError().text());
            return;
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
