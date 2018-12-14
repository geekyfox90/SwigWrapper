%include "xpcf/api/IComponentIntrospect.i"
%include "core/SolARFrameworkDefinitions.i"
%include "datastructure/GeometryDefinitions.i"

%ignore SolAR::datastructure::CloudPoint::getVisibility() const;

%include "interfaces/datastructure/CloudPoint.h"
