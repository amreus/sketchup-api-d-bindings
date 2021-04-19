module sketchup_api.geometry.ray3d;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SURay3DIsOn (
    const(SURay3D)* ray,
    const(SUPoint3D)* point,
    bool* is_on);

SUResult SURay3DDistanceTo (
    const(SURay3D)* ray,
    const(SUPoint3D)* point,
    double* distance);

SUResult SURay3DProjectTo (
    const(SURay3D)* ray,
    const(SUPoint3D)* point,
    SUPoint3D* projected_point);
