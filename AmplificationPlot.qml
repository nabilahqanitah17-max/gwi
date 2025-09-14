import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

import QtCharts

ColumnLayout {
    Rectangle {
        height: 100
        color: "red"

        border.width: 3
        border.color: "black"

        Layout.preferredWidth: 700
    }

    Rectangle {
        Layout.preferredHeight: 340
        Layout.preferredWidth: 700

        border.width: 3
        border.color: "black"

        ChartView {
            title: "Line Chart"
            anchors.fill: parent
            antialiasing: true

            LineSeries {
                name: "Line"

                // Because dataManager object is being destroyed
                // before the QML engine finishes destroying the ChartView and LineSeries.
                // Assign y value to 0 as a fallback
                XYPoint {
                    x: 0;
                    y: dataManager ? dataManager.getIntensityByIndex(0) : 0
                }
                XYPoint {
                    x: 1;
                    y: dataManager ? dataManager.getIntensityByIndex(1) : 0
                }
                XYPoint {
                    x: 2;
                    y: dataManager ? dataManager.getIntensityByIndex(2) : 0
                }
                XYPoint {
                    x: 3;
                    y: dataManager ? dataManager.getIntensityByIndex(3) : 0
                }
                XYPoint {
                    x: 4;
                    y: dataManager ? dataManager.getIntensityByIndex(4) : 0
                }
                XYPoint {
                    x: 5;
                    y: dataManager ? dataManager.getIntensityByIndex(5) : 0
                }
                XYPoint {
                    x: 6;
                    y: dataManager ? dataManager.getIntensityByIndex(6) : 0
                }
                XYPoint {
                    x: 7;
                    y: dataManager ? dataManager.getIntensityByIndex(7) : 0
                }
                XYPoint {
                    x: 8;
                    y: dataManager ? dataManager.getIntensityByIndex(8) : 0
                }
                XYPoint {
                    x: 9;
                    y: dataManager ? dataManager.getIntensityByIndex(9) : 0
                }
                XYPoint {
                    x: 10;
                    y: dataManager ? dataManager.getIntensityByIndex(10) : 0
                }
                XYPoint {
                    x: 11;
                    y: dataManager ? dataManager.getIntensityByIndex(11) : 0
                }
                XYPoint {
                    x: 12;
                    y: dataManager ? dataManager.getIntensityByIndex(12) : 0
                }
                XYPoint {
                    x: 13;
                    y: dataManager ? dataManager.getIntensityByIndex(13) : 0
                }
                XYPoint {
                    x: 14;
                    y: dataManager ? dataManager.getIntensityByIndex(14) : 0
                }
                XYPoint {
                    x: 15;
                    y: dataManager ? dataManager.getIntensityByIndex(15) : 0
                }
                XYPoint {
                    x: 16;
                    y: dataManager ? dataManager.getIntensityByIndex(16) : 0
                }
                XYPoint {
                    x: 17;
                    y: dataManager ? dataManager.getIntensityByIndex(17) : 0
                }
                XYPoint {
                    x: 18;
                    y: dataManager ? dataManager.getIntensityByIndex(18) : 0
                }
                XYPoint {
                    x: 19;
                    y: dataManager ? dataManager.getIntensityByIndex(19) : 0
                }
                XYPoint {
                    x: 20;
                    y: dataManager ? dataManager.getIntensityByIndex(20) : 0
                }
                XYPoint {
                    x: 21;
                    y: dataManager ? dataManager.getIntensityByIndex(21) : 0
                }
                XYPoint {
                    x: 22;
                    y: dataManager ? dataManager.getIntensityByIndex(22) : 0
                }
                XYPoint {
                    x: 23;
                    y: dataManager ? dataManager.getIntensityByIndex(23) : 0
                }
                XYPoint {
                    x: 24;
                    y: dataManager ? dataManager.getIntensityByIndex(24) : 0
                }
                XYPoint {
                    x: 25;
                    y: dataManager ? dataManager.getIntensityByIndex(25) : 0
                }
                XYPoint {
                    x: 26;
                    y: dataManager ? dataManager.getIntensityByIndex(26) : 0
                }
                XYPoint {
                    x: 27;
                    y: dataManager ? dataManager.getIntensityByIndex(27) : 0
                }
                XYPoint {
                    x: 28;
                    y: dataManager ? dataManager.getIntensityByIndex(28) : 0
                }
                XYPoint {
                    x: 29;
                    y: dataManager ? dataManager.getIntensityByIndex(29) : 0
                }
                XYPoint {
                    x: 30;
                    y: dataManager ? dataManager.getIntensityByIndex(30) : 0
                }
            }
        }
    }

}
