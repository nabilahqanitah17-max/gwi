import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: summaryPage
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "#f5f6fa"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "📄 Experiment Summary"
                font.pixelSize: 42
                font.bold: true
                color: "#2f3640"
                horizontalAlignment: Text.AlignHCenter
            }

            Rectangle {
                width: 600
                height: 400
                color: "white"
                border.color: "#dcdde1"
                radius: 10

                Column {
                    anchors.fill: parent
                    anchors.margins: 20
                    spacing: 14

                    Row {
                        spacing: 40
                        Text { text: "Parameter"; font.pixelSize: 22; font.bold: true; width: 200 }
                        Text { text: "Value"; font.pixelSize: 22; font.bold: true; width: 300 }
                    }

                    Rectangle { height: 2; color: "#dcdde1"; width: parent.width }

                    Row {
                        spacing: 40
                        Text { text: "Status"; width: 200; font.pixelSize: 18 }
                        Text { text: "✅ Finished"; width: 300; font.pixelSize: 18 }
                    }

                    Row {
                        spacing: 40
                        Text { text: "Total Cycles"; width: 200; font.pixelSize: 18 }
                        Text { text: "30"; width: 300; font.pixelSize: 18 }
                    }

                    Row {
                        spacing: 40
                        Text { text: "Total Time"; width: 200; font.pixelSize: 18 }
                        Text { text: "120 s"; width: 300; font.pixelSize: 18 }
                    }

                    Row {
                        spacing: 40
                        Text { text: "Ct Value"; width: 200; font.pixelSize: 18 }
                        Text { text: "18"; width: 300; font.pixelSize: 18 }
                    }

                    Row {
                        spacing: 40
                        Text { text: "Max Fluorescence"; width: 200; font.pixelSize: 18 }
                        Text { text: "1520 RFU"; width: 300; font.pixelSize: 18 }
                    }

                    Row {
                        spacing: 40
                        Text { text: "Min Fluorescence"; width: 200; font.pixelSize: 18 }
                        Text { text: "100 RFU"; width: 300; font.pixelSize: 18 }
                    }

                    Row {
                        spacing: 40
                        Text { text: "Mean Fluorescence"; width: 200; font.pixelSize: 18 }
                        Text { text: "720 RFU"; width: 300; font.pixelSize: 18 }
                    }

                    Row {
                        spacing: 40
                        Text { text: "Conclusion"; width: 200; font.pixelSize: 18 }
                        Text {
                            text: "Positive Amplification"
                            width: 300
                            color: "#27ae60"
                            font.bold: true
                            font.pixelSize: 18
                        }
                    }
                }
            }
        }
    }
}
