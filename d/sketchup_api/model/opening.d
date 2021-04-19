module sketchup_api.model.opening;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUOpeningGetNumPoints (SUOpeningRef opening, size_t* count);

SUResult SUOpeningGetPoints (
    SUOpeningRef opening,
    size_t len,
    SUPoint3D* points,
    size_t* count);

SUResult SUOpeningRelease (SUOpeningRef* opening);
