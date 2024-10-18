#pragma once

#include <QObject>


class Dashboard : public QObject
{
    Q_OBJECT
public:
    explicit Dashboard(QObject *parent = nullptr);

    Q_INVOKABLE float getDbVariable(const QString& username, const QString& dbVariable);
signals:

private:
};
