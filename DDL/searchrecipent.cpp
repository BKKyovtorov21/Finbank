#include "searchrecipent.hpp"
#include <QFile>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>
#include <QDebug>
SearchRecipent::SearchRecipent(QObject *parent)
    : QObject{parent}
{
    loadStockData();
}

void SearchRecipent::SearchUser(const QString& partialInput)
{
    QSqlQuery query;

    query.prepare("SELECT first_name, last_name, username, email, pfp "
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
            QString pfp = query.value("pfp").toString();

            emit userFound(firstname, lastname, email, username, pfp);
        }

        if (!foundUser) {
            qDebug() << "No users found matching:" << partialInput;
        }
    } else {
        qDebug() << "Query execution error:" << query.lastError().text();
    }
}

void SearchRecipent::loadStockData() {
    QFile file(":/resources/stocks.json");  // Ensure the path is correct!
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qDebug() << "Failed to open JSON file:" << file.errorString();
        return;
    }

    QByteArray jsonData = file.readAll();
    file.close();

    QJsonDocument document = QJsonDocument::fromJson(jsonData);
    if (!document.isArray()) {
        qDebug() << "Invalid JSON format!";
        return;
    }

    QJsonArray jsonArray = document.array();
    for (const QJsonValue &value : jsonArray) {
        if (value.isObject()) {
            QJsonObject obj = value.toObject();

            qDebug() << obj["name"].toString() << " " << obj["name"].toString();
            stockList.append({
                {"name", obj["name"].toString()},
                {"image", obj["image"].toString()}


            });
        }
    }
}
void SearchRecipent::searchStock(const QString &partialInput) {
    QString input = partialInput.toLower();
    for (const QVariantMap &stock : stockList) {
        QString name = stock["name"].toString();
        QString image = stock["image"].toString();

        if (name.toLower().startsWith(input)) {  // Changed from contains() to startsWith()
            emit stockFound(name, image);
        }
    }
}
