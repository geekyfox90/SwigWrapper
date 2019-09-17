## remove Qt dependencies
QT       -= core gui
CONFIG -= qt

## global defintions : target lib name, version
TARGET = SolARWrapper
FRAMEWORK = $$TARGET
VERSION=0.6.0

DEFINES += MYVERSION=$${VERSION}
DEFINES += TEMPLATE_LIBRARY
CONFIG += c++1z


CONFIG(debug,debug|release) {
    DEFINES += _DEBUG=1
    DEFINES += DEBUG=1
}

CONFIG(release,debug|release) {
    DEFINES += _NDEBUG=1
    DEFINES += NDEBUG=1
}

DEPENDENCIESCONFIG = shared recurse

include (../../builddefs/qmake/templatelibconfig.pri)

## DEFINES FOR MSVC/INTEL C++ compilers
msvc {
DEFINES += "_BCOM_SHARED=__declspec(dllexport)"
}

INCLUDEPATH += \
    $$(REMAKENROOT)/SolARFramework/0.6.0/interfaces \
    $$(REMAKENROOT)/SolARModuleTools/0.6.0/interfaces \
    $$(REMAKENROOT)/xpcf/2.2.0/interfaces \
    $$(REMAKENROOT)/../thirdParties/eigen/3.3.5/interfaces \
    $$(REMAKENROOT)/../thirdParties/boost/1.70.0/interfaces \
    $$(REMAKENROOT)/../thirdParties/spdlog/0.14.0/interfaces \

HEADERS += \

SOURCES += \
	SolAR_Api_Display_wrap.cxx \
	SolAR_Api_Features_wrap.cxx \
	SolAR_Api_Fusion_wrap.cxx \
	SolAR_Api_Geom_wrap.cxx \
	SolAR_Api_Image_wrap.cxx \
	SolAR_Api_Input_Devices_wrap.cxx \
	SolAR_Api_Input_Files_wrap.cxx \
	SolAR_Api_Pipeline_wrap.cxx \
	SolAR_Api_Reloc_wrap.cxx \
	SolAR_Api_Sink_wrap.cxx \
	SolAR_Api_Solver_Map_wrap.cxx \
	SolAR_Api_Solver_Pose_wrap.cxx \
	SolAR_Api_Source_wrap.cxx \
	SolAR_Api_Tracking_wrap.cxx \
	SolAR_Core_wrap.cxx \
	SolAR_Datastructure_wrap.cxx \
	SolAR_wrap.cxx \
	XPCF_Api_wrap.cxx \
	XPCF_Collection_wrap.cxx \
	XPCF_Component_wrap.cxx \
	XPCF_Core_wrap.cxx \
	XPCF_Module_wrap.cxx \
	XPCF_Properties_wrap.cxx \
	XPCF_Threading_wrap.cxx \
	XPCF_Traits_wrap.cxx \

LIBS += \
    -L$$(REMAKENROOT)/SolARFramework/0.6.0/lib/x86_64/shared/debug \
    -L$$(REMAKENROOT)/SolARModuleTools/0.6.0/lib/x86_64/shared/debug \
    -L$$(REMAKENROOT)/xpcf/2.2.0/lib/x86_64/shared/debug \
    -L$$(REMAKENROOT)/../thirdParties/boost/1.70.0/lib/x86_64/shared/debug \
    -lSolARFramework \
    -lSolARModuleTools \
    -lxpcf \
    -lboost_filesystem \
    -lboost_system \

unix {
    QMAKE_CXXFLAGS += -Wignored-qualifiers
    QMAKE_LINK=clang++
    QMAKE_CXX = clang++
}

macx {
    DEFINES += _MACOS_TARGET_
    QMAKE_MAC_SDK= macosx
    QMAKE_CFLAGS += -mmacosx-version-min=10.7 -std=c11 #-x objective-c++
    QMAKE_CXXFLAGS += -mmacosx-version-min=10.7 -std=c11 -std=c++11 -O3 -fPIC#-x objective-c++
    QMAKE_LFLAGS += -mmacosx-version-min=10.7 -v -lstdc++
    LIBS += -lstdc++ -lc -lpthread
}

win32 {

    DEFINES += WIN64 UNICODE _UNICODE
    QMAKE_COMPILER_DEFINES += _WIN64
    QMAKE_CXXFLAGS += -wd4250 -wd4251 -wd4244 -wd4275 /Od
}

header_files.path = $${PROJECTDEPLOYDIR}/interfaces
header_files.files = $$files($${PWD}/interfaces/*.h*)

xpcf_xml_files.path = $$(HOME)/.xpcf/SolAR
xpcf_xml_files.files=$$files($${PWD}/xpcf*.xml)

INSTALLS += header_files
INSTALLS += xpcf_xml_files
