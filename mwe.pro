TEMPLATE = app

TARGET = mwe

CONFIG += c++11

QT += core gui widgets webenginewidgets

HEADERS += src/mwemainwindow.h

SOURCES += src/main.cpp \
    src/mwemainwindow.cpp

OTHER_FILES += \
    misc/mwe.desktop \
    build-linux.sh

unix {
    isEmpty(PREFIX) {
        PREFIX = /usr/local
    }

    target.path = $$PREFIX/bin

    icons.files += misc/mwe.png
    icons.path = $$PREFIX/share/pixmaps/

    shortcut.files = misc/mwe.desktop
    shortcut.path = $$PREFIX/share/applications/

    INSTALLS += target icons shortcut
}
