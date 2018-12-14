%include "xpcf/core/uuid.i"
%include "xpcf/api/ComponentMetadata.i"
%include "xpcf/collection/IEnumerable.i"

/*
namespace org { namespace bcom { namespace xpcf {
%interface(IModuleIndex);
}}}
*/

%ignore org::bcom::xpcf::IModuleIndex;

%include "xpcf/module/IModuleIndex.h"
