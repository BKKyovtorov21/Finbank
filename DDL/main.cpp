#include <QApplication>
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
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    DatabaseManager* db = new DatabaseManager();
    db->OpenConnection();


    // Handle object creation failure
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    // Set the QML module and initial page
    engine.loadFromModule("Finbank", "LandingPage");

    // C++ objects to be used in QML
    LogIn* login = new LogIn(db);
    Register registercls;
    Dashboard dashboard;
    GoogleGateway googleGateway;
    SearchRecipent searchrecipent;
    CreateTransaction createTransaction;
    StockAPIClient stockAPIClient;

    // Set context properties
    engine.rootContext()->setContextProperty("login", login);
    engine.rootContext()->setContextProperty("register", &registercls);
    engine.rootContext()->setContextProperty("dashboard", &dashboard);
    engine.rootContext()->setContextProperty("googlegateway", &googleGateway);
    engine.rootContext()->setContextProperty("searchrecipent", &searchrecipent);
    engine.rootContext()->setContextProperty("createtransaction", &createTransaction);
    engine.rootContext()->setContextProperty("stockAPIClient", &stockAPIClient);

    // Start the event loop
    return app.exec();
}
