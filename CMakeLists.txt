cmake_minimum_required(VERSION 3.7.2)

##################################################
project("SolARWrapper")
set (SOURCES 
	SolARWrapper_wrap.cxx
)
set (HEADERS 
)

##################################################

# various macros
include("$ENV{BCOMDEVROOT}/bcomBuild/SolARFramework/solarmacros.cmake")
# config setup
setup()
# process packagedependencies.txt
processPackagedependencies()

# define targets (type library)cd 
defineTargets("library" "")

