import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: window
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")
    RowLayout {
        anchors.fill: parent
        spacing: 0
        ColumnLayout {
            Layout.alignment: Qt.AlignTop
            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Menu"
                    font.pixelSize: 30
                }
            }


            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Setup"
                    font.pixelSize: 30
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Run"
                    font.pixelSize: 30
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Analysis"
                    font.pixelSize: 30
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Amplification Plot"
                    font.pixelSize: 30
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Standard Curve"
                    font.pixelSize: 30
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Raw Data"
                    font.pixelSize: 30
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "Summary"
                    font.pixelSize: 30
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                color: "red"
                Layout.preferredWidth: 250
                Layout.preferredHeight: 50
                Text {
                    text: "End"
                    font.pixelSize: 30
                }
            }
        }
        ColumnLayout {
            Layout.alignment: Qt.AlignTop
            Rectangle {
                Layout.preferredWidth: 250
                Text {
                    text: "Experiment"
                    font.pixelSize: 30
                }
            }
        }
    }
}
