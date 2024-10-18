#include "dashboard.hpp"
#include "login.hpp"
#include <QSqlQuery>
#include <QDebug>
#include <QSqlError>
Dashboard::Dashboard(QObject *parent)
    : QObject{parent}
{

}

float Dashboard::getDbVariable(const QString &username, const QString& dbVariable)
{
    QSqlQuery qry;
    qry.prepare("SELECT * FROM users WHERE username = :username");
    qry.bindValue(":username", username);
    if(qry.exec() && qry.next())
    {
        return qry.value(dbVariable).toFloat();
    }
    else
    {
        qDebug() << qry.lastError();
    }
}
