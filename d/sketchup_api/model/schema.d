module sketchup_api.model.schema;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUSchemaGetSchemaType (
    SUSchemaRef schema_ref,
    const(char)* schema_type_name,
    SUSchemaTypeRef* schema_type_ref);
