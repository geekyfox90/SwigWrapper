%module solar_api_sink
%{
#include "api/sink/IThirdPartyConnector.h"
%}

%include "Swig.i"

%import (module="XPCF") "XPCF.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

///

%shared_ptr(SolAR::api::sink::IThirdPartyConnector)

///

%include "api/sink/IThirdPartyConnector.h"
