TEMPLATE=subdirs
QT+=core5compat
CONFIG += ordered regularexpression
include(common.pri)
qtpropertybrowser-uselib:SUBDIRS=buildlib
SUBDIRS+=examples
