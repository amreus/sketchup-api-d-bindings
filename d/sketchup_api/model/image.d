module sketchup_api.model.image;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

alias SUByte = ubyte;

SUEntityRef SUImageToEntity (SUImageRef image);

SUImageRef SUImageFromEntity (SUEntityRef entity);

SUDrawingElementRef SUImageToDrawingElement (SUImageRef image);

SUImageRef SUImageFromDrawingElement (SUDrawingElementRef drawing_elem);

SUResult SUImageCreateFromFile (SUImageRef* image, const(char)* file_path);

SUResult SUImageCreateFromImageRep (SUImageRef* image, SUImageRepRef image_rep);

SUResult SUImageGetImageRep (SUImageRef image, SUImageRepRef* image_rep);

SUResult SUImageGetName (SUImageRef image, SUStringRef* name);

SUResult SUImageSetName (SUImageRef image, const(char)* name);

SUResult SUImageGetTransform (SUImageRef image, SUTransformation* transform);

SUResult SUImageSetTransform (
    SUImageRef image,
    const(SUTransformation)* transform);

SUResult SUImageGetFileName (SUImageRef image, SUStringRef* file_name);

SUResult SUImageGetDimensions (SUImageRef image, double* width, double* height);

SUResult SUImageGetPixelDimensions (
    SUImageRef image,
    size_t* width,
    size_t* height);

SUResult SUImageGetDataSize (
    SUImageRef image,
    size_t* data_size,
    size_t* bits_per_pixel);

SUResult SUImageGetData (
    SUImageRef image,
    size_t data_size,
    SUByte* pixel_data);
