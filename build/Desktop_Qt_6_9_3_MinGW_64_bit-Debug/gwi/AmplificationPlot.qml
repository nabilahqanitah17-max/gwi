import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import QtCharts

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Amplification Plot"

    ChartView {
        anchors.fill: parent
        antialiasing: true
        title: "Amplification Plot"

        ValueAxis {
            id: xAxis
            min: 0; max: 40
            titleText: "Cycle"
        }

        ValueAxis {
            id: yAxis
            min: 0; max: 1.2
            titleText: "Fluorescence"
        }

        LineSeries {
            name: "Sample 1"
            axisX: xAxis
            axisY: yAxis
            XYPoint { x: 0;  y: 0.05 }
            XYPoint { x: 10; y: 0.08 }
            XYPoint { x: 20; y: 0.35 }
            XYPoint { x: 30; y: 0.95 }
            XYPoint { x: 40; y: 1.0 }
        }
    }
}
