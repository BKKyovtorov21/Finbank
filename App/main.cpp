#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "autogen/environment.h"
#include "register.hpp"
#include "databasemanager.hpp"
#include "login.hpp"
#include "googlegateway.hpp"
#include "dashboard.hpp"
int main(int argc, char *argv[])
{
    set_qt_environment();  // Set up the Qt environment variables

    QApplication app(argc, argv);
    QQmlApplicationEngine engine;

    // Initialize and connect the database
    DatabaseManager* db = new DatabaseManager();
    db->OpenConnection();

    // Register C++ types with QML
    qmlRegisterType<Register>("com.mycompany.register", 1, 0, "Register");
    qmlRegisterType<LogIn>("com.mycompany.login", 1, 0, "LogIn");
    qmlRegisterType<GoogleGateway>("com.mycompany.googlegateway", 1, 0, "GoogleGateway");
    qmlRegisterType<Dashboard>("com.mycompany.dashboard", 1, 0, "DashboardClass");

    // Set up import paths for QML
    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");


    // Create LogIn object and pass engine to it
    LogIn login;
    engine.rootContext()->setContextProperty("login", &login);

    // Define the URL of the main QML file
    const QUrl url(mainQmlFile);

    // Load the QML file
    engine.load(url);

    // Ensure the application exits if the QML file fails to load
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);

    // Check if the QML root objects were loaded correctly
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
