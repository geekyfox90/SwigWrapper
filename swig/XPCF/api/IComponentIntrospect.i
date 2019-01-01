%include "xpcf/collection/IEnumerable.i"
%include "xpcf/core/traits.i"
%include "xpcf/api/InterfaceMetadata.i"


%ignore org::bcom::xpcf::IComponentIntrospect::getMetadata;

%include "xpcf/api/IComponentIntrospect.h"

%template(queryInterface) org::bcom::xpcf::IComponentIntrospect::queryInterface<org::bcom::xpcf::IComponentIntrospect>;
