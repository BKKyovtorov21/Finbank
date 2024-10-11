// Copyright (C) 2024 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "autogen/environment.h"
#include "register.hpp"
#include "databasemanager.hpp"
int main(int argc, char *argv[])
{
    set_qt_environment();
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    const QUrl url(mainQmlFile);
    DatabaseManager* db = new DatabaseManager();
    db->OpenConnection();
    QObject::connect(
                &engine, &QQmlApplicationEngine::objectCreated, &app,
                [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    qmlRegisterType<Register>("com.mycompany.register", 1, 0, "Register");
    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");
    engine.load(url);

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
