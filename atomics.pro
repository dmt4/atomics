#-------------------------------------------------
#
# Project created by QtCreator 2011-08-16T00:52:33
#
#-------------------------------------------------

QT       += core gui widgets sensors

TARGET = atomics
TEMPLATE = app

QMAKE_CXXFLAGS_RELEASE = -Ofast -march=native
QMAKE_LFLAGS_RELEASE = -Wl,-Ofast

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
