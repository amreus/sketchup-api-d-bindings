module sketchup_api.model.classification_info;

import sketchup_api.common;
import sketchup_api.defs;
//import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

SUResult SUClassificationInfoRelease (
    SUClassificationInfoRef* classification_info);

SUResult SUClassificationInfoGetNumSchemas (
    SUClassificationInfoRef classification_info,
    size_t* count);

SUResult SUClassificationInfoGetSchemaName (
    SUClassificationInfoRef classification_info,
    size_t index,
    SUStringRef* schema_name);

SUResult SUClassificationInfoGetSchemaType (
    SUClassificationInfoRef classification_info,
    size_t index,
    SUStringRef* schema_type);

SUResult SUClassificationInfoGetSchemaAttribute (
    SUClassificationInfoRef classification_info,
    size_t index,
    SUClassificationAttributeRef* attribute);

SUResult SUClassificationInfoGetSchemaAttributeByPath (
    SUClassificationInfoRef classification_info,
    SUStringRef path,
    SUClassificationAttributeRef* attribute);
