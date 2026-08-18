import QtQuick

import org.kde.plasma.core as PlasmaCore

Item {
    id: root

    property int stage

    Rectangle {
        anchors.fill: parent
        color: "#000000"
    }

    Item {
        id: content
        anchors.fill: parent
        opacity: 0

        Item {
            id: logoHolder
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height) * 0.22
            height: width

            Image {
                id: cog
                anchors.fill: parent
                source: "images/framework-cog-white.png"
                fillMode: Image.PreserveAspectFit
                smooth: true
                mipmap: true

                // Slow, constant clockwise rotation. No bounce or spinner.
                RotationAnimator on rotation {
                    from: 0
                    to: 360
                    duration: 8000
                    loops: Animation.Infinite
                    running: true
                    easing.type: Easing.Linear
                }
            }
        }
    }

    OpacityAnimator {
        id: introAnimation
        target: content
        from: 0
        to: 1
        duration: PlasmaCore.Units.veryLongDuration
        easing.type: Easing.InOutQuad
        running: false
    }

    OpacityAnimator {
        id: outroAnimation
        target: content
        from: 1
        to: 0
        duration: PlasmaCore.Units.longDuration
        easing.type: Easing.InOutQuad
        running: false
    }

    onStageChanged: {
        if (stage === 2) {
            outroAnimation.stop()
            introAnimation.start()
        } else if (stage === 5) {
            introAnimation.stop()
            outroAnimation.start()
        }
    }

    Component.onCompleted: {
        if (stage === 2)
            introAnimation.start()
    }
}
