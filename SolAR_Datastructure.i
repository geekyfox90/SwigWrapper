%module solar_datastructure
%{
//#include "datastructure/BufferInternal.hpp" //TODO: missing #once guard
#include "datastructure/CloudPoint.h"
#include "datastructure/DescriptorBuffer.h"
#include "datastructure/DescriptorMatch.h"
#include "datastructure/Frame.h"
#include "datastructure/GeometryDefinitions.h"
#include "datastructure/Image.h"
#include "datastructure/Keyframe.h"
#include "datastructure/Keypoint.h"
#include "datastructure/Map.h"
#include "datastructure/MathDefinitions.h"
#include "datastructure/SquaredBinaryPattern.h"

using namespace SolAR::datastructure;
%}

%include "Swig.i"

%import (module="XPCF") "XPCF.i"
%import (module="SolAR.Core") "SolAR_Core.i"

%typemap(csimports) SWIGTYPE
%{
    using XPCF;
    using SolAR.Core;
    using SolAR.Datastructure;
%}

///

// Use System.IntPtr from C# for void* pointers
%apply void *VOID_INT_PTR { void * }
%apply void *VOID_INT_PTR { unsigned char * }

%shared_ptr(SolAR::datastructure::CloudPoint)
%shared_ptr(SolAR::datastructure::Contour2Df)
%shared_ptr(SolAR::datastructure::DescriptorBuffer)
%shared_ptr(SolAR::datastructure::Frame)
%shared_ptr(SolAR::datastructure::Image)
%shared_ptr(SolAR::datastructure::Keyframe)
%shared_ptr(SolAR::datastructure::Keypoint)
%shared_ptr(SolAR::datastructure::Map)
%shared_ptr(SolAR::datastructure::Point2Df)
%shared_ptr(SolAR::datastructure::Point3Df)
%shared_ptr(SolAR::datastructure::SquaredBinaryPattern)

%template(MapIntCloudPoint) std::map<unsigned int, SRef<SolAR::datastructure::CloudPoint>, std::less<unsigned int>>;
%template(MapIntInt) std::map<unsigned int, unsigned int, std::less<unsigned int>>;

// Vector<T>
%template(DescriptorMatchVector) std::vector<SolAR::datastructure::DescriptorMatch>;
//SWIG_STD_VECTOR_ENHANCED(SolAR::datastructure::Transform3Df)
//%template(Transform3DfList) std::vector<SolAR::datastructure::Transform3Df>;
%template(Transform3DfList) std::vector<SolAR::datastructure::Transform<float,3>>;
//SWIG_STD_VECTOR_ENHANCED(SolAR::datastructure::Point2Df)
%template(Point2DfArray) std::vector<SolAR::datastructure::Point2Df>;

// Vector<SRef<T>>
%template(CloudPointList) std::vector<SRef<SolAR::datastructure::CloudPoint>>;
%template(Contour2DfList) std::vector<SRef<SolAR::datastructure::Contour2Df>>;
%template(DescriptorBufferList) std::vector<SRef<SolAR::datastructure::DescriptorBuffer>>;
%template(ImageList) std::vector<SRef<SolAR::datastructure::Image>>;
%template(KeyframeList) std::vector<SRef<SolAR::datastructure::Keyframe>>;
%template(KeypointList) std::vector<SRef<SolAR::datastructure::Keypoint>>;
%template(Point2DfList) std::vector<SRef<SolAR::datastructure::Point2Df>>;
%template(Point3DfList) std::vector<SRef<SolAR::datastructure::Point3Df>>;

%shared_ptr(std::vector<SRef<SolAR::datastructure::CloudPoint>>);

///

%include "Eigen.i"

%include "datastructure/MathDefinitions.h"

//%include "datastructure/MathDefinitions.i"
%include "datastructure/GeometryDefinitions.h"

%ignore SolAR::datastructure::BufferInternal::data() const;
%include "datastructure/BufferInternal.hpp"

//%include "datastructure/GeometryDefinitions.i"
%ignore SolAR::datastructure::CloudPoint::getVisibility() const;
%include "datastructure/CloudPoint.h"

//%include "BufferInternal.i"
%ignore SolAR::datastructure::DescriptorBuffer::data() const;
%include "datastructure/DescriptorBuffer.h"

%include "datastructure/DescriptorMatch.h"

//%include "GeometryDefinitions.i"
%ignore SolAR::datastructure::Image::data() const;
%ignore SolAR::datastructure::Image::extractRegion(Rectanglei region);
%ignore SolAR::datastructure::Image::extractRegion(Rectanglei region, uint32_t channel);
%include "datastructure/Image.h"

//%include "datastructure/GeometryDefinitions.i"
%include "datastructure/Keypoint.h"

//%include "datastructure/GeometryDefinitions.i"
//%include "datastructure/CloudPoint.i"
%include "datastructure/Map.h"

//%include "datastructure/MathDefinitions.i"
namespace SolAR {namespace datastructure {class SquaredBinaryPatternMatrix{};}} //TODO: This a matrix with runtime dimensions
%include "datastructure/SquaredBinaryPattern.h"

//%include "datastructure/GeometryDefinitions.i"
//%include "datastructure/Image.i"
//%include "datastructure/Keypoint.i"
//%include "datastructure/DescriptorBuffer.i"
//%include "datastructure/DescriptorMatch.i"
//%include "datastructure/CloudPoint.i"
%include "datastructure/Frame.h"

//%include "datastructure/GeometryDefinitions.i"
//%include "Frame.i"
%include "datastructure/Keyframe.h"

///

%inline %{
template <class T>
void * newPointer()
{
	return new SRef<T>();
};
%}

%define EMPTY_POINTER(NAME)
%template(newPointer_ ## NAME) newPointer<SolAR::datastructure:: ## NAME>;
%enddef

EMPTY_POINTER(BufferInternal)
EMPTY_POINTER(CamDistortion)
EMPTY_POINTER(CloudPoint)
EMPTY_POINTER(DescriptorBuffer)
EMPTY_POINTER(DescriptorMatch)
EMPTY_POINTER(Edge2Df)
EMPTY_POINTER(Edge2Di)
EMPTY_POINTER(Frame)
EMPTY_POINTER(Image)
EMPTY_POINTER(Keyframe)
EMPTY_POINTER(Keypoint)
EMPTY_POINTER(Map)
EMPTY_POINTER(Point2Df)
EMPTY_POINTER(Point2Di)
EMPTY_POINTER(Point3Df)
EMPTY_POINTER(Point3Di)
EMPTY_POINTER(Rectanglei)
EMPTY_POINTER(Sizef)
EMPTY_POINTER(Sizei)
EMPTY_POINTER(SquaredBinaryPattern)
EMPTY_POINTER(SquaredBinaryPatternMatrix)
EMPTY_POINTER(Transform2Df)
EMPTY_POINTER(Transform3Df)
EMPTY_POINTER(Vector3f)
