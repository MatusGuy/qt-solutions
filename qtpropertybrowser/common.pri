exists(config.pri): {
    infile(config.pri, SOLUTIONS_LIBRARY, yes): CONFIG += qtpropertybrowser-uselib
    infile(config.pri, PATHEDIT_EXT, yes): CONFIG += pathedit-ext
}

TEMPLATE += fakelib
QTPROPERTYBROWSER_LIBNAME = $$qtLibraryTarget(QtSolutions_PropertyBrowser-head)
TEMPLATE -= fakelib
QTPROPERTYBROWSER_LIBDIR = $$PWD/lib
unix:qtpropertybrowser-uselib:!qtpropertybrowser-buildlib:QMAKE_RPATHDIR += $$QTPROPERTYBROWSER_LIBDIR
