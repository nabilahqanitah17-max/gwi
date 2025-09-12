import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

    Slider {
        id: mySlider
        width: 300
        value: 50
        onValueChanged: {
            console.log("New slider value:", parseInt(value * 100))
        }
        implicitWidth: 100
        implicitHeight: 50
        visible: sliderVisibility
    }
