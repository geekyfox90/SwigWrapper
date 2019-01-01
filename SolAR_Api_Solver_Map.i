%module solar_api_solver_map
%{
#include "api/solver/map/IBundler.h"
#include "api/solver/map/IKeyframeSelector.h"
#include "api/solver/map/IMapFilter.h"
#include "api/solver/map/IMapper.h"
#include "api/solver/map/ITriangulator.h"
%}

%include "Swig.i"

%import (module="XPCF") "XPCF.i"
%import (module="SolAR.Core") "SolAR_Core.i"
%import (module="SolAR.Datastructure") "SolAR_Datastructure.i"

///

%shared_ptr(SolAR::api::solver::map::IBundler)
%shared_ptr(SolAR::api::solver::map::IKeyframeSelector)
%shared_ptr(SolAR::api::solver::map::IMapFilter)
%shared_ptr(SolAR::api::solver::map::IMapper)
%shared_ptr(SolAR::api::solver::map::ITriangulator)

%template(IntList) std::vector<int>;
%template(PairUIntUInt) std::pair<unsigned int, unsigned int>;

///

%include "api/solver/map/IBundler.h"

%include "api/solver/map/IKeyframeSelector.h"

%include "api/solver/map/IMapFilter.h"

%include "api/solver/map/IMapper.h"

%include "api/solver/map/ITriangulator.h"
