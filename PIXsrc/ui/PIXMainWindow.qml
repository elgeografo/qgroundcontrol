/****************************************************************************
 *
 *   (c) 2009-2016 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/


import QtQuick          2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs  1.2

import QGroundControl           1.0
import QGroundControl.Controls  1.0

/// Native QML top level window
Item {
    //anchors.centerIn: parent
    function showSetupView() {
        mainWindowInner.item.showSetupView()
    }

    function attemptWindowClose() {
        mainWindowInner.item.attemptWindowClose()
    }

    function showMessage(message) {
        mainWindowInner.item.showMessage(message)
    }

    Label{
        text: "Hola Mundo"
        x:0
        y:0
    }
    //parent{title:"PixSwift"}

    Loader {
        //anchors.horizontalCenter: parent.horizontalCenter
        anchors.centerIn: parent
        //anchors.fill: parent
        //anchors.centerIn: parent  // see https://qmlbook.github.io/en/ch04/index.html#layout-items
        source:     "PIXSplashScreen.qml"
        Connections {
            //target: mainWindowInner.item

            //onReallyClose: controller.reallyClose()
        }

    }


    /*
    Loader {
        id:             mainWindowInner
        anchors.fill:   parent
        source:         "MainWindowInner.qml"

        Connections {
            target: mainWindowInner.item

            onReallyClose: controller.reallyClose()
        }
    }
    */

}
