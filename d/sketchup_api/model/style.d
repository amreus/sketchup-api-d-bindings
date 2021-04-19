module sketchup_api.model.style;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUStyleCreate (SUStyleRef* style);

SUResult SUStyleCreateFromFile (SUStyleRef* style, const(char)* path);

SUResult SUStyleRelease (SUStyleRef* style);

SUEntityRef SUStyleToEntity (SUStyleRef style);

SUStyleRef SUStyleFromEntity (SUEntityRef entity);

SUResult SUStyleSetName (SUStyleRef style, const(char)* name);

SUResult SUStyleGetName (SUStyleRef style, SUStringRef* name);

SUResult SUStyleGetDisplayName (SUStyleRef style, SUStringRef* name);

SUResult SUStyleSetDescription (SUStyleRef style, const(char)* description);

SUResult SUStyleGetDescription (SUStyleRef style, SUStringRef* description);

SUResult SUStyleGetPath (SUStyleRef style, SUStringRef* path);

SUResult SUStyleGetGuid (SUStyleRef style, SUStringRef* guid);

SUResult SUStyleGetDisplaysWatermark (SUStyleRef style, bool* shows_mark);

SUResult SUStyleSaveToFile (SUStyleRef style, const(char)* path);

enum SUStylePropertyType
{
    SUStyleEdgesColor = 0,
    SUStyleEdgesExtensionsEnabled = 1,
    SUStyleEdgesExtensionLength = 2,
    SUStyleEdgesProfilesEnabled = 3,
    SUStyleEdgesProfileWidth = 4,
    SUStyleEdgesDepthCueEnabled = 5,
    SUStyleEdgesDepthCueLevels = 6,

    SUStyleBackgroundColor = 64
}

SUResult SUStyleSetProperty (
    SUStyleRef style,
    SUStylePropertyType type,
    SUTypedValueRef value);

SUResult SUStyleGetProperty (
    SUStyleRef style,
    SUStylePropertyType type,
    SUTypedValueRef* value);

SUResult SUStyleGetThumbnail (SUStyleRef style, SUImageRepRef* image);
