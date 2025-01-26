#pragma once

#include <QObject>
#include <QVariant>

class Dashboard : public QObject
{
    Q_OBJECT
public:
    explicit Dashboard(QObject *parent = nullptr);

    Q_INVOKABLE QVariant getDbVariable(const QString& username, const QString& dbVariable);
signals:

private:
};
