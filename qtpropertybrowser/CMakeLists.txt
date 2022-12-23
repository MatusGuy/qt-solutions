cmake_minimum_required(VERSION 3.16)

set(AUTOMOC ON)

project(
    qtpropertybrowser
    LANGUAGES CXX
    VERSION 2.6
    DESCRIPTION "Qt Solutions Component: Property Browser: A property browser framework enabling the user to edit a set of properties."
)

add_subdirectory(buildlib)

add_subdirectory(examples)
