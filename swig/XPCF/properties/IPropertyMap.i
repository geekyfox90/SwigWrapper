%include "xpcf/properties/IProperty.i"
%include "xpcf/collection/IEnumerable.i"
//%include <string>

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

%ignore org::bcom::xpcf::IPropertyMap::wrapInteger;
%ignore org::bcom::xpcf::IPropertyMap::wrapUnsignedInteger;
%ignore org::bcom::xpcf::IPropertyMap::wrapLong;
%ignore org::bcom::xpcf::IPropertyMap::wrapUnsignedLong;
%ignore org::bcom::xpcf::IPropertyMap::wrapFloat;
%ignore org::bcom::xpcf::IPropertyMap::wrapDouble;
%ignore org::bcom::xpcf::IPropertyMap::wrapString;
%ignore org::bcom::xpcf::IPropertyMap::wrapUnicodeString;
%ignore org::bcom::xpcf::IPropertyMap::wrapStructure;

%ignore org::bcom::xpcf::IPropertyMap::wrapIntegerVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapUnsignedIntegerVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapLongVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapUnsignedLongVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapFloatVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapDoubleVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapStringVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapUnicodeStringVector;
%ignore org::bcom::xpcf::IPropertyMap::wrapStructureVector;

%include "xpcf/properties/IPropertyMap.h"
