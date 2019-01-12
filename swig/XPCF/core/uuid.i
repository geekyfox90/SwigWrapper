//%include <boost/uuid/uuid.i>
//%include <boost/uuid/uuid_generators.i>
//%include <boost/uuid/uuid_io.i>
//%include <string>

%rename (UUID) boost::uuids::uuid;

namespace boost {namespace uuids {class uuid{};}}

%csmethodmodifiers boost::uuids::uuid::ToString %{public override%};

%extend boost::uuids::uuid
{
	%proxycode
	%{
		public static implicit operator UUID(string uuidString)
		{
			return new UUID(uuidString);
		}
		
		public static implicit operator string(UUID uuid)
		{
			return uuid.ToString();
		}
	%}

	uuid(const char* uuidString)
	{
		return new boost::uuids::uuid(org::bcom::xpcf::toUUID(uuidString));
	}
	const std::string ToString()
	{
		return boost::uuids::to_string(*self);
	}
}

%ignore org::bcom::xpcf::toUUID(const char * uuidString);
%ignore org::bcom::xpcf::toUUID(const std::string & uuidString);

%include "xpcf/core/uuid.h"
