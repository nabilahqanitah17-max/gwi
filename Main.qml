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
    signal forwardd
    function fun1(argument1){
        console.log("A function fun1()in the main QML file is invoked by dynmic object")
        console.log("Returned parameter from the QML dynamic objects = ", argument1)
    }

    property string latestButton: "Setup"
    property bool sliderVisibility: true

    function updateButton(currentButton) {
        console.log("latest button: " + latestButton + ", Current button: " + currentButton)
        if(latestButton === "Setup") {
            setupButton.palette.button = "Red"
        }
        else if(latestButton === "Run") {
            runButton.palette.button = "Red"
        }
        else if(latestButton === "Analysis") {
            analysisButton.palette.button = "Red"
        }
        else if(latestButton === "Amplification Plot") {
            amplificationPlotButton.palette.button = "Red"
        }
        else if(latestButton === "Standard Curve") {
            standardCurveButton.palette.button = "Red"
        }
        else if(latestButton === "Raw Data") {
            rawDataButton.palette.button = "Red"
        }
        else if(latestButton === "Summary") {
            summaryButton.palette.button = "Red"
        }
        else {
            endButton.palette.button = "Red"
        }



        if(currentButton === "Setup") {
            setupButton.palette.button = "Yellow"
        }
        else if(currentButton === "Run") {
            runButton.palette.button = "Yellow"
        }
        else if(currentButton === "Analysis") {
            analysisButton.palette.button = "Yellow"
        }
        else if(currentButton === "Amplification Plot") {
            amplificationPlotButton.palette.button = "Yellow"
        }
        else if(currentButton === "Standard Curve") {
            standardCurveButton.palette.button = "Yellow"
        }
        else if(currentButton === "Raw Data") {
            rawDataButton.palette.button = "Yellow"
        }
        else if(currentButton === "Summary") {
            summaryButton.palette.button = "Yellow"
        }
        else {
            endButton.palette.button = "Yellow"
        }

        latestButton = currentButton

        if(currentButton == "Setup") {
            sliderVisibility = true
        }
        else {
            sliderVisibility = false
        }
    }

    Loader {
        id: hs
        source: "IntensitySlider.qml"
        // source: ""
    }

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
                    id: setupButton
                    width: 250
                    text: "Setup"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("Setup")
                    }
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    id: runButton
                    width: 250
                    text: "Run"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("Run")
                    }
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    id: analysisButton
                    width: 250
                    text: "Analysis"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("Analysis")
                    }
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    id: amplificationPlotButton
                    width: 250
                    text: "Amplification Plot"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("Amplification Plot")
                    }
                }
            }
            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    id: standardCurveButton
                    width: 250
                    text: "Standard Curve"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("Standard Curve")
                    }
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    id: rawDataButton
                    width: 250
                    text: "Raw Data"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("Raw Data")
                    }
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    id: summaryButton
                    width: 250
                    text: "Summary"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("Summary")
                    }
                }
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredHeight: 60
                Button {
                    id: endButton
                    width: 250
                    text: "End"
                    font.pixelSize: 30
                    palette.button: "red"
                    onClicked: {
                        buttonHandler.handleButtonClick(text);
                        stateManager.changeCurrentState(text);
                        updateButton("End")
                    }
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

            Item {
                Layout.fillHeight: true
                Slider {
                    id: mySlider
                    width: 300
                    value: 50
                    onValueChanged: {
                        console.log("New slider value:", value)
                    }
                    implicitWidth: 100
                    implicitHeight: 50
                    visible: sliderVisibility
                }
            }

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

