#include "googlegateway.hpp"
#include <QNetworkAccessManager>
#include <QNetworkRequest>

GoogleGateway::GoogleGateway(QObject *parent) : QObject(parent)
{
    this->google = new QOAuth2AuthorizationCodeFlow(this);

    // Set Scope or Permissions required from Google
    this->google->setScope("email profile openid https://www.googleapis.com/auth/drive.readonly");

    connect(this->google, &QOAuth2AuthorizationCodeFlow::authorizeWithBrowser, [=](QUrl url) {
        QUrlQuery query(url);
        query.addQueryItem("prompt", "consent");      // Param required to get data every time
        query.addQueryItem("access_type", "offline"); // Needed for Refresh Token (as AccessToken expires shortly)
        url.setQuery(query);
        QDesktopServices::openUrl(url);
    });

    // OAuth URLs and Client Identifier (from Google Console)
    this->google->setAuthorizationUrl(QUrl("https://accounts.google.com/o/oauth2/auth"));
    this->google->setAccessTokenUrl(QUrl("https://oauth2.googleapis.com/token"));
    this->google->setClientIdentifier("147188458104-kr1c7m57b191u2v0m5nfnprak3e77rip.apps.googleusercontent.com");
    this->google->setClientIdentifierSharedKey("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");

    auto replyHandler = new QOAuthHttpServerReplyHandler(5476, this);
    this->google->setReplyHandler(replyHandler);

    connect(this->google, &QOAuth2AuthorizationCodeFlow::granted, [=]() {
        // Using QNetworkAccessManager instead of deprecated get method
        QNetworkAccessManager *networkManager = new QNetworkAccessManager(this);
        QUrl userInfoUrl("https://www.googleapis.com/oauth2/v3/userinfo");
        QNetworkRequest request(userInfoUrl);

        auto reply = networkManager->get(request);

        connect(reply, &QNetworkReply::finished, [reply, this]() {
            if (reply->error() == QNetworkReply::NoError) {
                QByteArray response = reply->readAll();
                QJsonDocument jsonDoc = QJsonDocument::fromJson(response);
                QJsonObject jsonObj = jsonDoc.object();
                m_userEmail = jsonObj["email"].toString();
                m_userFirstName = jsonObj["given_name"].toString();
                m_userLastName = jsonObj["family_name"].toString();
                m_userName = m_userEmail.split('@').first();
                emit googleLoginSuccessful();
            } else {
                qDebug() << "Error fetching user info: " << reply->errorString();
            }
            reply->deleteLater();
        });
    });
}

// Call this function to prompt authentication
// and receive data from Google

void GoogleGateway::click()
{
    this->google->grant();
}
