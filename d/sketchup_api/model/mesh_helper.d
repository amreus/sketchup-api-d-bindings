module sketchup_api.model.mesh_helper;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUMeshHelperCreate (SUMeshHelperRef* mesh_ref, SUFaceRef face_ref);

SUResult SUMeshHelperCreateWithTextureWriter (
    SUMeshHelperRef* mesh_ref,
    SUFaceRef face_ref,
    SUTextureWriterRef texture_writer_ref);

SUResult SUMeshHelperCreateWithUVHelper (
    SUMeshHelperRef* mesh_ref,
    SUFaceRef face_ref,
    SUUVHelperRef uv_helper_ref);

SUResult SUMeshHelperRelease (SUMeshHelperRef* mesh_ref);

SUResult SUMeshHelperGetNumTriangles (SUMeshHelperRef mesh_ref, size_t* count);

SUResult SUMeshHelperGetNumVertices (SUMeshHelperRef mesh_ref, size_t* count);

SUResult SUMeshHelperGetVertexIndices (
    SUMeshHelperRef mesh_ref,
    size_t len,
    size_t* indices,
    size_t* count);

SUResult SUMeshHelperGetVertices (
    SUMeshHelperRef mesh_ref,
    size_t len,
    SUPoint3D* vertices,
    size_t* count);

SUResult SUMeshHelperGetFrontSTQCoords (
    SUMeshHelperRef mesh_ref,
    size_t len,
    SUPoint3D* stq,
    size_t* count);

SUResult SUMeshHelperGetBackSTQCoords (
    SUMeshHelperRef mesh_ref,
    size_t len,
    SUPoint3D* stq,
    size_t* count);

SUResult SUMeshHelperGetNormals (
    SUMeshHelperRef mesh_ref,
    size_t len,
    SUVector3D* normals,
    size_t* count);
