cmake_minimum_required(VERSION 3.16)

project(Finbank VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
        set(CMAKE_AUTORCC ON)
        set(CMAKE_AUTOUIC ON)
        #set(CMAKE_OSX_SYSROOT iphonesimulator) # Use `iphonesimulator` for the simulator
        #set(CMAKE_OSX_ARCHITECTURES arm64) # iOS devices typically require arm64 architecture
        #set(CMAKE_XCODE_ATTRIBUTE_ENABLE_BITCODE YES)
       # set(CMAKE_OSX_DEPLOYMENT_TARGET "14.0") # Adjust the version based on your requirements

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick Multimedia NetworkAuth Sql Charts)

qt_standard_project_setup(REQUIRES 6.5)


qt_add_executable(appFinbank
        src/main.cpp
        src/register.hpp src/register.cpp
        src/databasemanager.hpp src/databasemanager.cpp
        src/login.hpp src/login.cpp
        src/googlegateway.hpp src/googlegateway.cpp
        src/dashboard.hpp src/dashboard.cpp
        src/searchrecipent.hpp src/searchrecipent.cpp
        src/createtransaction.hpp src/createtransaction.cpp
        src/stockapiclient.hpp src/stockapiclient.cpp
)
qt_add_qml_module(appFinbank
    URI Finbank
    VERSION 1.0
    QML_FILES
            qml/LandingPage.qml
            qml/SignUp.qml

            qml/TradingDashboard.qml
            qml/Stock.qml
            qml/TransactionsWindow.ui.qml

            qml/SendMoneyWindow.ui.qml
            qml/SelectRecipent.qml
            qml/RecipentDescription.qml
            qml/SignUpWindow_1.ui.qml
            qml/RecipentDescriptionWindow.ui.qml
            qml/TransferType.qml
            qml/SignIn.qml
            qml/Currencies.qml
            qml/TradingMarket.qml
            qml/SelectRecipentWindow.ui.qml
            qml/TradingMarketWindow.ui.qml
            qml/OverviewTransactionWindow.ui.qml
            qml/CurrenciesWindow.ui.qml
            qml/FoundUser.qml
            qml/Dashboard.qml
            qml/Transactions.qml
            qml/SingleTransactionDetail.qml
            qml/TransactionDetailsWindows.ui.qml
            qml/SendMoney.qml
            qml/SignUpWindow.ui.qml
            qml/SelectedRecipent.qml
            qml/TradingDashboardWindow.ui.qml
            qml/OverviewTransaction.qml
            qml/SignUp1.qml
            qml/TransferTypeWindow.ui.qml
        RESOURCES resources/resources.qrc
)

qt_add_ios_ffmpeg_libraries(appFinbank)


# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appFinbank PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appFinbank
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appFinbank
    PRIVATE Qt6::Quick Qt6::Multimedia Qt6::NetworkAuth Qt6::Sql Qt6::Charts
)

include(GNUInstallDirs)
install(TARGETS appFinbank
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
