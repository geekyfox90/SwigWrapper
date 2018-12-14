//%include <boost/uuid/uuid.i>
//%include <boost/uuid/uuid_generators.i>
//%include <boost/uuid/uuid_io.i>
//%include <string>

namespace boost {namespace uuids {}}

%ignore org::bcom::xpcf::toUUID(const std::string & uuidString);

//%rename (UUID) org::bcom::xpcf::uuids::uuid;

%include "xpcf/core/uuid.h"
