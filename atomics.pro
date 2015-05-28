#-------------------------------------------------
#
# Project created by QtCreator 2011-08-16T00:52:33
#
#-------------------------------------------------

QT       += core gui

TARGET = atomics
TEMPLATE = app


SOURCES += main.cpp\
        mv.cpp \
    srf.cpp

HEADERS  += mv.h \
    srf.h

CONFIG += mobility
MOBILITY = systeminfo sensors

launcher.files = atomics.desktop
launcher.path = /usr/share/applications


icon.path = /usr/share/themes/base/meegotouch/icons
icon.files = atomics.svg

target.path = /opt/atomics/bin
INSTALLS += target launcher icon
