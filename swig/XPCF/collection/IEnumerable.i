%include "xpcf/collection/IEnumerator.i"
%include "xpcf/core/refs.i"
%include "xpcf/core/uuid.i"

%typemap(csimports) org::bcom::xpcf::IEnumerable
%{
	using System.Collections;
	using System.Collections.Generic;
%}

%extend org::bcom::xpcf::IEnumerable
{
	%typemap(csinterfaces) org::bcom::xpcf::IEnumerable %{global::System.IDisposable, IEnumerable<$typemap(cstype, T)>%}
	%proxycode %{
		public IEnumerator<$typemap(cstype, T)> GetEnumerator() { return getEnumerator(); }
		IEnumerator IEnumerable.GetEnumerator() { return getEnumerator(); }
	%}
}

#pragma SWIG nowarn=320
%include "xpcf/collection/IEnumerable.h"

%define ENUMERABLE(NAME, TYPE)
%shared_ptr(org::bcom::xpcf::IEnumerator<TYPE>)
%rename(NAME ## Enumerator) org::bcom::xpcf::IEnumerator<TYPE>;
%template(NAME ## Enumerator) org::bcom::xpcf::IEnumerator<TYPE>;
%rename(NAME ## Enumerable) org::bcom::xpcf::IEnumerable<TYPE>;
%template(NAME ## Enumerable) org::bcom::xpcf::IEnumerable<TYPE>;
%enddef

ENUMERABLE(UUID,				org::bcom::xpcf::uuids::uuid)

ENUMERABLE(ComponentMetadata,	SRef<org::bcom::xpcf::ComponentMetadata>)
ENUMERABLE(InterfaceMetadata,	SRef<org::bcom::xpcf::InterfaceMetadata>)
ENUMERABLE(Property,			SRef<org::bcom::xpcf::IProperty>)
ENUMERABLE(ModuleMetadata,		SRef<org::bcom::xpcf::ModuleMetadata>)
