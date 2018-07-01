# cambio de arranque de interfaz de usuario

En este fichero

     /media/luis/data/lim/projects/qgroundcontrol/src/ui/MainWindow.cc

Buscamos la siguiente linea

    //_mainQmlWidgetHolder->setSource(QUrl::fromUserInput("qrc:qml/MainWindowHybrid.qml"));

La comentamos y debajo ponemos esta

_mainQmlWidgetHolder->setSource(QUrl::fromUserInput("qrc:qml/PIXMainWindow.qml"));

Al final del fichero qgroundcontrol.pro añadimos

      RESOURCES += \
           pixswift.qrc

Dentro de la carpeta Resources hemos creado pixswift.qrc y el resto es autoexplicativo

Problema. Solo con esto cuando le demos a cerrar al programa, se quedará pillado. Si estamos en ubuntu escribir

     sudo pkill -9 -f qgroundcontrol

Enlace del fork:
https://github.com/elgeografo/qgroundcontrol.git
