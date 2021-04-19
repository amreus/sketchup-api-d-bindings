module sketchup_api.geom;

extern (C):

struct SUPoint2D
{
    double x;
    double y;
}

struct SUVector2D
{
    double x;
    double y;
}

struct SUPoint3D
{
    double x;
    double y;
    double z;
}

struct SUVector3D
{
    double x;
    double y;
    double z;
}

struct SUPlane3D
{
    double a;
    double b;
    double c;
    double d;
}

struct SUBoundingBox3D
{
    SUPoint3D min_point;

    SUPoint3D max_point;
}

struct SUAxisAlignedRect2D
{
    SUPoint2D upper_left;
    SUPoint2D lower_right;
}

struct SURay3D
{
    SUPoint3D point;
    SUVector3D normal;
}

struct SUTransformation
{
    double[16] values;
}

struct SUTransformation2D
{
    double m11;
    double m12;
    double m21;
    double m22;
    double tx;
    double ty;
}
