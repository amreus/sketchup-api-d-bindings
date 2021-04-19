module sketchup_api.geometry.point2d;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUPoint2DToSUPoint2D (
    const(SUPoint2D)* point1,
    const(SUPoint2D)* point2,
    SUVector2D* vector);

SUResult SUPoint2DGetEqual (
    const(SUPoint2D)* point1,
    const(SUPoint2D)* point2,
    bool* equal);

SUResult SUPoint2DOffset (
    const(SUPoint2D)* point1,
    const(SUVector2D)* vector,
    SUPoint2D* point2);

SUResult SUPoint2DDistanceToSUPoint2D (
    const(SUPoint2D)* point1,
    const(SUPoint2D)* point2,
    double* distance);

SUResult SUPoint2DTransform (
    const(SUTransformation2D)* transform,
    SUPoint2D* point);
