%module solar_core
%{
#include "core/Log.h"
#include "core/Messages.h"
#include "core/SolARFramework.h"
#include "core/SolARFrameworkDefinitions.h"
%}

%include "Swig.i"

///

%template(CharList) std::vector<char const *>;

///

%ignore SolAR::getSolARFrameworkVersion(); //TODO
%include "core/SolARFramework.h"

%include "core/SolARFrameworkDefinitions.h"

//%include "SolARFrameworkDefinitions.i"
%ignore SolAR::Log::logger();
%include "core/Log.h"

//%include "Log.i"
%include "core/Messages.h"
