%module solar_api_display
%{
#include "api/display/I2DOverlay.h"
#include "api/display/I3DOverlay.h"
#include "api/display/I3DPointsViewer.h"
#include "api/display/IImageViewer.h"
#include "api/display/IMatchesOverlay.h"
%}

%include "Swig.i"

%import (module="XPCF") "XPCF.i"
%import (module="SolAR.Core") "SolAR_Core.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

///

%shared_ptr(SolAR::api::display::I2DOverlay)
%shared_ptr(SolAR::api::display::I3DOverlay)
%shared_ptr(SolAR::api::display::I3DPointsViewer)
%shared_ptr(SolAR::api::display::IImageViewer)
%shared_ptr(SolAR::api::display::IMatchesOverlay)

///

%include "api/display/I2DOverlay.h"

%include "api/display/I3DOverlay.h"

%include "api/display/I3DPointsViewer.h"

%include "api/display/IImageViewer.h"

%include "api/display/IMatchesOverlay.h"
