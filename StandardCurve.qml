import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Basic
import QtCharts
import "DataManager.js" as DataManager

ColumnLayout {
    property var stdData: DataManager.getStandardCurveData()

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
            title: "Standard Curve"
            anchors.fill: parent
            antialiasing: true

            ValueAxis {
                id: xAxis
                titleText: "log10(Starting Quantity)"
                min: 0
                max: 4
                tickCount: 5
            }

            ValueAxis {
                id: yAxis
                titleText: "Ct (Cycle Threshold)"
                min: 15
                max: 40
                tickCount: 6
            }

            LineSeries {
                name: "Standard Curve"
                axisX: xAxis
                axisY: yAxis
                pointsVisible: true

                // Titik-titik data, log10(sq) untuk x
                XYPoint { x: stdData.length > 0 ? Math.log10(stdData[0].sq) : 0; y: stdData.length > 0 ? stdData[0].ct : 0 }
                XYPoint { x: stdData.length > 1 ? Math.log10(stdData[1].sq) : 0; y: stdData.length > 1 ? stdData[1].ct : 0 }
                XYPoint { x: stdData.length > 2 ? Math.log10(stdData[2].sq) : 0; y: stdData.length > 2 ? stdData[2].ct : 0 }
                XYPoint { x: stdData.length > 3 ? Math.log10(stdData[3].sq) : 0; y: stdData.length > 3 ? stdData[3].ct : 0 }
                XYPoint { x: stdData.length > 4 ? Math.log10(stdData[4].sq) : 0; y: stdData.length > 4 ? stdData[4].ct : 0 }
            }

        }
    }
}

