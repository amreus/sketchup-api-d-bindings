module sketchup_api.model.curve;

import sketchup_api.common;
//import sketchup_api.defs;
//import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

enum SUCurveType
{
    SUCurveType_Simple = 0,
    SUCurveType_Arc = 1
}

SUEntityRef SUCurveToEntity (SUCurveRef curve);

SUCurveRef SUCurveFromEntity (SUEntityRef entity);

SUResult SUCurveCreateWithEdges (
    SUCurveRef* curve,
    const(SUEdgeRef)* edges,
    size_t len);

SUResult SUCurveRelease (SUCurveRef* curve);

SUResult SUCurveGetType (SUCurveRef curve, SUCurveType* type);

SUResult SUCurveGetNumEdges (SUCurveRef curve, size_t* count);

SUResult SUCurveGetEdges (
    SUCurveRef curve,
    size_t len,
    SUEdgeRef* edges,
    size_t* count);
