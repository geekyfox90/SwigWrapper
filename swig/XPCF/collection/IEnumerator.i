//%include <iostream>
%include "xpcf/core/refs.i"

%typemap(csimports) org::bcom::xpcf::IEnumerator
%{
    using System.Collections;
    using System.Collections.Generic;
%}

//%typemap(csinterfaces) org::bcom::xpcf::IEnumerator %{ global::System.IDisposable, IEnumerator %}
%extend org::bcom::xpcf::IEnumerator
{
	%typemap(csinterfaces) org::bcom::xpcf::IEnumerator %{global::System.IDisposable, IEnumerator<$typemap(cstype, T)>%}
	%proxycode %{
		public $typemap(cstype, T) Current { get { return current(); } }
		object IEnumerator.Current { get { return current(); } }
	%}
}

%ignore org::bcom::xpcf::IEnumerator::operator==;

%rename(MoveNext) org::bcom::xpcf::IEnumerator::moveNext();
%rename(Reset) org::bcom::xpcf::IEnumerator::reset();

%include "xpcf/collection/IEnumerator.h"
