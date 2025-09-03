#include "ButtonHandler.hpp"

#include <QString>
#include <QDebug>

void ButtonHandler::handleButtonClick(const QString &buttonName)
{
    qDebug() << "C++ says: The '" << buttonName << "' button was clicked!";
}

void ButtonHandler::savePlotClick()
{
    qDebug() << "Saving Plot";
}
