module sketchup_api.model.styles;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUStylesAddStyle (
    SUStylesRef styles,
    const(char)* path,
    bool activate);

SUResult SUStylesGetNumStyles (SUStylesRef styles, size_t* count);

SUResult SUStylesGetStyles (
    SUStylesRef styles,
    size_t len,
    SUStyleRef* style_array,
    size_t* count);

SUResult SUStylesGetActiveStyle (SUStylesRef styles, SUStyleRef* style);

SUResult SUStylesGetSelectedStyle (SUStylesRef styles, SUStyleRef* style);

SUResult SUStylesGetStyleByGuid (
    SUStylesRef styles,
    const(char)* guid,
    SUStyleRef* style);

SUResult SUStylesGetStyleByPath (
    SUStylesRef styles,
    const(char)* path,
    SUStyleRef* style);

SUResult SUStylesGetActiveStyleChanged (SUStylesRef styles, bool* changed);

SUResult SUStylesApplyStyleToScene (
    SUStylesRef styles,
    SUStyleRef style,
    SUSceneRef scene);

SUResult SUStylesSetSelectedStyle (SUStylesRef styles, SUStyleRef style);

SUResult SUStylesRemoveStyle (SUStylesRef styles, SUStyleRef* style);
