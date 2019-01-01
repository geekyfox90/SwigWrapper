%include "xpcf/core/uuid.i"
%include "xpcf/xpcf_api_define.i"
%include "xpcf/core/refs.i"
%include "xpcf/core/traits.i"

%ignore org::bcom::xpcf::InterfaceMetadata::InterfaceMetadata(const InterfaceMetadata & other);

%ignore org::bcom::xpcf::InterfaceMetadata::operator=;
%ignore org::bcom::xpcf::InterfaceMetadata::operator==;

//%nodefaultctor org::bcom::xpcf::InterfaceMetadata;

%include "xpcf/api/InterfaceMetadata.h"
