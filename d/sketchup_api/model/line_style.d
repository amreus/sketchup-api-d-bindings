module sketchup_api.model.line_style;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SULineStyleToEntity (SULineStyleRef line_style);

SULineStyleRef SULineStyleFromEntity (SUEntityRef entity_ref);

SUResult SULineStyleGetName (SULineStyleRef line_style, SUStringRef* name);
