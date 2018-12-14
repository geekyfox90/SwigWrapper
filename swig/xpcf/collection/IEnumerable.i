%include "xpcf/collection/IEnumerator.i"
%include "xpcf/core/refs.i"
%include "xpcf/core/uuid.i"

%ignore org::bcom::xpcf::IEnumerable<org::bcom::xpcf::uuids::uuid>;

%include "xpcf/collection/IEnumerable.h"

%define ENUMERABLE(NAME, TYPE)
%shared_ptr(org::bcom::xpcf::IEnumerator<TYPE>)
%template(NAME ## Enumerator) org::bcom::xpcf::IEnumerator<TYPE>;
%template(NAME ## Enumerable) org::bcom::xpcf::IEnumerable<TYPE>;
%enddef

ENUMERABLE(ComponentMetadata, SRef<org::bcom::xpcf::ComponentMetadata>)
ENUMERABLE(InterfaceMetadata, SRef<org::bcom::xpcf::InterfaceMetadata>)
ENUMERABLE(Property, SRef<org::bcom::xpcf::IProperty>)
ENUMERABLE(ModuleMetadata, SRef<org::bcom::xpcf::ModuleMetadata>)
ENUMERABLE(Uuid, org::bcom::xpcf::uuids::uuid)
