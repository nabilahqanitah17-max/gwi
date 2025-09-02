#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QObject>
#include <QDebug>

class ButtonHandler : public QObject
{
    Q_OBJECT

public slots:
    void handleButtonClick(const QString &buttonName) {
        qDebug() << "C++ says: The '" << buttonName << "' button was clicked!";
    }
};

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

    return app.exec();
}

#include "main.moc"
