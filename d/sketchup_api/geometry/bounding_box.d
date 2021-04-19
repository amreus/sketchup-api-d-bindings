module sketchup_api.geometry.bounding_box;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUBoundingBox3DGetMidPoint (
    const(SUBoundingBox3D)* bounding_box,
    SUPoint3D* mid_point);
