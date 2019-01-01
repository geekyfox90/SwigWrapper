%module solar_api_input_files
%{
#include "api/input/files/IMarker.h"
#include "api/input/files/IMarker2DNaturalImage.h"
#include "api/input/files/IMarker2DSquared.h"
#include "api/input/files/IMarker2DSquaredBinary.h"
%}

%include "Swig.i"

%import (module="XPCF") "XPCF.i"
%import (module="SolAR.Core") "SolAR_Core.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

///

%shared_ptr(SolAR::api::input::files::IMarker)
%shared_ptr(SolAR::api::input::files::IMarker2DNaturalImage)
%shared_ptr(SolAR::api::input::files::IMarker2DSquared)
%shared_ptr(SolAR::api::input::files::IMarker2DSquaredBinary)

///

%include "api/input/files/IMarker.h"

//%include "IMarker.i"
%include "api/input/files/IMarker2DSquared.h"

//%include "IMarker2DSquared.i"
%include "api/input/files/IMarker2DSquaredBinary.h"

//%include "IMarker2DSquared.i"
%include "api/input/files/IMarker2DNaturalImage.h"
