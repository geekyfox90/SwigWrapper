%module solar_api_reloc
%{
#include "api/reloc/IKeyframeRetriever.h"
#include "api/reloc/IRelocalizer.h"
%}

%include "Swig.i"

%import (module="SolAR.Core") "SolAR_Core.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

///

%shared_ptr(SolAR::api::reloc::IKeyframeRetriever)
%shared_ptr(SolAR::api::reloc::IRelocalizer)

///

%include "api/reloc/IKeyframeRetriever.h"

%include "api/reloc/IRelocalizer.h"
