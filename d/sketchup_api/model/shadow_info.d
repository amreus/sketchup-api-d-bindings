module sketchup_api.model.shadow_info;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUShadowInfoGetNumKeys (SUShadowInfoRef shadow_info, size_t* count);

SUResult SUShadowInfoGetKeys (
    SUShadowInfoRef shadow_info,
    size_t len,
    SUStringRef* keys,
    size_t* count);

SUResult SUShadowInfoGetValue (
    SUShadowInfoRef shadow_info,
    const(char)* key,
    SUTypedValueRef* value_out);

SUResult SUShadowInfoSetValue (
    SUShadowInfoRef shadow_info,
    const(char)* key,
    SUTypedValueRef value_in);
