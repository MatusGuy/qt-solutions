TEMPLATE=subdirs
QT+=core5compat
CONFIG += ordered regularexpression
include(common.pri)
qtpropertybrowser-uselib:SUBDIRS=buildlib
pathedit-ext:include(pathedit-ext/pathedit-ext.pri)
SUBDIRS+=examples
