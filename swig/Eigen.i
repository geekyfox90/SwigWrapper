namespace Eigen {
template <class T, int Rows, int Cols>
class Matrix {};
}

namespace SolAR{namespace datastructure{
template <class T, int Dim>
class Transform {};
template <class T, int Rows>
class Vector {};
}}

%template(Matrix3x3) Eigen::Matrix<float, 3, 3>;
%template(CamDistortion) Eigen::Matrix<float, 5, 1>;
%template(Transform2Df) SolAR::datastructure::Transform<float, 2>;

%shared_ptr(SolAR::datastructure::Transform<float, 3>)
%template(Transform3Df) SolAR::datastructure::Transform<float, 3>;

%shared_ptr(SolAR::datastructure::Vector<float, 3>)
%template(Vector3f) SolAR::datastructure::Vector<float, 3>;

namespace SolAR{namespace datastructure{
	class Point2Df
	{
	public:
		Point2Df(float x=0, float y=0): x{x}, y{y} {}
		inline ~Point2Df() {}
		inline float getX() const { return x;}
		inline float getY() const { return y;}
		inline void setX(float x) { this->x = x;}
		inline void setY(float y) { this->y = y;}

	private:
		float x;
		float y;
	};
}}
%ignore Point2Df;

namespace SolAR{namespace datastructure{
	class Point3Df
	{
	public:
		Point3Df(float x=0, float y=0, float z=0): x{x}, y{y}, z{z} {}
		inline ~Point3Df() {}
		inline float getX() const { return x;}
		inline float getY() const { return y;}
		inline float getZ() const { return z;}
		inline void setX(float x) { this->x = x;}
		inline void setY(float y) { this->y = y;}
		inline void setZ(float z) { this->z = z;}

	private:
		float x;
		float y;
		float z;
	};
}}
%ignore Point3Df;

namespace SolAR{namespace datastructure{
	class Point2Di
	{
	public:
		Point2Di(int x=0, int y=0): x{x}, y{y} {}
		inline ~Point2Di() {}
		inline int getX() const { return x;}
		inline int getY() const { return y;}
		inline void setX(int x) { this->x = x;}
		inline void setY(int y) { this->y = y;}

	private:
		int x;
		int y;
	};
}}
%ignore Point2Di;

namespace SolAR{namespace datastructure{
	class Point3Di
	{
	public:
		Point3Di(int x=0, int y=0, int z=0): x{x}, y{y}, z{z} {}
		inline ~Point3Di() {}
		inline int getX() const { return x;}
		inline int getY() const { return y;}
		inline int getZ() const { return z;}
		inline void setX(int x) { this->x = x;}
		inline void setY(int y) { this->y = y;}
		inline void setZ(int z) { this->z = z;}

	private:
		int x;
		int y;
		int z;
	};
}}
%ignore Point3Di;








// TODO
/*
class Vector5f
{
public:
	float x;
	float y;
	float z;
	float u;
	float v;
};
*/

/*
namespace SolAR
{
    namespace datastructure
    {
        class SimpleCamDistortion
        {
        public:
            float x;
            float y;
            float z;
            float u;
            float v;
        };
        
        //%typemap(cstype) CamDistortion MyCamDistortion;
    }
}
*/

/*
%typemap(csin) SolAR::datastructure::MyCamDistortion {
    $1(0) = $input.x;
    $1(1) = $input.y;
    $1(2) = $input.z;
    $1(3) = $input.u;
    $1(4) = $input.v;
}

%typemap(csout) SolAR::datastructure::MyCamDistortion {
    $result.x = $1(0);
    $result.y = $1(1);
    $result.z = $1(2);
    $result.u = $1(3);
    $result.v = $1(4);
}
*/

