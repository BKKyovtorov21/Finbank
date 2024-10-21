#include "register.hpp"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>
#include <QRandomGenerator>
#include <QCryptographicHash>
#include <QMessageBox>
Register::Register(QObject *parent)
    : QObject{parent}
{}

void Register::registerAccount(const QString& username, const QString& email, const QString& password, const QString& firstName, const QString& lastName, const QString& dateOfBirth, const QString& gender, const QString& phone)
{

    QString passwordSalt = GenerateSalt();
    QString cardNumber = GenerateCardNumber();
    QString hashedPassword = Hash(password, passwordSalt);
    QSqlQuery qry;
    qry.prepare("INSERT INTO users (username, email, password, first_name, last_name, date_of_birth, gender, phone, passwordSalt, cardNumber) "
                "VALUES (:username, :email, :password, :first_name, :last_name, :date_of_birth, :gender, :phone, :passwordSalt, :cardNumber)");

    qry.bindValue(":username", username);
    qry.bindValue(":email", email);
    qry.bindValue(":password", hashedPassword);
    qry.bindValue(":first_name", firstName);
    qry.bindValue(":last_name", lastName);
    qry.bindValue(":date_of_birth", dateOfBirth);
    qry.bindValue(":gender", gender);
    qry.bindValue(":phone", phone);
    qry.bindValue(":passwordSalt", passwordSalt);
    qry.bindValue(":cardNumber", cardNumber);

    if (!qry.exec()) {
        qDebug() << "Error inserting into users table:" << qry.lastError();
    }
    else
    {
        QMessageBox::information(nullptr, "Register successful", "Your registration to Finkbank was successful");
        emit registerSuccessful();
    }
}


QString Register::GenerateSalt() {
    // Generate a random salt
    QByteArray salt;
    for (int i = 0; i < 16; ++i) {
        salt.append(QRandomGenerator::global()->generate());
    }
    return salt.toHex();
}

QString Register::Hash(const QString& password, const QString& salt) {
    QByteArray passwordWithSalt = (password + salt).toUtf8();
    QByteArray hashedPassword = QCryptographicHash::hash(passwordWithSalt, QCryptographicHash::Sha256);
    return hashedPassword.toHex();
}


QString Register::GenerateCardNumber() {
    QString cardNumber;
    for (int i = 0; i < 16; ++i) {
        cardNumber.append(QString::number(QRandomGenerator::global()->bounded(0, 10))); // Generate digits from 0-9
        if ((i + 1) % 4 == 0 && i < 15) { // Add a space after every 4 digits except the last group
            cardNumber.append(' ');
        }
    }
    return cardNumber.trimmed(); // Trim any trailing space
}
