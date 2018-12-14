// Common

%template(CharList) std::vector<char const *>;
%template(DoubleList) std::vector<double>;
%template(FloatList) std::vector<float>;
%template(IntList) std::vector<int>;
%template(LongList) std::vector<long long>;
%template(StringList) std::vector<std::string>;
%template(WStringList) std::vector<std::wstring>;
%template(UIntList) std::vector<unsigned int>;
%template(ULongList) std::vector<unsigned long long>;


// XPCF

#define SRef boost::shared_ptr
#define SPtr boost::shared_ptr

%shared_ptr(org::bcom::xpcf::uuids::uuid)

%shared_ptr(org::bcom::xpcf::IComponentManager)
%shared_ptr(org::bcom::xpcf::IComponentIntrospect)
%shared_ptr(org::bcom::xpcf::IConfigurable)
%shared_ptr(org::bcom::xpcf::IPropertyMap)
%shared_ptr(org::bcom::xpcf::IProperty)
%shared_ptr(org::bcom::xpcf::ModuleMetadata)
%shared_ptr(org::bcom::xpcf::InterfaceMetadata)
%shared_ptr(org::bcom::xpcf::ComponentMetadata)

%template(PropertyMapList) std::vector<SRef<org::bcom::xpcf::IPropertyMap>>;


// SolAR
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
%shared_ptr(SolAR::datastructure::Pose)
%shared_ptr(SolAR::datastructure::SquaredBinaryPattern)

%shared_ptr(SolAR::api::display::I2DOverlay)
%shared_ptr(SolAR::api::display::I3DOverlay)
%shared_ptr(SolAR::api::display::I3DPointsViewer)
%shared_ptr(SolAR::api::display::IImageViewer)
%shared_ptr(SolAR::api::display::IMatchesOverlay)

%shared_ptr(SolAR::api::example::IInterface1)
%shared_ptr(SolAR::api::example::IInterface2)

%shared_ptr(SolAR::api::features::IContoursExtractor)
%shared_ptr(SolAR::api::features::IContoursFilter)
%shared_ptr(SolAR::api::features::IDescriptorMatcher)
%shared_ptr(SolAR::api::features::IDescriptorsExtractor)
%shared_ptr(SolAR::api::features::IDescriptorsExtractorSBPattern)
%shared_ptr(SolAR::api::features::IKeypointDetector)
%shared_ptr(SolAR::api::features::IKeypointsReIndexer)
%shared_ptr(SolAR::api::features::ISBPatternReIndexer)

%shared_ptr(SolAR::api::fusion::IVisualInertialFusion)

%shared_ptr(SolAR::api::geom::I2DTransform)
%shared_ptr(SolAR::api::geom::I3DTransform)
%shared_ptr(SolAR::api::geom::IImage2WorldMapper)

%shared_ptr(SolAR::api::image::IImageConvertor)
%shared_ptr(SolAR::api::image::IImageFilter)
%shared_ptr(SolAR::api::image::IImageLoader)
%shared_ptr(SolAR::api::image::IPerspectiveController)

%shared_ptr(SolAR::api::input::devices::ICamera)
%shared_ptr(SolAR::api::input::devices::ICameraCalibration)
%shared_ptr(SolAR::api::input::devices::IIMU)

%shared_ptr(SolAR::api::input::files::IMarker)
%shared_ptr(SolAR::api::input::files::IMarker2DNaturalImage)
%shared_ptr(SolAR::api::input::files::IMarker2DSquared)
%shared_ptr(SolAR::api::input::files::IMarker2DSquaredBinary)

%shared_ptr(SolAR::api::reloc::IKeyframeRetriever)
%shared_ptr(SolAR::api::reloc::IRelocalizer)

%shared_ptr(SolAR::api::sink::IThirdPartyConnector)

%shared_ptr(SolAR::api::solver::map::IBundler)
%shared_ptr(SolAR::api::solver::map::IKeyframeSelector)
%shared_ptr(SolAR::api::solver::map::IMapFilter)
%shared_ptr(SolAR::api::solver::map::IMapper)
%shared_ptr(SolAR::api::solver::map::ITriangulator)

%shared_ptr(SolAR::api::solver::pose::I2D3DCorrespondencesFinder)
%shared_ptr(SolAR::api::solver::pose::I2Dto3DTransformDecomposer)
%shared_ptr(SolAR::api::solver::pose::I2Dto3DTransformDecomposerValidation)
%shared_ptr(SolAR::I2Dto3DTransformDecomposerValidation) //TODO
%shared_ptr(SolAR::api::solver::pose::I2DTransformFinder)
%shared_ptr(SolAR::api::solver::pose::I3DTransformFinderFrom2D2D)
%shared_ptr(SolAR::api::solver::pose::I3DTransformFinderFrom2D3D)
%shared_ptr(SolAR::api::solver::pose::IHomographyValidation)


%template(MapIntCloudPoint) std::map<unsigned int, SRef<SolAR::datastructure::CloudPoint>, std::less<unsigned int>>;
%template(MapIntInt) std::map<unsigned int, unsigned int, std::less<unsigned int>>;
%template(PairIntInt) std::pair<unsigned int, unsigned int>;

// Vector<T>
%template(DescriptorMatchVector) std::vector<SolAR::datastructure::DescriptorMatch>;
//SWIG_STD_VECTOR_ENHANCED(SolAR::datastructure::Transform3Df)
//%template(Transform3DfList) std::vector<SolAR::datastructure::Transform3Df>;
%template(Transform3DfList) std::vector<SolAR::datastructure::Transform<float,3>>;
//SWIG_STD_VECTOR_ENHANCED(SolAR::datastructure::Point2Df)
%template(Point2DfList_TODO) std::vector<SolAR::datastructure::Point2Df>;

// Vector<SRef<T>>
%template(CloudPointList) std::vector<SRef<SolAR::datastructure::CloudPoint>>;
%template(Contour2DfList) std::vector<SRef<SolAR::datastructure::Contour2Df>>;
%template(DescriptorBufferList) std::vector<SRef<SolAR::datastructure::DescriptorBuffer>>;
%template(ImageList) std::vector<SRef<SolAR::datastructure::Image>>;
%template(KeyframeList) std::vector<SRef<SolAR::datastructure::Keyframe>>;
%template(KeypointList) std::vector<SRef<SolAR::datastructure::Keypoint>>;
%template(Point2DfList) std::vector<SRef<SolAR::datastructure::Point2Df>>;
%template(Point3DfList) std::vector<SRef<SolAR::datastructure::Point3Df>>;

/*
%shared_ptr(SolAR::datastructure::Transform<float, 3>)
//%shared_ptr(org::bcom::xpcf::utils::shared_ptr<std::vector<SolAR::datastructure::Point2Df>>)
%shared_ptr(std::vector<SolAR::datastructure::Point2Df>)
*/

//%shared_ptr(std::vector<SRef<SolAR::datastructure::CloudPoint>>);
