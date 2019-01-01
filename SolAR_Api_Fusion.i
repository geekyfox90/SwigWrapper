%module solar_api_fusion
%{
#include "api/fusion/IVisualInertialFusion.h"
%}

%include "Swig.i"

%import (module="XPCF") "XPCF.i"
%import (module="SolAR.Core") "SolAR_Core.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

///

%shared_ptr(SolAR::api::fusion::IVisualInertialFusion)

///

%ignore SolAR::api::fusion::InertialData::timestamp; //TODO: SWIGTYPE_p_std__chrono__high_resolution_clock__time_point
%ignore SolAR::api::fusion::VisionData::timestamp; //TODO: SWIGTYPE_p_std__chrono__high_resolution_clock__time_point
%include "api/fusion/IVisualInertialFusion.h"
