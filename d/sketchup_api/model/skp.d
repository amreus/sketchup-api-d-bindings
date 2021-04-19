module sketchup_api.model.skp;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUSkpReadGuid (const(char)* file_path, SUStringRef* guid);
