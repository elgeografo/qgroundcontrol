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

# Descripción del problema de los módulos.

Queremos tener una gestión correcta de módulos, de tal manera que podamos gestionar la capa de presentación, con ficheros en qml de manera independiente.

Para esto lo primero que hemos hecho es crear un fichero de recursos llamado pixswift. y dentro de este hemos metido un registro dentro del qresource con prefijo qml llamado.

     <file alias="pxsw/Controls/qmldir">PIXsrc/QmlControls/pxsw.Controls.qmldir</file>

EN el directorio indicado (PIXsrc/QmlControls) hemos creado un fichero qmldir, siguiendo el ejemplo de qgrounddcontrol. Para ver como está hecho en QGroundCOntrol,
abrir el fichero Resources\qgroundcontrol.qrc en modo testo plano y buscar la linea siguiente.

     <file alias="QGroundControl/Controls/qmldir">src/QmlControls/QGroundControl.Controls.qmldir</file>

Buscamos el fichero QGroundControl.Controls.qmldir que está dentro de la carpeta /src/QmlControls. ahí veremos la sintaxis para crear el
módulo (ver http://doc.qt.io/qt-5/qtqml-modules-qmldir.html). Nosotros hemos hecho lo mismo en PIXsrc/QmlControls, creando un primer botón
de prueba. Hemos intentado aplicarlo en el fichero /PIXsrc/ui/MainWindow/static/pxswMainWindow.qml pero no funciona correctamente.

Si arrancamos la aplicación veremos que se abre ese fichero y funciona correctamente. Pero si descomentamos las tres últimas lineas, vemos
que no va, dando el siguiente error:

     qrc:/qml/PIXsrc/ui/MainWindow/static/pxswMainWindow.qml:23:9: Type PxswButton unavailable
     qrc:///qml/pxsw/Controls/PxswButton.qml: No such file or directory





