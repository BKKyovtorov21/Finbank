#include "databasemanager.hpp"

DatabaseManager::DatabaseManager() {

}

QSqlDatabase DatabaseManager::GetDatabase() {
    return m_db;
}

void DatabaseManager::OpenConnection() {
    // Configure the database connection parameters for SQLite
    m_db = QSqlDatabase::addDatabase("QSQLITE");

    // Set the SQLite database file location (ensure the path is correct)
    m_db.setDatabaseName("/Users/boyankiovtorov/Desktop/Finbank/resources/Finbank.db");

    // Open the database connection and handle success or failure
    if (m_db.open() && m_db.isOpen()) {
        qDebug() << "Database opened successfully";
    } else {
        // Handle connection error
        qDebug() << "Database failed to open";
        qDebug() << m_db.lastError().text();
    }
}

void DatabaseManager::CloseConnection() {
    // Close the database connection
    m_db.close();
}
