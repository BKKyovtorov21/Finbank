#include "register.hpp"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>
#include <QRandomGenerator>
#include <QCryptographicHash>
#include <QMessageBox>
#include <QByteArray>

Register::Register(QObject *parent)
    : QObject{parent}
{}

void Register::registerAccount(const QString& username, const QString& email, const QString& password, const QString& firstName, const QString& lastName, const QString& dateOfBirth, const QString& gender, const QString& phone, const bool& isGoogleRegistered, const QString& pfp)
{
    QSqlQuery qry;

    // Check if the username or email is already registered
    qry.prepare("SELECT COUNT(*) FROM users WHERE username = :username OR email = :email");
    qry.bindValue(":username", username);
    qry.bindValue(":email", email);

    if (qry.exec() && qry.next()) {
        int count = qry.value(0).toInt();
        if (count > 0) {
            // Username or email already exists
            QMessageBox::warning(nullptr, "Registration Failed", "The username or email is already registered. Please choose a different one.");
            return;
        }
    } else {
        qDebug() << "Error checking for existing username/email:" << qry.lastError();
        return;
    }

    // Generate unique values for registration
    QString passwordSalt = GenerateSalt();
    QString cardNumber = GenerateCardNumber();
    QString hashedPassword = Hash(password, passwordSalt);
    QString IBAN = GenerateIBAN();

    qry.prepare("INSERT INTO users (username, email, password, first_name, last_name, date_of_birth, gender, phone, passwordSalt, cardNumber, IBAN, googleRegistered, pfp) "
                "VALUES (:username, :email, :password, :first_name, :last_name, :date_of_birth, :gender, :phone, :passwordSalt, :cardNumber, :IBAN, :googleRegistered, :pfp)");
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
    qry.bindValue(":IBAN", IBAN);
    qry.bindValue(":googleRegistered", isGoogleRegistered);
    qry.bindValue(":pfp", pfp);

    if (!qry.exec()) {
        qDebug() << "Error inserting into users table:" << qry.lastError();
    } else {
        QMessageBox::information(nullptr, "Register successful", "Your registration to Finbank was successful");
        emit registerSuccessful();
    }
}

QString Register::GenerateSalt() {
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
        if ((i + 1) % 4 == 0 && i < 15) {
            cardNumber.append(' ');
        }
    }
    return cardNumber.trimmed();
}

QString Register::GenerateIBAN() {
    // Bulgarian IBAN template: BGkkFINBXXXXYYYYYYYYYY
    QString country_code = "BG";
    QString bank_code = "FINB";

    // Generate random account number part (10 digits)
    QString account_number;
    for (int i = 0; i < 10; ++i) {
        account_number.append(QString::number(QRandomGenerator::global()->bounded(0, 10)));
    }

    // Create preliminary IBAN without check digits
    QString IBAN = country_code + "00" + bank_code + account_number;

    // Calculate check digits using MOD-97
    QString IBAN_numeric = IBAN.mid(4) + country_code + "00";
    int check_digits = 98 - (BigIntMod97(IBAN_numeric) % 97);

    // Format the IBAN with the calculated check digits
    IBAN.replace(2, 2, QString::number(check_digits).rightJustified(2, '0'));
    return IBAN;
}

int Register::BigIntMod97(const QString& input) {
    QString temp = input;
    while (temp.size() > 2) {
        int mod = temp.left(9).toInt() % 97;
        temp = QString::number(mod) + temp.mid(9);
    }
    return temp.toInt() % 97;
}
