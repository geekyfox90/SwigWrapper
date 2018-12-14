%{

using namespace boost::filesystem;

#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT void * SWIGSTDCALL CSharp_SolAR_IComponentIntrospect_queryInterface_IComponentIntrospect1(void * jarg1, void * jarg2) {
  void * jresult ;
  org::bcom::xpcf::IComponentIntrospect *arg1 = (org::bcom::xpcf::IComponentIntrospect *) 0 ;
  org::bcom::xpcf::uuids::uuid *arg2 = 0 ;
  boost::shared_ptr< org::bcom::xpcf::IComponentIntrospect > *smartarg1 = 0 ;
  boost::shared_ptr< org::bcom::xpcf::IComponentIntrospect > result;
  smartarg1 = (boost::shared_ptr<  org::bcom::xpcf::IComponentIntrospect > *)jarg1;
  arg1 = (org::bcom::xpcf::IComponentIntrospect *)(smartarg1 ? smartarg1->get() : 0); 
  arg2 = (org::bcom::xpcf::uuids::uuid *)(((boost::shared_ptr< const org::bcom::xpcf::uuids::uuid > *)jarg2) ? ((boost::shared_ptr< const org::bcom::xpcf::uuids::uuid > *)jarg2)->get() : 0);
  if (!arg2) {
    SWIG_CSharpSetPendingExceptionArgument(SWIG_CSharpArgumentNullException, "org::bcom::xpcf::uuids::uuid const & reference is null", 0);
    return 0; }
	{
		try 
		{
		  result = (arg1)->SWIGTEMPLATEDISAMBIGUATOR queryInterface< org::bcom::xpcf::IComponentIntrospect >((org::bcom::xpcf::uuids::uuid const &)*arg2);
		}
		 catch(org::bcom::xpcf::Exception& e) { { SWIG_CSharpException(SWIG_RuntimeError, e.what()); return 0; } ; }
		 catch(const std::exception& e) { { SWIG_CSharpException(SWIG_RuntimeError, e.what()); return 0; } ; }
		 catch(...) { {SWIG_CSharpException(SWIG_UnknownError, "Unknown exception"); return 0; } ; }
	} 
  jresult = result ? new boost::shared_ptr< org::bcom::xpcf::IComponentIntrospect >(result) : 0;
  return jresult;
}

#ifdef __cplusplus
}
#endif

%}


%include "xpcf/collection/IEnumerable.i"
%include "xpcf/core/traits.i"
%include "xpcf/api/InterfaceMetadata.i"


%ignore org::bcom::xpcf::IComponentIntrospect::getMetadata;

%typemap(csclassmodifiers) org::bcom::xpcf::IComponentIntrospect "public partial class"

%include "xpcf/api/IComponentIntrospect.h"

%template(queryInterface)		org::bcom::xpcf::IComponentIntrospect::queryInterface<org::bcom::xpcf::IComponentIntrospect>;

%template(bindTo_IConfigurable)		org::bcom::xpcf::IComponentIntrospect::bindTo<xpcf::IConfigurable>;

%template(bindTo_ICamera)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::input::devices::ICamera>;

%template(bindTo_IImageViewer)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::display::IImageViewer>;
%template(bindTo_I3DOverlay)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::display::I3DOverlay>;
%template(bindTo_I2DOverlay)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::display::I2DOverlay>;

%template(bindTo_IContoursExtractor)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::features::IContoursExtractor>;
%template(bindTo_IContoursFilter)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::features::IContoursFilter>;
%template(bindTo_IDescriptorsExtractorSBPattern)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::features::IDescriptorsExtractorSBPattern>;
%template(bindTo_IDescriptorMatcher)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::features::IDescriptorMatcher>;
%template(bindTo_ISBPatternReIndexer)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::features::ISBPatternReIndexer>;

%template(bindTo_IImageFilter)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::image::IImageFilter>;
%template(bindTo_IImageConvertor)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::image::IImageConvertor>;
%template(bindTo_IPerspectiveController)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::image::IPerspectiveController>;

%template(bindTo_IMarker2DSquaredBinary)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::input::files::IMarker2DSquaredBinary>;

%template(bindTo_IImage2WorldMapper)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::geom::IImage2WorldMapper>;

%template(bindTo_I3DTransformFinderFrom2D3D)		org::bcom::xpcf::IComponentIntrospect::bindTo<SolAR::api::solver::pose::I3DTransformFinderFrom2D3D>;
