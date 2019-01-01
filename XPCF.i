%module xpcf
%{
#include <xpcf/xpcf.h>
%}

///

%include "Swig.i"

///

%shared_ptr(org::bcom::xpcf::ComponentMetadata)
%shared_ptr(org::bcom::xpcf::IComponentIntrospect)
%shared_ptr(org::bcom::xpcf::IComponentManager)
%shared_ptr(org::bcom::xpcf::IConfigurable)
%shared_ptr(org::bcom::xpcf::InterfaceMetadata)
%shared_ptr(org::bcom::xpcf::IProperty)
%shared_ptr(org::bcom::xpcf::IPropertyMap)
%shared_ptr(org::bcom::xpcf::ModuleMetadata)

///

%include "XPCF/xpcf.i"
