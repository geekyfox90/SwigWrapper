%include "xpcf/api/IComponentIntrospect.i"
%include "IMarker.i"
%include "core/Messages.i"
%include "datastructure/Image.i"
%include "datastructure/GeometryDefinitions.i"

// Cannot set this as an interface because there is an attribute in it
////%interface_impl(IMarker2DSquared)
//%warnfilter(841) IMarker2DSquared;

%include "interfaces/api/input/files/IMarker2DSquared.h"
