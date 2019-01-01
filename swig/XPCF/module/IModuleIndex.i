%include "xpcf/core/uuid.i"
%include "xpcf/api/ComponentMetadata.i"
%include "xpcf/collection/IEnumerable.i"

%ignore org::bcom::xpcf::IModuleIndex; //TODO
//%interface_impl(org::bcom::xpcf::IModuleIndex);
//%shared_ptr(org::bcom::xpcf::IModuleIndex)
// Change constructor, and add 4 methods

%include "xpcf/module/IModuleIndex.h"
