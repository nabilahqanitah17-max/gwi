import QtQuick 2.15
import QtQuick.Controls 2.15
import "DataManager.js" as DataManager

Item {
    width: parent.width
    height: parent.height

    property string scaleType: "linear"
    property color lineColor: "red"
    property var dataPoints: DataManager.getAmplificationData()   // ✅ ambil dari DataManager.js

    Column {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            ComboBox {
                id: scaleSelector
                model: ["Linear", "Log"]
                currentIndex: 0
                onCurrentTextChanged: {
                    scaleType = currentText.toLowerCase()
                    chartCanvas.requestPaint()
                }
            }

            ComboBox {
                id: colorSelector
                model: ["Red", "Blue", "Green", "Orange", "Purple"]
                currentIndex: 0
                onCurrentTextChanged: {
                    switch(currentText) {
                        case "Red": lineColor = "red"; break;
                        case "Blue": lineColor = "blue"; break;
                        case "Green": lineColor = "green"; break;
                        case "Orange": lineColor = "orange"; break;
                        case "Purple": lineColor = "purple"; break;
                    }
                    chartCanvas.requestPaint()
                }
            }
        }

        Canvas {
            id: chartCanvas
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: parent.height - 80
            anchors.margins: 20

            onPaint: {
                var ctx = getContext("2d");
                ctx.reset();

                var left = 120, top = 80, right = width-60, bottom = height-60;

                ctx.fillStyle = "#ffffff";
                ctx.fillRect(0, 0, width, height);

                // Axes
                ctx.strokeStyle = "#000000";
                ctx.lineWidth = 3;
                ctx.beginPath();
                ctx.moveTo(left, top);
                ctx.lineTo(left, bottom);
                ctx.lineTo(right, bottom);
                ctx.stroke();

                // Tick X
                ctx.font = "32px Sans";
                ctx.fillStyle = "#000000";
                ctx.textAlign = "center";
                for(var i=0; i<=40; i+=5){
                    var px = left + (i/40)*(right-left);
                    var py = bottom;
                    ctx.beginPath();
                    ctx.moveTo(px, py);
                    ctx.lineTo(px, py+12);
                    ctx.stroke();
                    ctx.fillText(i.toString(), px, py+35);
                }

                // Tick Y
                ctx.textAlign = "right";
                ctx.font = "32px Sans";
                var yMax = Math.max.apply(Math, dataPoints.map(function(o){ return o.y; }));  // ✅ otomatis
                for(var y=0; y<=yMax; y+=200){
                    var py;
                    if(scaleType === "log") {
                        py = bottom - Math.log10(y + 1)/Math.log10(yMax + 1)*(bottom-top);
                    } else {
                        py = bottom - (y/yMax)*(bottom-top);
                    }
                    ctx.beginPath();
                    ctx.moveTo(left, py);
                    ctx.lineTo(left-12, py);
                    ctx.stroke();
                    ctx.fillText(y.toString(), left-20, py+10);
                }

                // Axis titles
                ctx.font = "50px Sans";
                ctx.textAlign = "center";
                ctx.fillText("Cycle Number", (left+right)/2, height-10);
                ctx.save();
                ctx.translate(50, (top+bottom)/2);
                ctx.rotate(-Math.PI/2);
                ctx.fillText("Fluorescence Intensity", 0, 0);
                ctx.restore();

                // Line plot
                ctx.strokeStyle = lineColor;
                ctx.lineWidth = 4;
                ctx.beginPath();
                for(var i=0;i<dataPoints.length;i++){
                    var px = left + (dataPoints[i].x/40)*(right-left);
                    var py;
                    if(scaleType === "log") {
                        py = bottom - Math.log10(dataPoints[i].y+1)/Math.log10(yMax+1)*(bottom-top);
                    } else {
                        py = bottom - (dataPoints[i].y/yMax)*(bottom-top);
                    }
                    if(i===0) ctx.moveTo(px, py); else ctx.lineTo(px, py);
                }
                ctx.stroke();
            }

            Component.onCompleted: requestPaint()
        }
    }
}

