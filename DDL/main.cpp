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
#include <QQuickStyle>
int main(int argc, char *argv[])
{
    // Initialize the application
    QApplication app(argc, argv);
    app.setQuitOnLastWindowClosed(false);
    QQmlApplicationEngine engine;
    QQuickStyle::setStyle("Fusion");

    // Initialize database
    DatabaseManager* db = new DatabaseManager();
    db->OpenConnection();

    // Create objects
    LogIn* login = new LogIn(db);
    Register registercls;
    Dashboard dashboard;
    GoogleGateway googleGateway;
    SearchRecipent searchrecipent;
    CreateTransaction createTransaction;
    StockAPIClient stockAPIClient;

    // Set context properties BEFORE loading QML
    engine.rootContext()->setContextProperty("login", login);
    engine.rootContext()->setContextProperty("register", &registercls);
    engine.rootContext()->setContextProperty("dashboard", &dashboard);
    engine.rootContext()->setContextProperty("googlegateway", &googleGateway);
    engine.rootContext()->setContextProperty("searchrecipent", &searchrecipent);
    engine.rootContext()->setContextProperty("createtransaction", &createTransaction);
    engine.rootContext()->setContextProperty("stockAPIClient", &stockAPIClient);  // ✅ Now available in QML

    // Load QML AFTER setting context properties
    engine.loadFromModule("Finbank", "SignIn");

    // Start event loop
    return app.exec();
}
