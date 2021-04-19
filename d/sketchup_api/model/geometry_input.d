module sketchup_api.model.geometry_input;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

struct SUMaterialInput
{
    size_t num_uv_coords;

    SUPoint2D[4] uv_coords;

    size_t[4] vertex_indices;

    SUMaterialRef material;
}

SUResult SUGeometryInputCreate (SUGeometryInputRef* geom_input);

SUResult SUGeometryInputRelease (SUGeometryInputRef* geom_input);

SUResult SUGeometryInputAddVertex (
    SUGeometryInputRef geom_input,
    const(SUPoint3D)* point);

SUResult SUGeometryInputSetVertices (
    SUGeometryInputRef geom_input,
    size_t num_vertices,
    const(SUPoint3D)* points);

SUResult SUGeometryInputAddEdge (
    SUGeometryInputRef geom_input,
    size_t vertex0_index,
    size_t vertex1_index,
    size_t* added_edge_index);

SUResult SUGeometryInputEdgeSetHidden (
    SUGeometryInputRef geom_input,
    size_t edge_index,
    bool hidden);

SUResult SUGeometryInputEdgeSetSoft (
    SUGeometryInputRef geom_input,
    size_t edge_index,
    bool soft);

SUResult SUGeometryInputEdgeSetSmooth (
    SUGeometryInputRef geom_input,
    size_t edge_index,
    bool smooth);

SUResult SUGeometryInputEdgeSetMaterial (
    SUGeometryInputRef geom_input,
    size_t edge_index,
    SUMaterialRef material);

SUResult SUGeometryInputEdgeSetLayer (
    SUGeometryInputRef geom_input,
    size_t edge_index,
    SULayerRef layer);

SUResult SUGeometryInputAddCurve (
    SUGeometryInputRef geom_input,
    size_t num_edges,
    const(size_t)* edge_indices,
    size_t* added_curve_index);

SUResult SUGeometryInputAddArcCurve (
    SUGeometryInputRef geom_input,
    size_t start_point,
    size_t end_point,
    const(SUPoint3D)* center,
    const(SUVector3D)* normal,
    size_t num_segments,
    size_t* added_curve_index,
    size_t* control_edge_index);

SUResult SULoopInputCreate (SULoopInputRef* loop_input);

SUResult SULoopInputRelease (SULoopInputRef* loop_input);

SUResult SULoopInputAddVertexIndex (
    SULoopInputRef loop_input,
    size_t vertex_index);

SUResult SULoopInputEdgeSetHidden (
    SULoopInputRef loop_input,
    size_t edge_index,
    bool hidden);

SUResult SULoopInputEdgeSetSoft (
    SULoopInputRef loop_input,
    size_t edge_index,
    bool soft);

SUResult SULoopInputEdgeSetSmooth (
    SULoopInputRef loop_input,
    size_t edge_index,
    bool smooth);

SUResult SULoopInputEdgeSetMaterial (
    SULoopInputRef loop_input,
    size_t edge_index,
    SUMaterialRef material);

SUResult SULoopInputEdgeSetLayer (
    SULoopInputRef loop_input,
    size_t edge_index,
    SULayerRef layer);

SUResult SULoopInputAddCurve (
    SULoopInputRef loop_input,
    size_t first_edge_index,
    size_t last_edge_index);

SUResult SULoopInputIsClosed (SULoopInputRef loop_input, bool* is_closed);

SUResult SUGeometryInputAddFace (
    SUGeometryInputRef geom_input,
    SULoopInputRef* outer_loop,
    size_t* added_face_index);

SUResult SUGeometryInputFaceSetReverse (
    SUGeometryInputRef geom_input,
    size_t face_index,
    bool reverse);

SUResult SUGeometryInputFaceSetLayer (
    SUGeometryInputRef geom_input,
    size_t face_index,
    SULayerRef layer);

SUResult SUGeometryInputFaceAddInnerLoop (
    SUGeometryInputRef geom_input,
    size_t face_index,
    SULoopInputRef* loop_input);

SUResult SUGeometryInputFaceSetFrontMaterial (
    SUGeometryInputRef geom_input,
    size_t face_index,
    const(SUMaterialInput)* material_input);

SUResult SUGeometryInputFaceSetBackMaterial (
    SUGeometryInputRef geom_input,
    size_t face_index,
    const(SUMaterialInput)* material_input);

SUResult SUGeometryInputFaceSetHidden (
    SUGeometryInputRef geom_input,
    size_t face_index,
    bool hidden);

SUResult SUGeometryInputGetCounts (
    SUGeometryInputRef geom_input,
    size_t* vertices_count,
    size_t* faces_count,
    size_t* edge_count,
    size_t* curve_count,
    size_t* arc_count);
