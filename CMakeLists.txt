cmake_minimum_required(VERSION 3.7.2)

##################################################
project("SolARWrapper")
set (SOURCES 
	xpcf_wrap.cxx
	solar_wrap.cxx
	solar_core_wrap.cxx
	solar_datastructure_wrap.cxx
	solar_api_display_wrap.cxx
	solar_api_example_wrap.cxx
	solar_api_features_wrap.cxx
	solar_api_fusion_wrap.cxx
	solar_api_geom_wrap.cxx
	solar_api_image_wrap.cxx
	solar_api_input_devices_wrap.cxx
	solar_api_input_files_wrap.cxx
	solar_api_reloc_wrap.cxx
	solar_api_sink_wrap.cxx
	solar_api_solver_map_wrap.cxx
	solar_api_solver_pose_wrap.cxx
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
