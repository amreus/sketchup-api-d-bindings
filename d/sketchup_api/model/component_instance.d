module sketchup_api.model.component_instance;

import sketchup_api.common;
import sketchup_api.defs;
import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

SUEntityRef SUComponentInstanceToEntity (SUComponentInstanceRef instance);

SUComponentInstanceRef SUComponentInstanceFromEntity (SUEntityRef entity);

SUDrawingElementRef SUComponentInstanceToDrawingElement (
    SUComponentInstanceRef instance);

SUComponentInstanceRef SUComponentInstanceFromDrawingElement (
    SUDrawingElementRef drawing_elem);

SUResult SUComponentInstanceSetName (
    SUComponentInstanceRef instance,
    const(char)* name);

SUResult SUComponentInstanceRelease (SUComponentInstanceRef* instance);

SUResult SUComponentInstanceGetName (
    SUComponentInstanceRef instance,
    SUStringRef* name);

SUResult SUComponentInstanceSetGuid (
    SUComponentInstanceRef instance,
    const(char)* guid);

SUResult SUComponentInstanceGetGuid (
    SUComponentInstanceRef instance,
    SUStringRef* guid);

SUResult SUComponentInstanceSetTransform (
    SUComponentInstanceRef instance,
    const(SUTransformation)* transform);

SUResult SUComponentInstanceGetTransform (
    SUComponentInstanceRef instance,
    SUTransformation* transform);

SUResult SUComponentInstanceGetDefinition (
    SUComponentInstanceRef instance,
    SUComponentDefinitionRef* component);

SUResult SUComponentInstanceSetLocked (
    SUComponentInstanceRef instance,
    bool lock);

SUResult SUComponentInstanceIsLocked (
    SUComponentInstanceRef instance,
    bool* is_locked);

SUResult SUComponentInstanceSaveAs (
    SUComponentInstanceRef instance,
    const(char)* file_path);

SUResult SUComponentInstanceComputeVolume (
    SUComponentInstanceRef instance,
    const(SUTransformation)* transform,
    double* volume);

SUResult SUComponentInstanceCreateDCInfo (
    SUComponentInstanceRef instance,
    SUDynamicComponentInfoRef* dc_info);

SUResult SUComponentInstanceCreateClassificationInfo (
    SUComponentInstanceRef instance,
    SUClassificationInfoRef* classification_info);

SUResult SUComponentInstanceGetNumAttachedInstances (
    SUComponentInstanceRef instance,
    size_t* count);

SUResult SUComponentInstanceGetAttachedInstances (
    SUComponentInstanceRef instance,
    size_t len,
    SUComponentInstanceRef* instances,
    size_t* count);

SUResult SUComponentInstanceGetNumAttachedToDrawingElements (
    SUComponentInstanceRef instance,
    size_t* count);

SUResult SUComponentInstanceGetAttachedToDrawingElements (
    SUComponentInstanceRef instance,
    size_t len,
    SUDrawingElementRef* elements,
    size_t* count);
