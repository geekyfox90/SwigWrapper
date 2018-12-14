%{

#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT void * SWIGSTDCALL CSharp_SolAR_new_Image__SWIG_120()
{
  void * jresult ;
  jresult = new boost::shared_ptr<  SolAR::datastructure::Image >();
  return jresult;
}

#ifdef __cplusplus
}
#endif

%}

%include "xpcf/core/refs.i"
%include "core/SolARFrameworkDefinitions.i"
%include "GeometryDefinitions.i"
//%include <memory>

%ignore SolAR::datastructure::Image::data() const;
%ignore SolAR::datastructure::Image::extractRegion(Rectanglei region);
%ignore SolAR::datastructure::Image::extractRegion(Rectanglei region, uint32_t channel);

%typemap(csclassmodifiers) SolAR::datastructure::Image "public partial class"

%include "interfaces/datastructure/Image.h"
