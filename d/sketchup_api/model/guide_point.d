module sketchup_api.model.guide_point;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUGuidePointToEntity (SUGuidePointRef guide_point);

SUGuidePointRef SUGuidePointFromEntity (SUEntityRef entity);

SUDrawingElementRef SUGuidePointToDrawingElement (SUGuidePointRef guide_point);

SUGuidePointRef SUGuidePointFromDrawingElement (
    SUDrawingElementRef drawing_elem);

SUResult SUGuidePointCreate (
    SUGuidePointRef* guide_point,
    const(SUPoint3D)* position);

SUResult SUGuidePointRelease (SUGuidePointRef* guide_point);

SUResult SUGuidePointGetPosition (
    SUGuidePointRef guide_point,
    SUPoint3D* position);

SUResult SUGuidePointGetFromPosition (
    SUGuidePointRef guide_point,
    SUPoint3D* position);

SUResult SUGuidePointGetDisplayAsLine (
    SUGuidePointRef guide_point,
    bool* as_line);
