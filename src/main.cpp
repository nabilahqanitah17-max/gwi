#include "ButtonHandler.hpp"
#include "fkYAML.hpp"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QFile>

#include <iostream>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    ButtonHandler myButtonHandler;

    engine.rootContext()->setContextProperty("buttonHandler", &myButtonHandler);

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

    // Read the whole file into a string
    QTextStream in(&file);
    std::string content = in.readAll().toStdString();
    file.close();

    // Now, parse the string content with fkYAML
    auto node = fkyaml::node::deserialize(content);
    std::cout << node << std::endl;

    return app.exec();
}
