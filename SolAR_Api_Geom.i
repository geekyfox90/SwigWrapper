%module solar_api_geom
%{
#include "api/geom/I2DTransform.h"
#include "api/geom/I3DTransform.h"
#include "api/geom/IImage2WorldMapper.h"
%}

%include "Swig.i"

%import (module="XPCF") "XPCF.i"
%import (module="SolAR.Core") "SolAR_Core.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

///

%shared_ptr(SolAR::api::geom::I2DTransform)
%shared_ptr(SolAR::api::geom::I3DTransform)
%shared_ptr(SolAR::api::geom::IImage2WorldMapper)

///

%include "api/geom/I2DTransform.h"

%include "api/geom/I3DTransform.h"

%include "api/geom/IImage2WorldMapper.h"
