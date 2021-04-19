module sketchup_api.model.edge_use;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUEdgeUseToEntity (SUEdgeUseRef edgeuse);

SUEdgeUseRef SUEdgeUseFromEntity (SUEntityRef entity);

SUResult SUEdgeUseGetEdge (SUEdgeUseRef edgeuse, SUEdgeRef* edge);

SUResult SUEdgeUseGetLoop (SUEdgeUseRef edgeuse, SULoopRef* loop);

SUResult SUEdgeUseGetFace (SUEdgeUseRef edgeuse, SUFaceRef* face);

SUResult SUEdgeUseGetNumPartners (SUEdgeUseRef edgeuse, size_t* count);

SUResult SUEdgeUseGetPartners (
    SUEdgeUseRef edgeuse,
    size_t len,
    SUEdgeUseRef* partners,
    size_t* count);

SUResult SUEdgeUseIsReversed (SUEdgeUseRef edgeuse, bool* reversed);

SUResult SUEdgeUseGetPrevious (
    SUEdgeUseRef edgeuse,
    SUEdgeUseRef* prev_edgeuse);

SUResult SUEdgeUseGetNext (SUEdgeUseRef edgeuse, SUEdgeUseRef* next_edgeuse);

SUResult SUEdgeUseGetStartVertex (SUEdgeUseRef edgeuse, SUVertexRef* vertex);

SUResult SUEdgeUseGetEndVertex (SUEdgeUseRef edgeuse, SUVertexRef* vertex);

SUResult SUEdgeUseGetStartVertexNormal (
    SUEdgeUseRef edgeuse,
    SUVector3D* normal);

SUResult SUEdgeUseGetEndVertexNormal (SUEdgeUseRef edgeuse, SUVector3D* normal);