/*
namespace SolAR
{
    namespace datastructure
    {
        class Matrix2x2f
        {
        public:
            float r1x1;
            float r1x2;
            float r2x1;
            float r2x2;
        };
    
        class Matrix3x3f
        {
        public:
            float r1x1;
            float r1x2;
            float r1x3;
            float r2x1;
            float r2x2;
            float r2x3;
            float r3x1;
            float r3x2;
            float r3x3;
        };
        
        class Matrix4x4f
        {
        public:
            float r1x1;
            float r1x2;
            float r1x3;
            float r1x4;
            float r2x1;
            float r2x2;
            float r2x3;
            float r2x4;
            float r3x1;
            float r3x2;
            float r3x3;
            float r3x4;
            float r4x1;
            float r4x2;
            float r4x3;
            float r4x4;
        };
        
        class Vector3f
        {
        public:
            float x;
            float y;
            float z;
        };
        
        class Vector4f
        {
        public:
            float x;
            float y;
            float z;
            float u;
        };
        
        class Vector5f
        {
        public:
            float x;
            float y;
            float z;
            float u;
            float v;
        };

        using CamCalibration = Matrix3x3f;
        using CamDistortion = Vector5f;
        using Transform2Df = Matrix3x3f;
        using Transform3Df = Matrix4x4f;
        using RotationMatrixf = Matrix3x3f;
    }
}
*/

/* RENAME
%rename(ProjectionMatrix) SolAR::datastructure::ProjectionMatrix;
//%rename(RotationMatrixf) SolAR::datastructure::RotationMatrixf;
//%rename(CamCalibration) SolAR::datastructure::CamCalibration;
%rename(Matrix3x3) SolAR::datastructure::CamCalibration; // Fix conflict
%rename(CamDistortion) SolAR::datastructure::CamDistortion;

%rename(PoseMatrix) SolAR::datastructure::PoseMatrix;

%rename(Vector4f) SolAR::datastructure::Vector4f;
%rename(Vector3f) SolAR::datastructure::Vector3f;
%rename(Vector3d) SolAR::datastructure::Vector3d;

%rename(Transform3Df) SolAR::datastructure::Transform3Df;
%rename(Transform2Df) SolAR::datastructure::Transform2Df;

%rename(Translation3Df) SolAR::datastructure::Translation3Df;
%rename(Translation2Df) SolAR::datastructure::Translation2Df;

%rename(Quaternionf) SolAR::datastructure::Quaternionf;
/* */

/* TEMPLATE
%template(ProjectionMatrix) SRef<SolAR::datastructure::ProjectionMatrix>;
//%template(RotationMatrixf) SRef<SolAR::datastructure::RotationMatrixf>;
//%template(CamCalibration) SRef<SolAR::datastructure::CamCalibration>;
%template(Matrix3x3) SRef<SolAR::datastructure::CamCalibration>; // Fix conflict
%template(CamDistortion) SRef<SolAR::datastructure::CamDistortion>;

%template(PoseMatrix) SRef<SolAR::datastructure::PoseMatrix>;

%template(Vector4f) SRef<SolAR::datastructure::Vector4f>;
%template(Vector3f) SRef<SolAR::datastructure::Vector3f>;
%template(Vector3d) SRef<SolAR::datastructure::Vector3d>;

%template(Transform3Df) SRef<SolAR::datastructure::Transform3Df>;
%template(Transform2Df) SRef<SolAR::datastructure::Transform2Df>;

%template(Translation3Df) SRef<SolAR::datastructure::Translation3Df>;
%template(Translation2Df) SRef<SolAR::datastructure::Translation2Df>;

%template(Quaternionf) SRef<SolAR::datastructure::Quaternionf>;
/* */

/* MORE ???
%template(BoolMatrix) SolAR::datastructure::Matrix<bool, SolAR::datastructure::Maths::Dynamic, SolAR::datastructure::Maths::Dynamic>;
%template(FloatMatrix3x3) SolAR::datastructure::Matrix<float, 3, 3>;
%template(FloatVector5) SolAR::datastructure::Matrix<float, 5, 1>;
%template(Trans2D) SolAR::datastructure::Transform<float, 2>;
%template(Trans3D) SolAR::datastructure::Transform<float, 3>;
%template(Vec3) SolAR::datastructure::Vector<float, 3>;
/* */
