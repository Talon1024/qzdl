######################################################################
# Automatically generated by qmake (3.0) Thu Dec 15 03:07:03 2016
######################################################################

QT += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app
TARGET = qzdl
INCLUDEPATH += . include

# Input
HEADERS += include/libwad.h \
           include/ZAttribute.h \
           include/ZDLAboutDialog.h \
           include/ZDLAdvancedMultiplayerDialog.h \
           include/zdlcommon.h \
           include/zdlconf.hpp \
           include/ZDLConfiguration.h \
           include/ZDLConfigurationEvents.h \
           include/ZDLConfigurationManager.h \
           include/ZDLDMFlagCheckbox.h \
           include/ZDLDMFlagManager.h \
           include/ZDLFileAssociations.h \
           include/ZDLFileList.h \
           include/ZDLFileListable.h \
           include/ZDLFilePane.h \
           include/ZDLImportDialog.hpp \
           include/ZDLInfoBar.h \
           include/ZDLInterface.h \
           include/ZDLIWadList.h \
           include/zdlline.hpp \
           include/ZDLListable.h \
           include/ZDLListEntry.hpp \
           include/ZDLListWidget.h \
           include/ZDLMainWindow.h \
           include/ZDLMapFile.h \
           include/ZDLMultiPane.h \
           include/ZDLNameInput.h \
           include/ZDLNameListable.h \
           include/ZDLNullDevice.h \
           include/ZDLPK3File.h \
           include/ZDLQSplitter.h \
           include/zdlsection.hpp \
           include/ZDLSettingsPane.h \
           include/ZDLSettingsTab.h \
           include/ZDLSourcePortList.h \
           include/ZDLUpdateDialog.h \
           include/ZDLUpdater.h \
           include/zdlvariables.hpp \
           include/ZDLVersion.h \
           include/ZDLWidget.h \
           include/ZDMFlagDialog.h \
           include/ZDMFlagPicker.h \
           include/ZDLConfigurationManager.h \
           include/zdlcommon.h \
           include/ZDLMainWindow.h \
           include/ZDLVersion.h \
           include/ZDLNullDevice.h
SOURCES += src/qzdl.cpp \
           src/extras.cpp \
           src/libwad.cpp \
           src/qzdl.cpp \
           src/ZDLAboutDialog.cpp \
           src/ZDLAdvancedMultiplayerDialog.cpp \
           src/zdlconf.cpp \
           src/ZDLConfiguration.cpp \
           src/ZDLConfigurationEvents.cpp \
           src/ZDLConfigurationManager.cpp \
           src/ZDLDMFlagCheckbox.cpp \
           src/ZDLDMFlagManager.cpp \
           src/ZDLFileAssociations.cpp \
           src/ZDLFileList.cpp \
           src/ZDLFileListable.cpp \
           src/ZDLFilePane.cpp \
           src/ZDLImportDialog.cpp \
           src/ZDLInfoBar.cpp \
           src/ZDLInterface.cpp \
           src/ZDLIWadList.cpp \
           src/zdlline.cpp \
           src/ZDLListable.cpp \
           src/ZDLListEntry.cpp \
           src/ZDLListWidget.cpp \
           src/ZDLMainWindow.cpp \
           src/ZDLMapFile.cpp \
           src/ZDLMultiPane.cpp \
           src/ZDLNameInput.cpp \
           src/ZDLNameListable.cpp \
           src/ZDLQSplitter.cpp \
           src/zdlsection.cpp \
           src/ZDLSettingsPane.cpp \
           src/ZDLSettingsTab.cpp \
           src/ZDLSourcePortList.cpp \
           src/ZDLUpdateDialog.cpp \
           src/ZDLUpdater.cpp \
           src/zdlvariables.cpp \
           src/ZDLWidget.cpp \
           src/ZDMFlagDialog.cpp \
           src/ZDMFlagPicker.cpp
RESOURCES += res/qzdl.qrc
CONFIG += debug
MOC_DIR = moc
OBJECTS_DIR = obj
INCLUDEPATH += ./include
RCC_DIR += ./rcc
win32 {
QMAKE_LFLAGS += -static-libgcc -g
LIBS += -lshlwapi
RC_FILE = res/zdl.rc
TARGET = ZDL
}
unix {
TARGET = zdl
}