import QtQuick 2.0

Rectangle {
    id:idRect
    signal buttonClicked()
    width: 80;
    height: 50;
    color: "red";
    x:10;
    y:100
    property string fromCallee:'This value is send signal argument'
    signal send(string pass);
    MouseArea {
                  id: leftMouseArea
                  anchors.fill: parent
                  onClicked:idRect.buttonClicked()
              }
     Component.onCompleted:{
        forwardd.connect(fun2);
        send.connect(fun1);
        send(fromCallee);
     }
      function fun2(){
          console.log('signal received at dynamic object')
          console.log("value of main qml property 'count'="+count)
      }


      Item {
          id: root

          // --- PUBLIC PROPERTIES ---
          // The minimum value of the slider.
          property real minimumValue: 0.0
          // The maximum value of the slider.
          property real maximumValue: 1.0
          // The current value of the slider.
          property real value: 0.5

          // --- SIGNALS ---
          // This signal is emitted when the slider's value changes.
          signal valueChanged(real value)

          // Set default component size
          width: 200
          height: 30

          // --- INTERNAL LOGIC ---
          // Calculates the percentage of the slider's progress (0.0 to 1.0)
          readonly property real __progress: (root.value - root.minimumValue) / (root.maximumValue - root.minimumValue)

          // --- UI COMPONENTS ---

          // 1. The main track of the slider
          Rectangle {
              id: track
              anchors.left: parent.left
              anchors.right: parent.right
              anchors.verticalCenter: parent.verticalCenter
              height: 6
              radius: 3
              color: "#e0e0e0" // A light grey for the inactive track

              // 2. The filled portion of the track showing the current value
              Rectangle {
                  id: filledTrack
                  width: track.width * __progress
                  height: track.height
                  radius: track.radius
                  color: "#4285F4" // Google Blue
              }
          }

          // 3. The handle that the user can drag
          Rectangle {
              id: handle
              width: 24
              height: 24
              radius: 12 // Makes it a circle
              color: "#4285F4" // Google Blue
              border.color: "#ffffff"
              border.width: 2
              anchors.verticalCenter: track.verticalCenter

              // Position the handle based on the current value
              x: (track.width - width) * __progress

              // 4. The area that captures mouse input for dragging
              MouseArea {
                  anchors.fill: parent
                  drag.target: handle
                  drag.axis: Drag.XAxis
                  drag.minimumX: 0
                  drag.maximumX: track.width - handle.width

                  // When the handle is dragged, update the component's value
                  onPositionChanged: {
                      if (drag.active) {
                          // Calculate the new progress based on handle position
                          let newProgress = handle.x / (track.width - handle.width);
                          // Calculate the new value
                          let newValue = root.minimumValue + newProgress * (root.maximumValue - root.minimumValue);

                          // Update the value only if it has changed to avoid unnecessary signal emissions
                          if (root.value.toFixed(4) !== newValue.toFixed(4)) {
                              root.value = newValue;
                              root.valueChanged(root.value);
                          }
                      }
                  }
              }
          }
      }

}
