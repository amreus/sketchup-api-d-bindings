module sketchup_api.model.line_styles;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SULineStylesGetNumLineStyles (
    SULineStylesRef line_styles,
    size_t* count);

SUResult SULineStylesGetLineStyleNames (
    SULineStylesRef line_styles,
    size_t len,
    SUStringRef* line_styles_provider_names,
    size_t* count);

SUResult SULineStylesGetLineStyleByName (
    SULineStylesRef line_styles,
    const(char)* name,
    SULineStyleRef* line_style);
