cmake_minimum_required(VERSION 3.16)
project(IVIQuickTest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 COMPONENTS Quick REQUIRED)

add_executable(IVIQuickTest main.cpp qml.qrc src/AppManager.cpp)

target_link_libraries(IVIQuickTest PRIVATE Qt5::Quick)
