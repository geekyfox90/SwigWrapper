//%include "datastructure/MathDefinitions.i"
//%include "core/SolARFrameworkDefinitions.i"

//TODO
//*
namespace SolAR
{
    namespace datastructure
    {
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
    }
}

%ignore Point2Df;
%ignore Point3Df;
%ignore Point2Di;
%ignore Point3Di;
/* */

%include "interfaces/datastructure/GeometryDefinitions.h"

//%template(Contour2Df) SRef<SolAR::datastructure::Contour2Df>;
//%template(Contour2Di) SRef<SolAR::datastructure::Contour2Di>;
//%template(Point2Df) SRef<SolAR::datastructure::Point2Df>;
//%template(Point2Di) SRef<SolAR::datastructure::Point2Di>;

