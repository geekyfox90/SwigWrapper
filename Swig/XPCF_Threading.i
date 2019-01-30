%module xpcf_threading
%{
#include "xpcf/threading/ITask.h"
#include "xpcf/threading/SharedFifo.h"
#include "xpcf/threading/SharedLifo.h"
#include "xpcf/threading/BaseTask.h"
#include "xpcf/threading/DropBuffer.h"
#include "xpcf/threading/SharedBuffer.h"
#include "xpcf/threading/SharedCircularBuffer.h"
#include "xpcf/threading/FiberFifos.h"
%}

%include "Swig.i"

%import (module="XPCF.Core") "XPCF_Core.i"

%typemap(csimports) SWIGTYPE
%{
    using XPCF.Core;
%}

///

%shared_ptr(org::bcom::xpcf::ITask)

///

%include "xpcf/threading/ITask.h"

//%include "xpcf/threading/SharedFifo.h" //TODO

//%include "xpcf/threading/SharedFifo.i"
%include "xpcf/threading/SharedLifo.h"

//%include "xpcf/threading/ITask.i"
//%include "xpcf/threading/SharedFifo.i"
//%include "xpcf/threading/BaseTask.h" //TODO

//%include "xpcf/threading/SharedLifo.i"
%include "xpcf/threading/DropBuffer.h"

//%include "xpcf/threading/SharedFifo.i"
%include "xpcf/threading/SharedBuffer.h"

//%include "xpcf/threading/SharedFifo.i"
%include "xpcf/threading/SharedCircularBuffer.h"

//%include "xpcf/threading/SharedCircularBuffer.i"
//%include "xpcf/threading/FiberFifos.h" //TODO
