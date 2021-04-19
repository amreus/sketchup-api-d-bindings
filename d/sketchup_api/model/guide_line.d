module sketchup_api.model.guide_line;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUGuideLineToEntity (SUGuideLineRef guide_line);

SUGuideLineRef SUGuideLineFromEntity (SUEntityRef entity);

SUDrawingElementRef SUGuideLineToDrawingElement (SUGuideLineRef guide_line);

SUGuideLineRef SUGuideLineFromDrawingElement (SUDrawingElementRef drawing_elem);

SUResult SUGuideLineCreateFinite (
    SUGuideLineRef* guide_line,
    const(SUPoint3D)* start,
    const(SUPoint3D)* end);

SUResult SUGuideLineCreateInfinite (
    SUGuideLineRef* guide_line,
    const(SUPoint3D)* point,
    const(SUVector3D)* direction);

SUResult SUGuideLineRelease (SUGuideLineRef* guide_line);

SUResult SUGuideLineGetData (
    SUGuideLineRef guide_line,
    SUPoint3D* start,
    SUVector3D* direction,
    bool* isinfinite);
