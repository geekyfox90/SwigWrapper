cmake_minimum_required(VERSION 3.7.2)

##################################################
project("SolARWrapper")
set (SOURCES 
	SolAR_Api_Tracking_wrap.cxx
	SolAR_Api_Display_wrap.cxx
	SolAR_Api_Example_wrap.cxx
	SolAR_Api_Features_wrap.cxx
	SolAR_Api_Fusion_wrap.cxx
	SolAR_Api_Geom_wrap.cxx
	SolAR_Api_Image_wrap.cxx
	SolAR_Api_Input_Devices_wrap.cxx
	SolAR_Api_Input_Files_wrap.cxx
	SolAR_Api_Pipeline_wrap.cxx
	SolAR_Api_Reloc_wrap.cxx
	SolAR_Api_Sink_wrap.cxx
	SolAR_Api_Solver_Map_wrap.cxx
	SolAR_Api_Solver_Pose_wrap.cxx
	SolAR_Api_Source_wrap.cxx
	SolAR_Core_wrap.cxx
	SolAR_Datastructure_wrap.cxx
	SolAR_wrap.cxx
	XPCF_Api_wrap.cxx
	XPCF_Collection_wrap.cxx
	XPCF_Component_wrap.cxx
	XPCF_Core_wrap.cxx
	XPCF_Module_wrap.cxx
	XPCF_Properties_wrap.cxx
	XPCF_Threading_wrap.cxx
	XPCF_Traits_wrap.cxx
)
set (HEADERS 
)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /bigobj")

##################################################

# various macros
include("$ENV{BCOMDEVROOT}/bcomBuild/SolARFramework/solarmacros.cmake")
# config setup
setup()
# process packagedependencies.txt
processPackagedependencies()

# define targets (type library)cd 
defineTargets("library" "")
