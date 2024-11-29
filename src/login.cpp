#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSqlQuery>
#include <QCryptographicHash>
#include <QMessageBox>
#include <QDebug>
#include <QSqlError>
#include "login.hpp"
#include "databasemanager.hpp"
LogIn::LogIn(DatabaseManager* dbManager, QObject *parent)
    : QObject{parent}, m_dbManager(dbManager)
{
}

void LogIn::logInUser(const QString &phone, const QString &password, const bool& isGoogleRegistered)
{
    QSqlQuery qry(m_dbManager->GetDatabase());
    if (!isGoogleRegistered)
    {
        QString modifiedPhone = "0" + phone;
        qry.prepare("SELECT * FROM users WHERE phone = :phone");
        qry.bindValue(":phone", modifiedPhone);

        if (qry.exec())
        {
            if (qry.next())
            {
                m_username = qry.value("username").toString();
                qDebug() << qry.value("username");
                QString hashedPassword = Hash(password, qry.value("passwordSalt").toString());

                if (qry.value("password").toString() == hashedPassword)
                {
                    emit logInSuccessful(qry.value("username").toString());
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
        qry.bindValue(":username", m_username);
        emit logInSuccessful("");

        if (qry.exec())
        {
            if (qry.next())
            {
                if (qry.value("googleRegistered").toBool() == isGoogleRegistered)
                {
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
                // qDebug() << "Login failed: Username not found (Google registration)";

                // // Show error message for username not found in Google registration
                // QMessageBox::critical(nullptr, "Login Failed", "Username not found.");
                // return;
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
