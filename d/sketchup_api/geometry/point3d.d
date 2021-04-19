module sketchup_api.geometry.point3d;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUPoint3DGetEqual (
    const(SUPoint3D)* point1,
    const(SUPoint3D)* point2,
    bool* equal);

SUResult SUPoint3DLessThan (
    const(SUPoint3D)* point1,
    const(SUPoint3D)* point2,
    bool* less_than);

SUResult SUPoint3DOffset (
    const(SUPoint3D)* point1,
    const(SUVector3D)* vector,
    SUPoint3D* point2);

SUResult SUPoint3DDistanceToSUPoint3D (
    const(SUPoint3D)* point1,
    const(SUPoint3D)* point2,
    double* distance);

SUResult SUPoint3DTransform (
    const(SUTransformation)* transform,
    SUPoint3D* point);
