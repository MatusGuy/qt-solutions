project(
    pathedit-examples
    LANGUAGES CXX
    VERSION 1.0
)

macro(subdirlist result curdir)
    file(GLOB children RELATIVE ${curdir} ${curdir}/*)
    set(dirlist "")
    foreach(child ${children})
        if(IS_DIRECTORY ${curdir}/${child})
            list(APPEND dirlist ${child})
        endif()
    endforeach()
    set(${result} ${dirlist})
endmacro()

include(../../src/include.cmake)
include(../../pathedit-ext/include.cmake)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets)

# Instead of creating a CMakeLists.txt file for every
# example, add them one by one as targets with a
# foreach loop

subdirlist(EXAMPLES ${PROJECT_SOURCE_DIR})

foreach(EXAMPLE ${EXAMPLES})
    file(GLOB RESOURCES ${EXAMPLE}/*.qrc)
    foreach(QRC ${RESOURCES})
        qt_add_resources(RESOURCES ${QRC})
    endforeach()

    file(GLOB CODE ${EXAMPLE}/*.cpp ${EXAMPLE}/*.h)
    qt_add_executable(${EXAMPLE} ${CODE} ${RESOURCES})
    bundle_qtpropertybrowser(${EXAMPLE} ../../src)
    bundle_pathedit_ext(${EXAMPLE} ../../pathedit-ext)

    target_link_libraries(${EXAMPLE} PUBLIC
        Qt::Core
        Qt::Gui
        Qt::Widgets
    )
endforeach()
