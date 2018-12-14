%include "core/Messages.i"
%include "datastructure/Image.i"
%include "IMarker2DSquared.i"
%include "xpcf/api/IComponentIntrospect.i"

// Cannot set this as an interface because there is an attribute in IMarker2DSquared
////%interface_impl(IMarker2DNaturalImage)
//%warnfilter(841) IMarker2DNaturalImage;

%include "interfaces/api/input/files/IMarker2DNaturalImage.h"
