#include "dashboard.hpp"
#include "login.hpp"
#include <QSqlQuery>
#include <QDebug>
#include <QSqlError>
Dashboard::Dashboard(QObject *parent)
    : QObject{parent}
{

}
QVariant Dashboard::getDbVariable(const QString &username, const QString &dbVariable)
{
    QSqlQuery qry;
    qry.prepare("SELECT * FROM users WHERE username = :username");
    qry.bindValue(":username", username);

    if (qry.exec() && qry.next())
    {
        return qry.value(dbVariable).toString();  // Return QVariant, which can be converted later
    }
    else
    {
        qDebug() << "Error fetching data:" << qry.lastError();
        return QVariant();  // Return an empty QVariant in case of failure
    }
}
