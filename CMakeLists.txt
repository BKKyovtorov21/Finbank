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
        DDL/main.cpp
        DDL/register.hpp DDL/register.cpp
        DAL/databasemanager.hpp DAL/databasemanager.cpp
        DDL/login.hpp DDL/login.cpp
        DAL/googlegateway.hpp DAL/googlegateway.cpp
        DDL/dashboard.hpp DDL/dashboard.cpp
        DDL/searchrecipent.hpp DDL/searchrecipent.cpp
        DDL/createtransaction.hpp DDL/createtransaction.cpp
        DAL/stockapiclient.hpp DAL/stockapiclient.cpp
)
qt_add_qml_module(appFinbank
    URI Finbank
    VERSION 1.0
    QML_FILES
            Presentation-Layer/LandingPage.qml


            Presentation-Layer/TradingDashboard.qml
            Presentation-Layer/Stock.qml
            Presentation-Layer/TransactionsWindow.ui.qml

            Presentation-Layer/SendMoneyWindow.ui.qml
            Presentation-Layer/SelectRecipent.qml
            Presentation-Layer/RecipentDescription.qml


            Presentation-Layer/TransferType.qml
            Presentation-Layer/SignIn.qml
            Presentation-Layer/Currencies.qml
            Presentation-Layer/TradingMarket.qml
            Presentation-Layer/SelectRecipentWindow.ui.qml
            Presentation-Layer/TradingMarketWindow.ui.qml

            Presentation-Layer/CurrenciesWindow.ui.qml
            Presentation-Layer/FoundUser.qml
            Presentation-Layer/Dashboard.qml
            Presentation-Layer/Transactions.qml
            Presentation-Layer/SingleTransactionDetail.qml
            Presentation-Layer/TransactionDetailsWindows.ui.qml
            Presentation-Layer/SendMoney.qml

            Presentation-Layer/SelectedRecipent.qml
            Presentation-Layer/TradingDashboardWindow.ui.qml



            Presentation-Layer/SignUp.qml
            Presentation-Layer/SignUp2.qml
        RESOURCES resources/resources.qrc
        QML_FILES Presentation-Layer/Overview.qml
)

qt_add_ios_ffmpeg_libraries(appFinbank)

target_include_directories(appFinbank PRIVATE
    DAL
    DDL
)

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
