module sketchup_api.model.loop;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

enum SULoopWinding
{
    SULoopWinding_CCW = 0,
    SULoopWinding_CW = 1
}

SUEntityRef SULoopToEntity (SULoopRef loop);

SULoopRef SULoopFromEntity (SUEntityRef entity);

SUResult SULoopGetNumVertices (SULoopRef loop, size_t* count);

SUResult SULoopGetVertices (
    SULoopRef loop,
    size_t len,
    SUVertexRef* vertices,
    size_t* count);

SUResult SULoopGetEdges (
    SULoopRef loop,
    size_t len,
    SUEdgeRef* edges,
    size_t* count);

SUResult SULoopGetWinding (
    SULoopRef loop,
    const(SUVector3D)* vector3d,
    SULoopWinding* orientation);

SUResult SULoopIsEdgeReversed (SULoopRef loop, SUEdgeRef edge, bool* reversed);

SUResult SULoopGetFace (SULoopRef loop, SUFaceRef* face);

SUResult SULoopIsConvex (SULoopRef loop, bool* convex);

SUResult SULoopIsOuterLoop (SULoopRef loop, bool* outer_loop);

SUResult SULoopGetEdgeUses (
    SULoopRef loop,
    size_t len,
    SUEdgeUseRef* edge_uses,
    size_t* count);
