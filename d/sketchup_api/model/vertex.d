module sketchup_api.model.vertex;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUVertexToEntity (SUVertexRef vertex);

SUVertexRef SUVertexFromEntity (SUEntityRef entity);

SUResult SUVertexGetPosition (SUVertexRef vertex, SUPoint3D* position);

SUResult SUVertexSetPosition (SUVertexRef vertex, const(SUPoint3D)* position);

SUResult SUVertexGetNumEdges (SUVertexRef vertex, size_t* count);

SUResult SUVertexGetEdges (
    SUVertexRef vertex,
    size_t len,
    SUEdgeRef* edges,
    size_t* count);

SUResult SUVertexGetNumFaces (SUVertexRef vertex, size_t* count);

SUResult SUVertexGetFaces (
    SUVertexRef vertex,
    size_t len,
    SUFaceRef* faces,
    size_t* count);

SUResult SUVertexGetNumLoops (SUVertexRef vertex, size_t* count);

SUResult SUVertexGetLoops (
    SUVertexRef vertex,
    size_t len,
    SULoopRef* loops,
    size_t* count);
