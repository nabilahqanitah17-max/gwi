#include "ButtonHandler.hpp"
#include "StateManager.hpp"
#include "DataManager.hpp"

#include "fkYAML.hpp"

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QFile>

#include <iostream>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("gwi", "Main");

    QFile file(":/qt/qml/gwi/resources/example.yml");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        std::cerr << "Error: Could not open file from Qt resources!" << std::endl;
        return 1;
    }

    QTextStream in(&file);
    std::string content = in.readAll().toStdString();
    file.close();

    fkyaml::node node = fkyaml::node::deserialize(content);
    std::cout << node << std::endl;

    ButtonHandler buttonHandler;
    StateManager stateManager;
    DataManager dataManager(node);

    engine.rootContext()->setContextProperty("buttonHandler", &buttonHandler);
    engine.rootContext()->setContextProperty("stateManager", &stateManager);
    engine.rootContext()->setContextProperty("dataManager", &dataManager);

    return app.exec();
}
