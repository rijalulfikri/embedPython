#-------------------------------------------------
#
# Project created by QtCreator 2015-09-15T20:24:00
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = embedPython
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    pyrun.cpp

HEADERS  += mainwindow.h \
    pyrun.h

FORMS    += mainwindow.ui

#INCLUDEPATH += /usr/include/python3.4m
INCLUDEPATH += /usr/local/Cellar/python3/3.6.4/Frameworks/Python.framework/Versions/3.6/include/python3.6m

#LIBS += -L/usr/lib/x86_64-linux-gnu

#LIBS += -Wl,-Bstatic -lpython3.4m -Wl,-Bdynamic  #-Bstatic tidak berlaku untuk MacOSX!!!
LIBS += -L/usr/local/Cellar/python3/3.6.4/Frameworks/Python.framework/Versions/3.6/lib   #Tanpa ini akan ada pesan ld: library not found for -lpython3.6m
LIBS += -lpython3.6m  #Tanpa ini akan ada error: Undefined symbols for architecture x86_64:
#LIBS += -lz -lexpat -ldl -lutil # Ini sepertinya tidak diperlukan!

RESOURCES += \
    embedPython.qrc
