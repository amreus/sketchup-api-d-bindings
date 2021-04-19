module sketchup_api.model.classification_attribute;

import sketchup_api.common;
import sketchup_api.defs;
//import sketchup_api.geom;
import sketchup_api.model.defs;


extern (C):

SUResult SUClassificationAttributeGetValue (
    SUClassificationAttributeRef attribute,
    SUTypedValueRef* value);

SUResult SUClassificationAttributeGetPath (
    SUClassificationAttributeRef attribute,
    SUStringRef* path);

SUResult SUClassificationAttributeGetNumChildren (
    SUClassificationAttributeRef attribute,
    size_t* count);

SUResult SUClassificationAttributeGetChild (
    SUClassificationAttributeRef attribute,
    size_t index,
    SUClassificationAttributeRef* child);
