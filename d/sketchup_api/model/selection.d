module sketchup_api.model.selection;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

enum SUSelectionType
{
    SUSelectionType_Curve = 0,

    SUSelectionType_Surface = 1,

    SUSelectionType_SingleObject = 2
}

SUResult SUSelectionAdd (
    SUSelectionRef selection,
    size_t num_elements,
    const(SUDrawingElementRef)* elements);

SUResult SUSelectionRemove (
    SUSelectionRef selection,
    size_t num_elements,
    const(SUDrawingElementRef)* elements);

SUResult SUSelectionToggle (
    SUSelectionRef selection,
    size_t num_elements,
    const(SUDrawingElementRef)* elements);

SUResult SUSelectionClear (SUSelectionRef selection);

SUResult SUSelectionInvert (SUSelectionRef selection);

SUResult SUSelectionGetNumElements (
    SUSelectionRef selection,
    size_t* num_elements);

SUResult SUSelectionGetEntityList (
    SUSelectionRef selection,
    SUEntityListRef* entity_list);

SUResult SUSelectionIsType (
    SUSelectionRef selection,
    SUSelectionType type,
    bool* is_type);
