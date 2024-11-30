#pragma once

#include <QObject>
#include <QSqlQuery>
#include <QSqlError>
#include <QQuickView>
#include <QQmlContext>
#include <QQuickItem>
#include <QQmlEngine>
class SearchRecipent : public QObject
{
    Q_OBJECT
public:
    explicit SearchRecipent(QObject *parent = nullptr);

    Q_INVOKABLE void SearchUser(const QString& partialInput);

private:
    QSqlQuery m_qry;

signals:
    void userFound(const QString &firstname, const QString &lastname, const QString &email, const QString &username, const QString& pfp);  // Signal with parameters
};

