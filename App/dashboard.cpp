#include "dashboard.hpp"
#include "login.hpp"
#include <QSqlQuery>
#include <QDebug>
#include <QSqlError>
Dashboard::Dashboard(QObject *parent)
    : QObject{parent}
{

}

float Dashboard::getBalance(const QString &username)
{
    QSqlQuery qry;
    qry.prepare("SELECT balance FROM users WHERE username = :username");
    qry.bindValue(":username", username);
    qDebug() << username;
    if(qry.exec() && qry.next())
    {
        return qry.value(0).toFloat();
    }
    else
    {
        qDebug() << qry.lastError();
    }
}
