module sketchup_api.model.entity_list;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUEntityListCreate (SUEntityListRef* list);

SUResult SUEntityListRelease (SUEntityListRef* list);

SUResult SUEntityListBegin (
    SUEntityListRef list,
    SUEntityListIteratorRef* iterator);

SUResult SUEntityListSize (SUEntityListRef list, size_t* count);
