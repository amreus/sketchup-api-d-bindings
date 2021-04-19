module sketchup_api.model.texture;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUTextureToEntity (SUTextureRef texture);

SUTextureRef SUTextureFromEntity (SUEntityRef entity);

SUResult SUTextureCreateFromImageData (
    SUTextureRef* texture,
    size_t width,
    size_t height,
    size_t bits_per_pixel,
    const(SUByte)* pixel_data);

SUResult SUTextureCreateFromImageRep (
    SUTextureRef* texture,
    SUImageRepRef image);

SUResult SUTextureCreateFromFile (
    SUTextureRef* texture,
    const(char)* file_path,
    double s_scale,
    double t_scale);

SUResult SUTextureRelease (SUTextureRef* texture);

SUResult SUTextureGetDimensions (
    SUTextureRef texture,
    size_t* width,
    size_t* height,
    double* s_scale,
    double* t_scale);

SUResult SUTextureGetImageDataSize (
    SUTextureRef texture,
    size_t* data_size,
    size_t* bits_per_pixel);

SUResult SUTextureGetImageData (
    SUTextureRef texture,
    size_t data_size,
    SUByte* pixel_data);

SUResult SUTextureGetImageRep (SUTextureRef texture, SUImageRepRef* image);

SUResult SUTextureWriteToFile (SUTextureRef texture, const(char)* file_path);

SUResult SUTextureSetFileName (SUTextureRef texture, const(char)* name);

SUResult SUTextureGetFileName (SUTextureRef texture, SUStringRef* file_name);

SUResult SUTextureGetUseAlphaChannel (
    SUTextureRef texture,
    bool* alpha_channel_used);

SUResult SUTextureGetAverageColor (SUTextureRef texture, SUColor* color_val);

SUResult SUTextureGetColorizedImageRep (
    SUTextureRef texture,
    SUImageRepRef* image_rep);

SUResult SUTextureWriteOriginalToFile (
    SUTextureRef texture,
    const(char)* file_path);
