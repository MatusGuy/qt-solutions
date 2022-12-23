function(bundle_qtpropertybrowser target qpb_pwd)
    set(CODE
        ${qpb_pwd}/qtpropertybrowser.cpp
        ${qpb_pwd}/qtpropertymanager.cpp
        ${qpb_pwd}/qteditorfactory.cpp
        ${qpb_pwd}/qtvariantproperty.cpp
        ${qpb_pwd}/qttreepropertybrowser.cpp
        ${qpb_pwd}/qtbuttonpropertybrowser.cpp
        ${qpb_pwd}/qtgroupboxpropertybrowser.cpp
        ${qpb_pwd}/qtpropertybrowserutils.cpp
        ${qpb_pwd}/qtpropertybrowser.h
        ${qpb_pwd}/qtpropertymanager.h
        ${qpb_pwd}/qteditorfactory.h
        ${qpb_pwd}/qtvariantproperty.h
        ${qpb_pwd}/qttreepropertybrowser.h
        ${qpb_pwd}/qtbuttonpropertybrowser.h
        ${qpb_pwd}/qtgroupboxpropertybrowser.h
        ${qpb_pwd}/qtpropertybrowserutils_p.h
    )
    qt_wrap_cpp(MOCS ${CODE} TARGET ${target})
    target_sources(${target}
        PUBLIC
        ${CODE}
        ${MOCS}
        ${qpb_pwd}/qtpropertybrowser.qrc
    )
    target_compile_definitions(${target}
        PUBLIC
        QT_DISABLE_DEPRECATED_BEFORE=0
    )
    target_include_directories(${target} PUBLIC ${qpd_pwd} ${MOCS})
endfunction(bundle_qtpropertybrowser)
