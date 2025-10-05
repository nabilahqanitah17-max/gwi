import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import QtCharts

import "DataManager.js" as DataManager

ColumnLayout {
    property var ampData: DataManager.getAmplificationData() // ambil data dari DataManager

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

                XYPoint { x: 0; y: ampData.length > 0 ? ampData[0].y : 0 }
                XYPoint { x: 1; y: ampData.length > 1 ? ampData[1].y : 0 }
                XYPoint { x: 2; y: ampData.length > 2 ? ampData[2].y : 0 }
                XYPoint { x: 3; y: ampData.length > 3 ? ampData[3].y : 0 }
                XYPoint { x: 4; y: ampData.length > 4 ? ampData[4].y : 0 }
                XYPoint { x: 5; y: ampData.length > 5 ? ampData[5].y : 0 }
                XYPoint { x: 6; y: ampData.length > 6 ? ampData[6].y : 0 }
                XYPoint { x: 7; y: ampData.length > 7 ? ampData[7].y : 0 }
                XYPoint { x: 8; y: ampData.length > 8 ? ampData[8].y : 0 }
                XYPoint { x: 9; y: ampData.length > 9 ? ampData[9].y : 0 }
                XYPoint { x: 10; y: ampData.length > 10 ? ampData[10].y : 0 }
                XYPoint { x: 11; y: ampData.length > 11 ? ampData[11].y : 0 }
                XYPoint { x: 12; y: ampData.length > 12 ? ampData[12].y : 0 }
                XYPoint { x: 13; y: ampData.length > 13 ? ampData[13].y : 0 }
                XYPoint { x: 14; y: ampData.length > 14 ? ampData[14].y : 0 }
                XYPoint { x: 15; y: ampData.length > 15 ? ampData[15].y : 0 }
                XYPoint { x: 16; y: ampData.length > 16 ? ampData[16].y : 0 }
                XYPoint { x: 17; y: ampData.length > 17 ? ampData[17].y : 0 }
                XYPoint { x: 18; y: ampData.length > 18 ? ampData[18].y : 0 }
                XYPoint { x: 19; y: ampData.length > 19 ? ampData[19].y : 0 }
                XYPoint { x: 20; y: ampData.length > 20 ? ampData[20].y : 0 }
                XYPoint { x: 21; y: ampData.length > 21 ? ampData[21].y : 0 }
                XYPoint { x: 22; y: ampData.length > 22 ? ampData[22].y : 0 }
                XYPoint { x: 23; y: ampData.length > 23 ? ampData[23].y : 0 }
                XYPoint { x: 24; y: ampData.length > 24 ? ampData[24].y : 0 }
                XYPoint { x: 25; y: ampData.length > 25 ? ampData[25].y : 0 }
                XYPoint { x: 26; y: ampData.length > 26 ? ampData[26].y : 0 }
                XYPoint { x: 27; y: ampData.length > 27 ? ampData[27].y : 0 }
                XYPoint { x: 28; y: ampData.length > 28 ? ampData[28].y : 0 }
                XYPoint { x: 29; y: ampData.length > 29 ? ampData[29].y : 0 }
                XYPoint { x: 30; y: ampData.length > 30 ? ampData[30].y : 0 }
            }
        }
    }
}
