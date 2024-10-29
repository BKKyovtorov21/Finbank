#include "searchrecipent.hpp"
SearchRecipent::SearchRecipent(QObject *parent)
    : QObject{parent}
{
}

void SearchRecipent::SearchUser(const QString& partialInput)
{
    QSqlQuery query;

    query.prepare("SELECT first_name, last_name, username, email "
                  "FROM users "
                  "WHERE username LIKE :input "
                  "OR first_name LIKE :input "
                  "OR last_name LIKE :input "
                  "OR email LIKE :input");

    query.bindValue(":input", "%" + partialInput + "%");

    if (query.exec()) {
        bool foundUser = false;
        while (query.next()) {
            foundUser = true;
            QString firstname = query.value("first_name").toString();
            QString lastname = query.value("last_name").toString();
            QString username = query.value("username").toString();
            QString email = query.value("email").toString();

            emit userFound(firstname, lastname, email, username);
        }

        if (!foundUser) {
            qDebug() << "No users found matching:" << partialInput;
        }
    } else {
        qDebug() << "Query execution error:" << query.lastError().text();
    }
}

