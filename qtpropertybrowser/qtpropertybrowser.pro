TEMPLATE=subdirs
QT+=core5compat
CONFIG += ordered
include(common.pri)
qtpropertybrowser-uselib:SUBDIRS=buildlib
SUBDIRS+=examples
