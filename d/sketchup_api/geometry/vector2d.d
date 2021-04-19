module sketchup_api.geometry.vector2d;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUVector2DCreate (
    SUVector2D* vector,
    const(SUPoint2D)* from,
    const(SUPoint2D)* to);

SUResult SUVector2DIsValid (const(SUVector2D)* vector, bool* valid);

SUResult SUVector2DIsParallelTo (
    const(SUVector2D)* vector1,
    const(SUVector2D)* vector2,
    bool* parallel);

SUResult SUVector2DIsPerpendicularTo (
    const(SUVector2D)* vector1,
    const(SUVector2D)* vector2,
    bool* perpendicular);

SUResult SUVector2DIsSameDirectionAs (
    const(SUVector2D)* vector1,
    const(SUVector2D)* vector2,
    bool* same_direction);

SUResult SUVector2DIsEqual (
    const(SUVector2D)* vector1,
    const(SUVector2D)* vector2,
    bool* equal);

SUResult SUVector2DNormalize (SUVector2D* vector);

SUResult SUVector2DReverse (SUVector2D* vector);

SUResult SUVector2DDot (
    const(SUVector2D)* vector1,
    const(SUVector2D)* vector2,
    double* dot);

SUResult SUVector2DCross (
    const(SUVector2D)* vector1,
    const(SUVector2D)* vector2,
    double* cross);

SUResult SUVector2DIsUnitVector (
    const(SUVector2D)* vector,
    bool* is_unit_vector);

SUResult SUVector2DGetLength (const(SUVector2D)* vector, double* length);

SUResult SUVector2DSetLength (SUVector2D* vector, double length);

SUResult SUVector2DAngleBetween (
    const(SUVector2D)* vector1,
    const(SUVector2D)* vector2,
    double* angle);

SUResult SUVector2DTransform (
    const(SUTransformation2D)* transform,
    SUVector2D* vector);
