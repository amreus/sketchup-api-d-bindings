module sketchup_api.model.image_rep;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

struct SUColorOrder
{
    short red_index;

    short green_index;

    short blue_index;

    short alpha_index;
}

SUColorOrder SUGetColorOrder ();

SUResult SUImageRepCreate (SUImageRepRef* image);

SUResult SUImageRepRelease (SUImageRepRef* image);

SUResult SUImageRepCopy (SUImageRepRef image, SUImageRepRef copy_image);

SUResult SUImageRepSetData (
    SUImageRepRef image,
    size_t width,
    size_t height,
    size_t bits_per_pixel,
    size_t row_padding,
    const(SUByte)* pixel_data);

SUResult SUImageRepLoadFile (SUImageRepRef image, const(char)* file_path);

SUResult SUImageRepSaveToFile (SUImageRepRef image, const(char)* file_path);

SUResult SUImageRepGetPixelDimensions (
    SUImageRepRef image,
    size_t* width,
    size_t* height);

SUResult SUImageRepGetRowPadding (SUImageRepRef image, size_t* row_padding);

SUResult SUImageRepResize (SUImageRepRef image, size_t width, size_t height);

SUResult SUImageRepConvertTo32BitsPerPixel (SUImageRepRef image);

SUResult SUImageRepGetDataSize (
    SUImageRepRef image,
    size_t* data_size,
    size_t* bits_per_pixel);

SUResult SUImageRepGetData (
    SUImageRepRef image,
    size_t data_size,
    SUByte* pixel_data);

SUResult SUImageRepGetDataAsColors (SUImageRepRef image, SUColor* color_data);

SUResult SUImageRepGetColorAtUV (
    SUImageRepRef image,
    double u,
    double v,
    bool bilinear,
    SUColor* color);
