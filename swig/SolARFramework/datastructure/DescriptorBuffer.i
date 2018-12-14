//%include <utility>
//%include <map>
//%include <cstdint>
%include "xpcf/core/refs.i"
%include "../core/SolARFrameworkDefinitions.i"
%include "BufferInternal.i"

%ignore SolAR::datastructure::DescriptorBuffer::data() const;

%include "interfaces/datastructure/DescriptorBuffer.h"
