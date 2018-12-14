%module SolARWrapper
%{
#include <boost/shared_ptr.hpp>

#include <xpcf/xpcf.h>
using namespace org::bcom::xpcf;

#include <SharedBuffer.hpp>
#include <SharedCircularBuffer.hpp>
#include <SharedFifo.hpp>

#include <core/Log.h>
#include <core/Messages.h>
#include <core/SolARFramework.h>
#include <core/SolARFrameworkDefinitions.h>

//#include <datastructure/BufferInternal.hpp>
#include <datastructure/CloudPoint.h>
#include <datastructure/DescriptorBuffer.h>
#include <datastructure/DescriptorMatch.h>
#include <datastructure/Frame.h>
#include <datastructure/GeometryDefinitions.h>
#include <datastructure/Image.h>
#include <datastructure/Keyframe.h>
#include <datastructure/Keypoint.h>
#include <datastructure/Map.h>
#include <datastructure/MathDefinitions.h>
#include <datastructure/SquaredBinaryPattern.h>

#include <api/display/I2DOverlay.h>
#include <api/display/I3DOverlay.h>
#include <api/display/I3DPointsViewer.h>
#include <api/display/IImageViewer.h>
#include <api/display/IMatchesOverlay.h>

#include <api/example/IInterface1.h>
#include <api/example/IInterface2.h>

#include <api/features/IContoursExtractor.h>
#include <api/features/IContoursFilter.h>
#include <api/features/IDescriptorMatcher.h>
#include <api/features/IDescriptorsExtractor.h>
#include <api/features/IDescriptorsExtractorSBPattern.h>
#include <api/features/IKeypointDetector.h>
#include <api/features/IKeypointsReIndexer.h>
#include <api/features/IMatchesFilter.h>
#include <api/features/ISBPatternReIndexer.h>

#include <api/fusion/IVisualInertialFusion.h>

#include <api/geom/I2DTransform.h>
#include <api/geom/I3DTransform.h>
#include <api/geom/IImage2WorldMapper.h>

#include <api/image/IImageConvertor.h>
#include <api/image/IImageFilter.h>
#include <api/image/IImageLoader.h>
#include <api/image/IPerspectiveController.h>

#include <api/input/devices/ICamera.h>
#include <api/input/devices/ICameraCalibration.h>
#include <api/input/devices/IIMU.h>
#include <api/input/files/IMarker.h>
#include <api/input/files/IMarker2DNaturalImage.h>
#include <api/input/files/IMarker2DSquared.h>
#include <api/input/files/IMarker2DSquaredBinary.h>

#include <api/reloc/IKeyframeRetriever.h>
#include <api/reloc/IRelocalizer.h>

#include <api/sink/IThirdPartyConnector.h>

#include <api/solver/map/IBundler.h>
#include <api/solver/map/IKeyframeSelector.h>
#include <api/solver/map/IMapFilter.h>
#include <api/solver/map/IMapper.h>
#include <api/solver/map/ITriangulator.h>
#include <api/solver/pose/I2D3DCorrespondencesFinder.h>
#include <api/solver/pose/I2Dto3DTransformDecomposer.h>
//#include <api/solver/pose/I2Dto3DTransformDecomposerValidation.h>
#include <api/solver/pose/I2DTransformFinder.h>
#include <api/solver/pose/I3DTransformFinderFrom2D2D.h>
#include <api/solver/pose/I3DTransformFinderFrom2D3D.h>
#include <api/solver/pose/IHomographyValidation.h>

using namespace SolAR::datastructure;
%}

%include "Swig.i"

%exception {
	try {
		$function
	} catch(org::bcom::xpcf::Exception& e) {
		SWIG_exception(SWIG_RuntimeError, e.what());
	} catch(const std::exception& e) {
		SWIG_exception(SWIG_RuntimeError, e.what());
	} catch(...) {
		SWIG_exception(SWIG_UnknownError, "Unknown exception");
	}
}

%include "SharedPointer.i"

%include "xpcf/xpcf.i"

%include "SolARFramework/SolARFramework.i"
