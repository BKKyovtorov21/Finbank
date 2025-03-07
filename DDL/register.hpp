#pragma once

#include <QObject>

class Register : public QObject
{
    Q_OBJECT
public:
    explicit Register(QObject *parent = nullptr);

    Q_INVOKABLE void registerAccount(const QString& username, const QString& email, const QString& password, const QString& firstName, const QString& lastName, const QString& dateOfBirth, const QString& gender, const QString& phone, const bool& isGoogleRegistered, const QString& pfp);


signals:
    void registerSuccessful();
private:
    QString Hash(const QString& password, const QString& salt);
    QString GenerateSalt();
    QString GenerateCardNumber();
    QString GenerateIBAN();
    int BigIntMod97(const QString& input);

};
