//%include <string>

%ignore SolAR::getSolARFrameworkVersion();

%include "interfaces/SolARFramework.h"

//TODO

%include "SharedBuffer.i"
%include "SharedCircularBuffer.i"
%include "SharedFifo.i"

%include "core/Log.i"
%include "core/Messages.i"
%include "core/SolARFramework.i"
%include "core/SolARFrameworkDefinitions.i"

%include "datastructure/BufferInternal.i"
%include "datastructure/CloudPoint.i"
%include "datastructure/DescriptorBuffer.i"
%include "datastructure/DescriptorMatch.i"
%include "datastructure/Frame.i"
%include "datastructure/GeometryDefinitions.i"
%include "datastructure/Image.i"
%include "datastructure/Keyframe.i"
%include "datastructure/Keypoint.i"
%include "datastructure/Map.i"
%include "datastructure/MathDefinitions.i"
%include "datastructure/SquaredBinaryPattern.i"

%include "api/display/I2DOverlay.i"
%include "api/display/I3DOverlay.i"
%include "api/display/I3DPointsViewer.i"
%include "api/display/IImageViewer.i"
%include "api/display/IMatchesOverlay.i"

%include "api/example/IInterface1.i"
%include "api/example/IInterface2.i"

%include "api/features/IContoursExtractor.i"
%include "api/features/IContoursFilter.i"
%include "api/features/IDescriptorMatcher.i"
%include "api/features/IDescriptorsExtractor.i"
%include "api/features/IDescriptorsExtractorSBPattern.i"
%include "api/features/IKeypointDetector.i"
%include "api/features/IKeypointsReIndexer.i"
%include "api/features/IMatchesFilter.i"
%include "api/features/ISBPatternReIndexer.i"

%include "api/fusion/IVisualInertialFusion.i"

%include "api/geom/I2DTransform.i"
%include "api/geom/I3DTransform.i"
%include "api/geom/IImage2WorldMapper.i"

%include "api/image/IImageConvertor.i"
%include "api/image/IImageFilter.i"
%include "api/image/IImageLoader.i"
%include "api/image/IPerspectiveController.i"

%include "api/input/devices/ICamera.i"
%include "api/input/devices/ICameraCalibration.i"
%include "api/input/devices/IIMU.i"
%include "api/input/files/IMarker.i"
%include "api/input/files/IMarker2DNaturalImage.i"
%include "api/input/files/IMarker2DSquared.i"
%include "api/input/files/IMarker2DSquaredBinary.i"

%include "api/reloc/IKeyframeRetriever.i"
%include "api/reloc/IRelocalizer.i"

%include "api/sink/IThirdPartyConnector.i"

%include "api/solver/map/IBundler.i"
%include "api/solver/map/IKeyframeSelector.i"
%include "api/solver/map/IMapFilter.i"
%include "api/solver/map/IMapper.i"
%include "api/solver/map/ITriangulator.i"
%include "api/solver/pose/I2D3DCorrespondencesFinder.i"
%include "api/solver/pose/I2Dto3DTransformDecomposer.i"
//%include "api/solver/pose/I2Dto3DTransformDecomposerValidation.i" //TODO
%include "api/solver/pose/I2DTransformFinder.i"
%include "api/solver/pose/I3DTransformFinderFrom2D2D.i"
%include "api/solver/pose/I3DTransformFinderFrom2D3D.i"
%include "api/solver/pose/IHomographyValidation.i"
