module sketchup_api.model.options_manager;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUOptionsManagerGetNumOptionsProviders (
    SUOptionsManagerRef options_manager,
    size_t* count);

SUResult SUOptionsManagerGetOptionsProviderNames (
    SUOptionsManagerRef options_manager,
    size_t len,
    SUStringRef* options_provider_names,
    size_t* count);

SUResult SUOptionsManagerGetOptionsProviderByName (
    SUOptionsManagerRef options_manager,
    const(char)* name,
    SUOptionsProviderRef* options_provider);
