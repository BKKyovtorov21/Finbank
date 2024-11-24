#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "register.hpp"
#include "databasemanager.hpp"
#include "login.hpp"
#include "googlegateway.hpp"
#include "dashboard.hpp"
#include "searchrecipent.hpp"
#include "createtransaction.hpp"
#include "stockapiclient.hpp"

int main(int argc, char *argv[])
{
    // Initialize the application
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    DatabaseManager* db = new DatabaseManager();
    db->OpenConnection();

    const QUrl url(u"qrc:/resources/Dashboard.qml"_qs);
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, [url]() {
            qCritical() << "Failed to load QML file:" << url;
            QCoreApplication::exit(-1);
        });
    engine.load(url);
    engine.loadFromModule("Finbank", "LandingPage");

    // C++ objects to be used in QML
    LogIn login;
    Register registercls;
    Dashboard dashboard;
    GoogleGateway googleGateway;
    SearchRecipent searchrecipent;
    CreateTransaction createTransaction;
    StockAPIClient stockAPIClient;

    // Set context properties
    engine.rootContext()->setContextProperty("login", &login);
    engine.rootContext()->setContextProperty("register", &registercls);
    engine.rootContext()->setContextProperty("dashboard", &dashboard);
    engine.rootContext()->setContextProperty("googlegateway", &googleGateway);
    engine.rootContext()->setContextProperty("searchrecipent", &searchrecipent);
    engine.rootContext()->setContextProperty("createtransaction", &createTransaction);
    engine.rootContext()->setContextProperty("stockAPIClient", &stockAPIClient);

    // Start the event loop
    return app.exec();
}
