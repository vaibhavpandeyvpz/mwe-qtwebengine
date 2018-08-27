#include <QApplication>
#include <QDebug>
#include "mwemainwindow.h"

int main(int argc, char **argv) {
#ifdef QT_DEBUG
    qDebug() << "Qt version" << QT_VERSION_STR;
#endif
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    MWEMainWindow window;
    window.show();
    return QApplication::exec();
}
