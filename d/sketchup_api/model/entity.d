module sketchup_api.model.entity;

public import sketchup_api.common;
public import sketchup_api.model.defs;

extern (C):

SURefType SUEntityGetType (SUEntityRef entity);

SUResult SUEntityGetID (SUEntityRef entity, int* entity_id);

SUResult SUEntityGetPersistentID (SUEntityRef entity, long* entity_pid);

SUResult SUEntityGetNumAttributeDictionaries (
    SUEntityRef entity,
    size_t* count);

SUResult SUEntityGetAttributeDictionaries (
    SUEntityRef entity,
    size_t len,
    SUAttributeDictionaryRef* dictionaries,
    size_t* count);

SUResult SUEntityAddAttributeDictionary (
    SUEntityRef entity,
    SUAttributeDictionaryRef dictionary);

SUResult SUEntityGetAttributeDictionary (
    SUEntityRef entity,
    const(char)* name,
    SUAttributeDictionaryRef* dictionary);

SUResult SUEntityGetModel (SUEntityRef entity, SUModelRef* model);

SUResult SUEntityGetParentEntities (
    SUEntityRef entity,
    SUEntitiesRef* entities);
