#pragma once

#include "fkYAML.hpp"

#include <QObject>
#include <QList>

class DataManager : public QObject
{
    Q_OBJECT
    fkyaml::node m_root;
    QList<int> m_intensityValues;

public:
    DataManager(fkyaml::node& root);

public slots:
    Q_INVOKABLE int getIntensityByIndex(int index);
};
