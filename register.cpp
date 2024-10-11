#include "register.hpp"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>

Register::Register(QObject *parent)
    : QObject{parent}
{}

void Register::registerAccount(const QString& username, const QString& email, const QString& password, const QString& firstName, const QString& lastName, const QString& dateOfBirth, const QString& gender, const QString& phone)
{
    QSqlQuery qry;
    qry.prepare("INSERT INTO users (username, email, password, first_name, last_name, date_of_birth, gender, phone) "
                "VALUES (:username, :email, :password, :first_name, :last_name, :date_of_birth, :gender, :phone)");

    qry.bindValue(":username", username);
    qry.bindValue(":email", email);
    qry.bindValue(":password", password);
    qry.bindValue(":first_name", firstName);
    qry.bindValue(":last_name", lastName);
    qry.bindValue(":date_of_birth", dateOfBirth);
    qry.bindValue(":gender", gender);
    qry.bindValue(":phone", phone);

    if (!qry.exec()) {
        qDebug() << "Error inserting into users table:" << qry.lastError();
    }
}
