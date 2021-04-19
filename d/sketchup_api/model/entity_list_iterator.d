module sketchup_api.model.entity_list_iterator;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUEntityListIteratorCreate (SUEntityListIteratorRef* iterator);

SUResult SUEntityListIteratorRelease (SUEntityListIteratorRef* iterator);

SUResult SUEntityListIteratorGetEntity (
    SUEntityListIteratorRef iterator,
    SUEntityRef* entity);

SUResult SUEntityListIteratorNext (SUEntityListIteratorRef iterator);

SUResult SUEntityListIteratorIsInRange (
    SUEntityListIteratorRef iterator,
    bool* in_range);
