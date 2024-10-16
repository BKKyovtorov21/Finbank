#pragma once

#include <QObject>


class Dashboard : public QObject
{
    Q_OBJECT
public:
    explicit Dashboard(QObject *parent = nullptr);

signals:

private:
    QString m_username;
};
