//%include <memory>
//%include <vector>
%include "core/Messages.i"
%include "datastructure/Image.i"
%include "datastructure/Keypoint.i"
%include "xpcf/api/IComponentIntrospect.i"

//%interface_impl(IKeypointDetector)
//%warnfilter(841) IKeypointDetector;

%include "interfaces/api/features/IKeypointDetector.h"
