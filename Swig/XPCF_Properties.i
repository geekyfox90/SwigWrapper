%module xpcf_properties
%{
#include "xpcf/properties/IProperty.h"
#include "xpcf/properties/IPropertyMap.h"
%}

%include "Swig.i"

%import (module="XPCF.Core") "XPCF_Core.i"
%import (module="XPCF.Collection") "XPCF_Collection.i"

%typemap(csimports) SWIGTYPE
%{
    using XPCF.Core;
    using XPCF.Collection;
%}

///

%shared_ptr(org::bcom::xpcf::IProperty)
%shared_ptr(org::bcom::xpcf::IPropertyMap)

///

%include "xpcf/properties/IProperty.h"

//%include "xpcf/properties/IProperty.i"
//TODO
/*
%apply bool & INOUT { bool & wrappedValue };
%apply signed char & INOUT { signed char & wrappedValue };
%apply unsigned char & INOUT { unsigned char & wrappedValue };
%apply short & INOUT { short & wrappedValue };
%apply unsigned short & INOUT { unsigned short & wrappedValue };
%apply int & INOUT { int & wrappedValue };
%apply unsigned int & INOUT { unsigned int & wrappedValue };
%apply long & INOUT { long & wrappedValue };
%apply unsigned long & INOUT { unsigned long & wrappedValue };
%apply long long & INOUT { long long & wrappedValue };
%apply unsigned long long & INOUT { unsigned long long & wrappedValue };
%apply float & INOUT { float & wrappedValue };
%apply double & INOUT { double & wrappedValue };
*/

%rename("$ignore", regextarget=1, fullname=1) "org::bcom::xpcf::IPropertyMap::wrap.*$";
%include "xpcf/properties/IPropertyMap.h"
