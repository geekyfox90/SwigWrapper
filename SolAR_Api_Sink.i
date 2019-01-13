%module solar_api_sink
%{
#include "api/sink/IThirdPartyConnector.h"
%}

%include "Swig.i"

%import (module="XPCF.Api") "XPCF_Api.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

%typemap(csimports) SWIGTYPE
%{
    using XPCF.Api;
    using SolAR.Datastructure;
%}

///

%shared_ptr(SolAR::api::sink::IThirdPartyConnector)

///

%include "api/sink/IThirdPartyConnector.h"
