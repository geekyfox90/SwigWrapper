//%include <vector>
////%include "IDescriptor.i"
%include "datastructure/DescriptorBuffer.i"
%include "datastructure/DescriptorMatch.i"
%include "xpcf/api/IComponentIntrospect.i"

//%interface_impl(IDescriptorMatcher)
//%warnfilter(841) IDescriptorMatcher;

%rename(DescriptorMatcherRetCode) SolAR::api::features::DescriptorMatcher::RetCode;

%include "interfaces/api/features/IDescriptorMatcher.h"
