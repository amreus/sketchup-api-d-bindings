module sketchup_api.model.edge;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUEdgeToEntity (SUEdgeRef edge);

SUEdgeRef SUEdgeFromEntity (SUEntityRef entity);

SUDrawingElementRef SUEdgeToDrawingElement (SUEdgeRef edge);

SUEdgeRef SUEdgeFromDrawingElement (SUDrawingElementRef drawing_elem);

SUResult SUEdgeCreate (
    SUEdgeRef* edge,
    const(SUPoint3D)* start,
    const(SUPoint3D)* end);

SUResult SUEdgeRelease (SUEdgeRef* edge);

SUResult SUEdgeGetCurve (SUEdgeRef edge, SUCurveRef* curve);

SUResult SUEdgeGetStartVertex (SUEdgeRef edge, SUVertexRef* vertex);

SUResult SUEdgeGetEndVertex (SUEdgeRef edge, SUVertexRef* vertex);

SUResult SUEdgeSetSoft (SUEdgeRef edge, bool soft_flag);

SUResult SUEdgeGetSoft (SUEdgeRef edge, bool* soft_flag);

SUResult SUEdgeSetSmooth (SUEdgeRef edge, bool smooth_flag);

SUResult SUEdgeGetSmooth (SUEdgeRef edge, bool* smooth_flag);

SUResult SUEdgeGetNumFaces (SUEdgeRef edge, size_t* count);

SUResult SUEdgeGetFaces (
    SUEdgeRef edge,
    size_t len,
    SUFaceRef* faces,
    size_t* count);

SUResult SUEdgeGetColor (SUEdgeRef edge, SUColor* color);

SUResult SUEdgeGetLengthWithTransform (
    SUEdgeRef edge,
    const(SUTransformation)* transform,
    double* length);

SUResult SUEdgeSetColor (SUEdgeRef edge, const(SUColor)* color);
