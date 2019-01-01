//%include <boost/uuid/uuid.i>
//%include <boost/uuid/uuid_generators.i>
//%include <boost/uuid/uuid_io.i>
//%include <string>

%typemap(csclassmodifiers) boost::uuids::uuid "public partial class"
%rename (UUID) boost::uuids::uuid;

namespace boost {namespace uuids {class uuid {};}}

%ignore org::bcom::xpcf::toUUID(const std::string & uuidString);

%include "xpcf/core/uuid.h"
