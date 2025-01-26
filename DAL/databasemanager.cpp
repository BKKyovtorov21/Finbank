#include "databasemanager.hpp"
#include <QStandardPaths>
#include <QDebug>
#include <QFile>

DatabaseManager::DatabaseManager() {}

QSqlDatabase DatabaseManager::GetDatabase() {
    return m_db;
}

void DatabaseManager::OpenConnection() {
    // Configure the database connection parameters for SQLite
    m_db = QSqlDatabase::addDatabase("QSQLITE");

    // Use QStandardPaths to get the application data location
    QString dbName = "identifier.sqlite";
    QString dbLocation = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    QString fullDbPath = dbLocation + "/" + dbName;

    QDir dbDir(dbLocation);
    if (!dbDir.exists()) {
        if (dbDir.mkpath(dbLocation)) {
            qDebug() << "Created application data directory:" << dbLocation;
        } else {
            qDebug() << "Failed to create application data directory:" << dbLocation;
            return; // Exit if the directory cannot be created
        }
    }

    // Set the SQLite database file location
    m_db.setDatabaseName(fullDbPath);

    // Check if the database file exists in the application data location
    if (!QFile::exists(fullDbPath)) {
        qDebug() << "Database does not exist in AppDataLocation, copying from resources.";

        // Path to the resource database file
        QString resourceDbPath = ":/resources/identifier.sqlite"; // Adjust the path to your resource file

        // Attempt to copy the database from resources to the writable location
        if (QFile::copy(resourceDbPath, fullDbPath)) {
            qDebug() << "Database copied successfully to AppDataLocation.";
            // Set file permissions to writable (necessary for some platforms)
            QFile::setPermissions(fullDbPath, QFileDevice::ReadOwner | QFileDevice::WriteOwner);
        } else {
            qDebug() << "Failed to copy database from resources.";
            return; // Exit if the database cannot be copied
        }
    }

    // Open the database connection and handle success or failure
    if (m_db.open()) {
        qDebug() << "Database opened successfully.";

        // Sample query to verify the database contents
    } else {
        // Handle connection error
        qDebug() << "Database failed to open.";
        qDebug() << m_db.lastError().text();
    }
}

void DatabaseManager::CloseConnection() {
    // Close the database connection
    if (m_db.isOpen()) {
        m_db.close();
        qDebug() << "Database connection closed.";
    } else {
        qDebug() << "Database connection is not open.";
    }
}
