module sketchup_api.model.classifications;

import sketchup_api.common;
//import sketchup_api.defs;
//import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

SUResult SUClassificationsLoadSchema (
    SUClassificationsRef classifications,
    const(char)* schema_file_name);

SUResult SUClassificationsGetSchema (
    SUClassificationsRef classifications,
    const(char)* schema_name,
    SUSchemaRef* schema_ref);
