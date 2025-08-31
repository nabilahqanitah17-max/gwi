import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    GridLayout {
        anchors.fill: parent
        anchors.margins: 5
        columns: 2

        // --- Column 1 (Index 0) ---
        Text {
            text: "Menu"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 0
        }
        Text {
            text: "Setup"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 1
        }
        Text {
            text: "Run"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 2
        }
        Text {
            text: "Analysis"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 3
        }
        Text {
            text: "Amplification Plot"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 4
        }
        Text {
            text: "Standard Curve"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 5
        }
        Text {
            text: "Row Data"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 6
        }
        Text {
            text: "Summary"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 7
        }
        Text {
            text: "End"
            font.pixelSize: 30
            Layout.column: 0
            Layout.row: 8
        }

        // --- Column 2 (Index 1) ---
        Text {
            text: "Experiment"
            font.pixelSize: 30
            Layout.column: 1
            Layout.row: 0

            // --- Add these two lines ---
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignLeft
        }
    }
}
