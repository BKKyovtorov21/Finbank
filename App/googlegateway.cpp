#include "googlegateway.hpp"
#include <QObject>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QString>
#include <QFile>
#include <QDir>
#include <QUrl>
#include <QOAuthHttpServerReplyHandler>
#include <QDesktopServices>
#include <QDebug>
#include <QNetworkReply>

GoogleGateway::GoogleGateway(QObject *parent) : QObject(parent)
{
    this->google = new QOAuth2AuthorizationCodeFlow(this);
    this->google->setScope("openid email profile https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email");
    connect(this->google, &QOAuth2AuthorizationCodeFlow::authorizeWithBrowser, &QDesktopServices::openUrl);

    // Load OAuth settings from file
    QByteArray val;
    QFile file;
    file.setFileName(QDir::toNativeSeparators("/Users/boyankiovtorov/Desktop/Finbank/App/auth.json"));
    if(file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        val = file.readAll();
        file.close();
    }
    else
    {
        qDebug() << "Failed to open auth.json file!";
        return; // Exit if the file could not be opened
    }

    QJsonDocument document = QJsonDocument::fromJson(val);
    QJsonObject object = document.object();
    const auto settingsObject = object["web"].toObject();
    const QUrl authUri(settingsObject["auth_uri"].toString());
    const auto clientId = settingsObject["client_id"].toString();
    const QUrl tokenUri(settingsObject["token_uri"].toString());
    const auto clientSecret = settingsObject["client_secret"].toString();

    const auto redirectUris = settingsObject["redirect_uris"].toArray();
    const QUrl redirectUri(redirectUris[1].toString());
    const auto port = static_cast<quint16>(redirectUri.port());

    // Log OAuth configuration details
    qDebug() << "Auth URI:" << authUri;
    qDebug() << "Client ID:" << clientId;
    qDebug() << "Token URI:" << tokenUri;
    qDebug() << "Client Secret:" << clientSecret;
    qDebug() << "Redirect URI:" << redirectUri;

    this->google->setAuthorizationUrl(authUri);
    this->google->setClientIdentifier(clientId);
    this->google->setAccessTokenUrl(tokenUri);
    this->google->setClientIdentifierSharedKey(clientSecret);

    auto replyHandler = new QOAuthHttpServerReplyHandler(port, this);
    this->google->setReplyHandler(replyHandler);

    // Connect signals for granted and error before calling grant()
    connect(this->google, &QOAuth2AuthorizationCodeFlow::granted, [this]() {
        qDebug() << "Access Granted!";
        qDebug() << "Access Token:" << this->google->token(); // Log access token

        // Make a request to the Google People API to fetch user info
        QUrl userInfoUrl("https://people.googleapis.com/v1/people/me?personFields=emailAddresses,names,photos");        auto reply = this->google->get(userInfoUrl);

        connect(reply, &QNetworkReply::finished, [reply]() {
            if (reply->error() != QNetworkReply::NoError) {
                qDebug() << "Network error:" << reply->errorString();
                qDebug() << "Response code:" << reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();
                qDebug() << "Response body:" << reply->readAll(); // Log raw response
                qDebug() << "Reply headers:" << reply->rawHeaderPairs(); // Log headers
            } else {
                QByteArray responseData = reply->readAll();
                qDebug() << "Response body:" << responseData; // Log raw body for debugging
                QJsonDocument jsonDoc = QJsonDocument::fromJson(responseData);
                QJsonObject jsonObj = jsonDoc.object();

                // Log parsed user info
                qDebug() << "User Info:";
                qDebug() << "Email:" << jsonObj["email"].toString();
                qDebug() << "Name:" << jsonObj["name"].toString();
                qDebug() << "Picture URL:" << jsonObj["picture"].toString();
            }
            reply->deleteLater();
        });
    });

    connect(this->google, &QOAuth2AuthorizationCodeFlow::error, [](const QString &errorString) {
        qDebug() << "Authorization Error:" << errorString;
    });

    // Now call grant()
    qDebug() << "Initiating OAuth grant...";
    this->google->grant();
}
