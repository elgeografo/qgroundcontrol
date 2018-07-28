import QtQuick 2.0
import QtQuick.Controls 1.2
//import "./qml/pxsw/ui/controls/pxswButton.qml"

import QGroundControl.Controls 1.0
import pxsw.Controls 1.0



Item {

        Label{
            text: "Hola Mundo 22"
            x:0
            y:0
        }
        QGCButton {
            text:       qsTr("Select image directory")
            width:      300
            anchors.verticalCenter:   parent.verticalCenter
        }

        //PxswButton{
        //    text: "Hola mundo desde botón"
        //}




}
