#-------------------------------------------------
#
# Project created by QtCreator 2016-09-19T22:25:56
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET      = comtool
TEMPLATE    = app
DESTDIR     = $$PWD/../bin
RC_FILE     = other/main.rc

SOURCES     += main.cpp
HEADERS     += head.h
RESOURCES   += other/main.qrc
CONFIG      += warn_off

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/api
INCLUDEPATH += $$PWD/form
INCLUDEPATH += $$PWD/qextserialport

include ($$PWD/api/api.pri)
include ($$PWD/form/form.pri)
include ($$PWD/qextserialport/qextserialport.pri)

unix {
contains(arma7, DEFINES) {
INCLUDEPATH += /usr/local/openssl-1.0.2m-h3-gcc-4.9.2/include
LIBS += -L/usr/local/openssl-1.0.2m-h3-gcc-4.9.2/lib -lssl -lcrypto
LIBS += -L/usr/local/h3_rootfsv -lXdmcp
}
}

