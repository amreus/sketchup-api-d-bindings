module sketchup_api.model.uv_helper;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

struct SUUVQ
{
    double u;
    double v;
    double q;
}

SUResult SUUVHelperRelease (SUUVHelperRef* uvhelper);

SUResult SUUVHelperGetFrontUVQ (
    SUUVHelperRef uvhelper,
    const(SUPoint3D)* point,
    SUUVQ* uvq);

SUResult SUUVHelperGetBackUVQ (
    SUUVHelperRef uvhelper,
    const(SUPoint3D)* point,
    SUUVQ* uvq);
