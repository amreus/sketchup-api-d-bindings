module sketchup_api.model.dimension_style;

import sketchup_api.common; // SUResult
import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef
//import sketchup_api.geom;
import sketchup_api.model.defs;
import sketchup_api.model.arrow_type;

extern (C):

SUResult SUDimensionStyleGetFont (SUDimensionStyleRef style, SUFontRef* font);

SUResult SUDimensionStyleGet3D (SUDimensionStyleRef style, bool* has_3d);

SUResult SUDimensionStyleGetArrowType (SUDimensionStyleRef style, SUArrowType* type);

SUResult SUDimensionStyleGetArrowSize (SUDimensionStyleRef style, size_t* size);

SUResult SUDimensionStyleGetColor (SUDimensionStyleRef style, SUColor* color);

SUResult SUDimensionStyleGetTextColor (
    SUDimensionStyleRef style,
    SUColor* color);

SUResult SUDimensionStyleGetExtensionLineOffset (
    SUDimensionStyleRef style,
    size_t* offset);

SUResult SUDimensionStyleGetExtensionLineOvershoot (
    SUDimensionStyleRef style,
    size_t* overshoot);

SUResult SUDimensionStyleGetLineWeight (
    SUDimensionStyleRef style,
    size_t* weight);

SUResult SUDimensionStyleGetHighlightNonAssociativeDimensions (
    SUDimensionStyleRef style,
    bool* highlight);

SUResult SUDimensionStyleGetHighlightNonAssociativeDimensionsColor (
    SUDimensionStyleRef style,
    SUColor* color);

SUResult SUDimensionStyleGetShowRadialPrefix (
    SUDimensionStyleRef style,
    bool* show);

SUResult SUDimensionStyleGetHideOutOfPlane (
    SUDimensionStyleRef style,
    bool* hide);

SUResult SUDimensionStyleGetHideOutOfPlaneValue (
    SUDimensionStyleRef style,
    double* tolerance);

SUResult SUDimensionStyleGetHideSmall (SUDimensionStyleRef style, bool* hide);

SUResult SUDimensionStyleGetHideSmallValue (
    SUDimensionStyleRef style,
    double* tolerance);
