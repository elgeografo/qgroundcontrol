import QtQuick 2.0
import QtMultimedia 5.8

Item {
    //anchors.fill: parent


    Rectangle {
        //anchors.fill: parent

        id: page
        width: 480; height: 480
        x: -300
        y:-200

        color: "#000000"
        ColorAnimation on color { to: "#FFFFFF"; duration: 4000 }
/*
        Text {
            id: helloText1
            text: "Parent width"
            y: 50
            x: 50
            //anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
        }

        Text {
            id: helloText
            text: "Hello world1!"
            y: 30
            //anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
        }
        */
        function delay(delayTime, cb) {
            timer = new Timer();
            timer.interval = delayTime;
            timer.repeat = false;
            timer.triggered.connect(cb);
            timer.start();
        }
        Component.onCompleted:{
           /*
            delay(4000, function() {
                        print("And I'm printed after 1 second!")
                        //anim.restart()
                    })*/
            /*
            delay(3000,function(){
                print("And I'm printed after 1 second!")
                anim.restart()
            })
*/
            //anim.restart()
            playMusic.play()
        }
        Timer {
                interval: 3000; running: true; repeat: false
                onTriggered: anim.restart()
            }

        ParallelAnimation {
               id: anim
               NumberAnimation {
                   target: pixIconSvg
                   properties: "width"
                   to: 3000
                   duration: 3000
               }
               NumberAnimation {
                   target: pixIconSvg
                   properties: "height"
                   to: 3000
                   duration: 3000
               }
               /*
               NumberAnimation {
                   target: ufo
                   properties: "x"
                   to: 160
                   duration: root.duration
               }*/
           }

        Audio {
                id: playMusic
                source: "/sounds/thx.mp3"
            }

        Image {
                anchors.centerIn: parent
                id: pixIconSvg
                x: 12; y: 12
                width: 190
                height: 210
                fillMode: Image.clip
                source: "/img/pixswift.svg"

            }
    }

}
