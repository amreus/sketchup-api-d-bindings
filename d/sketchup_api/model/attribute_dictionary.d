module sketchup_api.model.attribute_dictionary;

import sketchup_api.common;
import sketchup_api.model.defs;
import sketchup_api.defs;

extern (C):

SUResult SUAttributeDictionaryCreate (
    SUAttributeDictionaryRef* dictionary,
    const(char)* name);

SUResult SUAttributeDictionaryRelease (SUAttributeDictionaryRef* dictionary);

SUEntityRef SUAttributeDictionaryToEntity (SUAttributeDictionaryRef dictionary);

SUAttributeDictionaryRef SUAttributeDictionaryFromEntity (SUEntityRef entity);

SUResult SUAttributeDictionaryGetName (
    SUAttributeDictionaryRef dictionary,
    SUStringRef* name);

SUResult SUAttributeDictionarySetValue (
    SUAttributeDictionaryRef dictionary,
    const(char)* key,
    SUTypedValueRef value_in);

SUResult SUAttributeDictionaryGetValue (
    SUAttributeDictionaryRef dictionary,
    const(char)* key,
    SUTypedValueRef* value_out);

SUResult SUAttributeDictionaryGetNumKeys (
    SUAttributeDictionaryRef dictionary,
    size_t* count);

SUResult SUAttributeDictionaryGetKeys (
    SUAttributeDictionaryRef dictionary,
    size_t len,
    SUStringRef* keys,
    size_t* count);
