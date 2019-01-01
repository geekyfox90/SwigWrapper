%include "xpcf/module/IModuleIndex.i"
%include "xpcf/api/InterfaceMetadata.i"
//%include <boost/filesystem.hpp>
//%include <string>
//%include <vector>
//%include <map>

%ignore org::bcom::xpcf::ModuleMetadata::getFullPath() const;

%include "xpcf/api/ModuleMetadata.h"
