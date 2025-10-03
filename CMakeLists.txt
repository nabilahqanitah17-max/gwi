cmake_minimum_required(VERSION 3.16)

project(untitledahahah VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Tambahkan Charts di sini
find_package(Qt6 REQUIRED COMPONENTS Quick Charts)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appuntitledahahah
    main.cpp
)

qt_add_qml_module(appuntitledahahah
    URI untitledahahah
    VERSION 1.0
    QML_FILES
        Main.qml
        RawData.qml
        SetupPage.qml
        Summary.qml
        Run.qml
        END.qml
        AmplificationPlot.qml
)

set_target_properties(appuntitledahahah PROPERTIES
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appuntitledahahah PUBLIC
    Qt6::Quick
    Qt6::Charts
)

include(GNUInstallDirs)
install(TARGETS appuntitledahahah
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
