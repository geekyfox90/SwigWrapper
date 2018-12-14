%include "xpcf/core/uuid.i"
%include "xpcf/xpcf_api_define.i"
%include "xpcf/core/XPCFErrorCode.i"
//%include <exception>
//%include <string>

%ignore std::runtime_error;
namespace std{
	class runtime_error {};
}

%ignore org::bcom::xpcf::Exception::Exception(const std::string & what, XPCFErrorCode errCode = XPCFErrorCode::_FAIL);
%ignore org::bcom::xpcf::AccessDeniedException::AccessDeniedException(const std::string & what);
%ignore org::bcom::xpcf::IllegalStateException::IllegalStateException(const std::string & what);
%ignore org::bcom::xpcf::ModuleException::ModuleException(const std::string & what, XPCFErrorCode errCode = XPCFErrorCode::_FAIL);
%ignore org::bcom::xpcf::NotImplementedException::NotImplementedException(const std::string & what);
%ignore org::bcom::xpcf::NullPointerException::NullPointerException(const std::string & what);
%ignore org::bcom::xpcf::TimeoutException::TimeoutException(const std::string & what);
%ignore org::bcom::xpcf::UUIDNotFoundException::UUIDNotFoundException(const std::string & what, XPCFErrorCode errCode = XPCFErrorCode::_FAIL);
%ignore org::bcom::xpcf::ComponentNotFoundException::ComponentNotFoundException(const std::string & what);
%ignore org::bcom::xpcf::InterfaceNotImplementedException::InterfaceNotImplementedException(const std::string & what);
%ignore org::bcom::xpcf::ModuleNotFoundException::ModuleNotFoundException(const std::string & what);

%include "xpcf/core/Exception.h"
