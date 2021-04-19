module sketchup_api.model.options_provider;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUOptionsProviderGetNumKeys (
    SUOptionsProviderRef options_provider,
    size_t* count);

SUResult SUOptionsProviderGetKeys (
    SUOptionsProviderRef options_provider,
    size_t len,
    SUStringRef* keys,
    size_t* count);

SUResult SUOptionsProviderGetValue (
    SUOptionsProviderRef options_provider,
    const(char)* key,
    SUTypedValueRef* value);

SUResult SUOptionsProviderSetValue (
    SUOptionsProviderRef options_provider,
    const(char)* key,
    SUTypedValueRef value);

SUResult SUOptionsProviderGetName (
    SUOptionsProviderRef options_provider,
    SUStringRef* name);
