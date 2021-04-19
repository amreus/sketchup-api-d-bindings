module sketchup_api.model.dynamic_component_info;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.defs; // SUStringRef
//import sketchup_api.geom;

extern (C):

SUResult SUDynamicComponentInfoRelease (SUDynamicComponentInfoRef* dc_info);

SUResult SUDynamicComponentInfoGetNumDCAttributes (
    SUDynamicComponentInfoRef dc_info,
    size_t* count);

SUResult SUDynamicComponentInfoGetDCAttributes (
    SUDynamicComponentInfoRef dc_info,
    size_t len,
    SUDynamicComponentAttributeRef* attributes,
    size_t* count);
