module sketchup_api.geometry.plane3d;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUPlane3DSetWithPoints (
    SUPlane3D* plane,
    const(SUPoint3D)* point1,
    const(SUPoint3D)* point2,
    const(SUPoint3D)* point3);

SUResult SUPlane3DSetWithPointAndNormal (
    SUPlane3D* plane,
    const(SUPoint3D)* point,
    const(SUVector3D)* normal);

SUResult SUPlane3DSetWithCoefficients (
    SUPlane3D* plane,
    double a,
    double b,
    double c,
    double d);

SUResult SUPlane3DGetPosition (const(SUPlane3D)* plane, SUPoint3D* position);

SUResult SUPlane3DGetNormal (const(SUPlane3D)* plane, SUVector3D* normal);

SUResult SUPlane3DIsOn (
    const(SUPlane3D)* plane,
    const(SUPoint3D)* point,
    bool* is_on);

SUResult SUPlane3DDistanceTo (
    const(SUPlane3D)* plane,
    const(SUPoint3D)* point,
    double* distance);

SUResult SUPlane3DProjectTo (
    const(SUPlane3D)* plane,
    const(SUPoint3D)* point,
    SUPoint3D* projected_point);

SUResult SUPlane3DTransform (
    const(SUTransformation)* transform,
    SUPlane3D* plane);
