import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic

Window {
    id: window
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")
    RowLayout {
        anchors.fill: parent
        ColumnLayout {
            Layout.alignment: Qt.AlignTop
            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredWidth: 250
                Layout.preferredHeight: 80
                Text {
                    anchors.fill: parent
                    font.pixelSize: 30
                    text: "Menu"
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 10
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "Setup"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "Run"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "Analysis"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "Amplification Plot"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }
            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "Standard Curve"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "Raw Data"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "Summary"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    width: 250
                    text: "End"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: buttonHandler.handleButtonClick(text)
                }
            }
        }

        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 80
                Layout.leftMargin: 10
                Layout.bottomMargin: 10
                Text {
                    text: "Experiment"
                    font.pixelSize: 30
                }
            }

            Item { Layout.fillHeight: true }

            Button {
                text: "Save Plot"
                font.pixelSize: 30
                Layout.preferredHeight: 50
                Layout.preferredWidth: 150
                Layout.leftMargin: 10
                Layout.bottomMargin: 10
                palette.button: "lightblue"
                onClicked: buttonHandler.savePlotClick()
            }
        }
    }
}

