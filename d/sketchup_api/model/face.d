module sketchup_api.model.face;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

import core.stdc.config;

extern (C):

SUEntityRef SUFaceToEntity (SUFaceRef face);

SUFaceRef SUFaceFromEntity (SUEntityRef entity);

SUDrawingElementRef SUFaceToDrawingElement (SUFaceRef face);

SUFaceRef SUFaceFromDrawingElement (SUDrawingElementRef drawing_elem);

SUResult SUFaceCreate (
    SUFaceRef* face,
    const(SUPoint3D)* vertices3d,
    SULoopInputRef* outer_loop);

SUResult SUFaceCreateSimple (
    SUFaceRef* face,
    const(SUPoint3D)* vertices3d,
    size_t len);

SUResult SUFaceGetNormal (SUFaceRef face, SUVector3D* normal);

SUResult SUFaceRelease (SUFaceRef* face);

SUResult SUFaceGetNumEdges (SUFaceRef face, size_t* count);

SUResult SUFaceGetEdges (
    SUFaceRef face,
    size_t len,
    SUEdgeRef* edges,
    size_t* count);

SUResult SUFaceGetNumEdgeUses (SUFaceRef face, size_t* count);

SUResult SUFaceGetEdgeUses (
    SUFaceRef face,
    size_t len,
    SUEdgeUseRef* edges,
    size_t* count);

SUResult SUFaceGetPlane (SUFaceRef face, SUPlane3D* plane);

SUResult SUFaceGetNumVertices (SUFaceRef face, size_t* count);

SUResult SUFaceGetVertices (
    SUFaceRef face,
    size_t len,
    SUVertexRef* vertices,
    size_t* count);

SUResult SUFaceGetOuterLoop (SUFaceRef face, SULoopRef* loop);

SUResult SUFaceGetNumInnerLoops (SUFaceRef face, size_t* count);

SUResult SUFaceGetInnerLoops (
    SUFaceRef face,
    size_t len,
    SULoopRef* loops,
    size_t* count);

SUResult SUFaceAddInnerLoop (
    SUFaceRef face,
    const(SUPoint3D)* vertices3d,
    SULoopInputRef* loop);

SUResult SUFaceGetNumOpenings (SUFaceRef face, size_t* count);

SUResult SUFaceGetOpenings (
    SUFaceRef face,
    size_t len,
    SUOpeningRef* openings,
    size_t* count);

SUResult SUFaceGetFrontMaterial (SUFaceRef face, SUMaterialRef* material);

SUResult SUFaceSetFrontMaterial (SUFaceRef face, SUMaterialRef material);

SUResult SUFaceGetBackMaterial (SUFaceRef face, SUMaterialRef* material);

SUResult SUFaceSetBackMaterial (SUFaceRef face, SUMaterialRef material);

SUResult SUFaceIsFrontMaterialAffine (SUFaceRef face, bool* is_affine);

SUResult SUFaceIsBackMaterialAffine (SUFaceRef face, bool* is_affine);

SUResult SUFaceGetArea (SUFaceRef face, double* area);

SUResult SUFaceGetAreaWithTransform (
    SUFaceRef face,
    const(SUTransformation)* transform,
    double* area);

SUResult SUFaceIsComplex (SUFaceRef face, bool* is_complex);

SUResult SUFaceGetUVHelper (
    SUFaceRef face,
    bool front,
    bool back,
    SUTextureWriterRef texture_writer,
    SUUVHelperRef* uv_helper);

SUResult SUFaceGetUVHelperWithTextureHandle (
    SUFaceRef face,
    bool front,
    bool back,
    SUTextureWriterRef texture_writer,
    c_long textureHandle,
    SUUVHelperRef* uv_helper);

SUResult SUFaceGetNumAttachedDrawingElements (SUFaceRef face, size_t* count);

SUResult SUFaceGetAttachedDrawingElements (
    SUFaceRef face,
    size_t len,
    SUDrawingElementRef* elems,
    size_t* count);

SUResult SUFaceReverse (SUFaceRef face);
