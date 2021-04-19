module sketchup_api.sketchup_info;

import sketchup_api.common; // SUResult
//import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

enum SUEdition
{
    SUEdition_Unknown = 0,
    SUEdition_Make = 1,
    SUEdition_Pro = 2
}

SUResult SUGetVersionStringUtf8 (size_t length, char* version_);

SUResult SUGetEdition (SUEdition* edition);
