import QtQuick
import QtQuick.Controls
import QtCharts 2.4

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Test Amplification"

    ChartView {
        anchors.fill: parent
        antialiasing: true

        ValueAxis { id: xAxis; min: 0; max: 40; titleText: "Cycle" }
        ValueAxis { id: yAxis; min: 0; max: 1.2; titleText: "Fluorescence" }

        axes: [xAxis, yAxis]   // wajib
        LineSeries {
            axisX: xAxis
            axisY: yAxis
            Component.onCompleted: {
                append(0,0.05)
                append(10,0.12)
                append(20,0.35)
                append(30,0.95)
                append(40,1.0)
            }
        }
    }
}
