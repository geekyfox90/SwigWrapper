#-------------------------------------------------
#
# Project created by QtCreator 2018-11-14T12:19:14
#
#-------------------------------------------------

QT       -= core gui

TARGET = SolARUnityPlugin
TEMPLATE = lib

DEFINES += SOLARUNITYPLUGIN_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
	xpcf_wrap.cxx \
	solar_wrap.cxx \
	solar_core_wrap.cxx \
	solar_datastructure_wrap.cxx \
	solar_api_display_wrap.cxx \
	solar_api_example_wrap.cxx \
	solar_api_features_wrap.cxx \
	solar_api_fusion_wrap.cxx \
	solar_api_geom_wrap.cxx \
	solar_api_image_wrap.cxx \
	solar_api_input_devices_wrap.cxx \
	solar_api_input_files_wrap.cxx \
	solar_api_reloc_wrap.cxx \
	solar_api_sink_wrap.cxx \
	solar_api_solver_map_wrap.cxx \
	solar_api_solver_pose_wrap.cxx \

HEADERS += \

INCLUDEPATH += \
    ../../SolARFramework/0.4.0/interfaces \
    ../../SolARModuleTools/0.4.0/interfaces \
    ../../../thirdParties/xpcf/1.0.0/interfaces \
    ../../../thirdParties/eigen/3.3.4/interfaces \
    ../../../thirdParties/boost/1.64.0/interfaces \
    ../../../thirdParties/spdlog/0.14.0/interfaces \

LIBS += \
    -L../../SolARFramework/0.4.0/lib/x86_64/shared/debug \
    -L../../SolARModuleTools/0.4.0/lib/x86_64/shared/debug \
    -L../../../thirdParties/xpcf/1.0.0/lib/x86_64/shared/debug \
    -L../../../thirdParties/boost/1.64.0/lib/x86_64/shared/debug \
    -lSolARFramework \
    -lSolARModuleTools \
    -lxpcf \
    -lboost_filesystem \
    -lboost_system \

DEFINES += BOOST_ALL_NO_LIB

unix {
    target.path = /usr/lib
    INSTALLS += target
}
