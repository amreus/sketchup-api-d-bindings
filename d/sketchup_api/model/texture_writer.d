module sketchup_api.model.texture_writer;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

import core.stdc.config;

extern (C):

SUResult SUTextureWriterCreate (SUTextureWriterRef* writer);

SUResult SUTextureWriterRelease (SUTextureWriterRef* writer);

SUResult SUTextureWriterLoadEntity (
    SUTextureWriterRef writer,
    SUEntityRef entity,
    c_long* texture_id);

SUResult SUTextureWriterLoadFace (
    SUTextureWriterRef writer,
    SUFaceRef face,
    c_long* front_texture_id,
    c_long* back_texture_id);

SUResult SUTextureWriterGetNumTextures (
    SUTextureWriterRef writer,
    size_t* count);

SUResult SUTextureWriterWriteTexture (
    SUTextureWriterRef writer,
    c_long texture_id,
    const(char)* path,
    bool reduce_size);

SUResult SUTextureWriterGetImageRep (
    SUTextureWriterRef writer,
    c_long texture_id,
    SUImageRepRef* image);

SUResult SUTextureWriterWriteAllTextures (
    SUTextureWriterRef writer,
    const(char)* directory);

SUResult SUTextureWriterIsTextureAffine (
    SUTextureWriterRef writer,
    c_long texture_id,
    bool* is_affine);

SUResult SUTextureWriterGetTextureFilePath (
    SUTextureWriterRef writer,
    c_long texture_id,
    SUStringRef* file_path);

SUResult SUTextureWriterGetFrontFaceUVCoords (
    SUTextureWriterRef writer,
    SUFaceRef face,
    size_t len,
    const(SUPoint3D)* points,
    SUPoint2D* uv_coords);

SUResult SUTextureWriterGetBackFaceUVCoords (
    SUTextureWriterRef writer,
    SUFaceRef face,
    size_t len,
    const(SUPoint3D)* points,
    SUPoint2D* uv_coords);

SUResult SUTextureWriterGetTextureIdForEntity (
    SUTextureWriterRef writer,
    SUEntityRef entity,
    c_long* texture_id);

SUResult SUTextureWriterGetTextureIdForFace (
    SUTextureWriterRef writer,
    SUFaceRef face,
    bool front,
    c_long* texture_id);
