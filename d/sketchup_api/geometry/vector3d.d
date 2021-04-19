module sketchup_api.geometry.vector3d;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUVector3DCreate (
    SUVector3D* vector,
    const(SUPoint3D)* from,
    const(SUPoint3D)* to);

SUResult SUVector3DIsValid (const(SUVector3D)* vector, bool* valid);

SUResult SUVector3DIsParallelTo (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    bool* parallel);

SUResult SUVector3DIsPerpendicularTo (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    bool* perpendicular);

SUResult SUVector3DIsSameDirectionAs (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    bool* same_direction);

SUResult SUVector3DIsEqual (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    bool* equal);

SUResult SUVector3DLessThan (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    bool* less_than);

SUResult SUVector3DNormalize (SUVector3D* vector);

SUResult SUVector3DReverse (SUVector3D* vector);

SUResult SUVector3DDot (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    double* dot);

SUResult SUVector3DCross (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    SUVector3D* cross);

SUResult SUVector3DIsUnitVector (
    const(SUVector3D)* vector,
    bool* is_unit_vector);

SUResult SUVector3DGetLength (const(SUVector3D)* vector, double* length);

SUResult SUVector3DSetLength (SUVector3D* vector, double length);

SUResult SUVector3DAngleBetween (
    const(SUVector3D)* vector1,
    const(SUVector3D)* vector2,
    double* angle);

SUResult SUVector3DGetArbitraryAxes (
    const(SUVector3D)* z_axis,
    SUVector3D* x_axis,
    SUVector3D* y_axis);

SUResult SUVector3DTransform (
    const(SUTransformation)* transform,
    SUVector3D* vector);

SUResult SUVector3DLinearCombination (
    const(SUVector3D)* vectors,
    const(double)* weights,
    const size_t size,
    SUVector3D* vector);
