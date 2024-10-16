#include "dashboard.hpp"
#include "login.hpp"
#include <QSqlQuery>
#include <QDebug>
#include <QSqlError>
Dashboard::Dashboard(QObject *parent)
    : QObject{parent}
{
    m_username = "boqn";
    QSqlQuery qry;
    qry.prepare("SELECT hasVirtualCard FROM users WHERE username = :username");
    qry.bindValue(":username", m_username);
    qDebug() << m_username;
    if(qry.exec() && qry.next())
    {
        qDebug() << qry.value(0).toBool();
    }
    else
    {
        qDebug() << qry.lastError();
    }
}
