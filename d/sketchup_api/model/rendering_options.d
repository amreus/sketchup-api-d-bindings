module sketchup_api.model.rendering_options;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SURenderingOptionsGetNumKeys (
    SURenderingOptionsRef rendering_options,
    size_t* count);

SUResult SURenderingOptionsGetKeys (
    SURenderingOptionsRef rendering_options,
    size_t len,
    SUStringRef* keys,
    size_t* count);

SUResult SURenderingOptionsSetValue (
    SURenderingOptionsRef rendering_options,
    const(char)* key,
    SUTypedValueRef value_in);

SUResult SURenderingOptionsGetValue (
    SURenderingOptionsRef rendering_options,
    const(char)* key,
    SUTypedValueRef* value_out);
