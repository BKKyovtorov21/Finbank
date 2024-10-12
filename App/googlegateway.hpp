#ifndef GOOGLEGATEWAY_H
#define GOOGLEGATEWAY_H

#include <QObject>
#include <QOAuth2AuthorizationCodeFlow>
#include <QNetworkReply>

class GoogleGateway : public QObject
{
    Q_OBJECT
public:
    explicit GoogleGateway(QObject *parent = nullptr);

private:
    QOAuth2AuthorizationCodeFlow* google;
};

#endif // GOOGLEGATEWAY_H
