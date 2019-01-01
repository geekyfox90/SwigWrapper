%include "xpcf/xpcf_api_define.i"
%include "xpcf/core/uuid.i"
%include "xpcf/core/refs.i"
%include "xpcf/api/InterfaceMetadata.i"
%include "xpcf/collection/IEnumerable.i"
//%include <boost/filesystem.hpp>
//%include <string>
//%include <vector>

namespace boost{namespace filesystem{}}

%ignore org::bcom::xpcf::ComponentMetadata::ComponentMetadata(const ComponentMetadata & other);

%ignore org::bcom::xpcf::ComponentMetadata::operator=;
%ignore org::bcom::xpcf::ComponentMetadata::operator==;

%include "xpcf/api/ComponentMetadata.h"
