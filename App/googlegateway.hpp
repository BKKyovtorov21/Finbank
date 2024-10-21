#ifndef GOOGLEGATEWAY_H
#define GOOGLEGATEWAY_H

#include <QObject>
#include <QOAuth2AuthorizationCodeFlow>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QUrl>
#include <QUrlQuery>
#include <QOAuthHttpServerReplyHandler>
#include <QDesktopServices>
#include <QJsonDocument>
#include <QJsonObject>
class GoogleGateway : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ userName NOTIFY googleLoginSuccessful)
    Q_PROPERTY(QString userEmail READ userEmail NOTIFY googleLoginSuccessful)
    Q_PROPERTY(QString userFirstName READ userFirstName NOTIFY googleLoginSuccessful)
    Q_PROPERTY(QString userLastName READ userLastName NOTIFY googleLoginSuccessful)

public:
    explicit GoogleGateway(QObject *parent = nullptr);

    Q_INVOKABLE void click();

    QString userName() const { return m_userName; }
    QString userEmail() const { return m_userEmail; }
    QString userFirstName() const { return m_userFirstName; }
    QString userLastName() const { return m_userLastName; }

private:
    QOAuth2AuthorizationCodeFlow* google;
    QString m_userName;
    QString m_userEmail;
    QString m_userFirstName;
    QString m_userLastName;

signals:
    void googleLoginSuccessful();
};

#endif // GOOGLEGATEWAY_H
