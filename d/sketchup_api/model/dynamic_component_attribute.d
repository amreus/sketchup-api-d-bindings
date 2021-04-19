module sketchup_api.model.dynamic_component_attribute;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.defs; // SUStringRef
//import sketchup_api.geom;

extern (C):

SUResult SUDynamicComponentAttributeGetName (
    SUDynamicComponentAttributeRef attribute,
    SUStringRef* name);

SUResult SUDynamicComponentAttributeGetDisplayName (
    SUDynamicComponentAttributeRef attribute,
    SUStringRef* display_name);

SUResult SUDynamicComponentAttributeGetVisibility (
    SUDynamicComponentAttributeRef attribute,
    bool* visible);

SUResult SUDynamicComponentAttributeGetDisplayValue (
    SUDynamicComponentAttributeRef attribute,
    SUStringRef* display_value);
