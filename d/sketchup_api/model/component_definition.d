module sketchup_api.model.component_definition;

import core.stdc.time;

import sketchup_api.common;
import sketchup_api.defs;
import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

struct SUComponentBehavior
{
    enum SUSnapToBehavior
    {
        SUSnapToBehavior_None = 0,
        SUSnapToBehavior_Any = 1,
        SUSnapToBehavior_Horizontal = 2,
        SUSnapToBehavior_Vertical = 3,
        SUSnapToBehavior_Sloped = 4
    }

    SUSnapToBehavior component_snap;

    bool component_cuts_opening;

    bool component_always_face_camera;

    bool component_shadows_face_sun;

    size_t component_no_scale_mask;
}

enum SUComponentType
{
    SUComponentType_Normal = 0,
    SUComponentType_Group = 1
}

SUEntityRef SUComponentDefinitionToEntity (SUComponentDefinitionRef comp_def);

SUComponentDefinitionRef SUComponentDefinitionFromEntity (SUEntityRef entity);

SUDrawingElementRef SUComponentDefinitionToDrawingElement (
    SUComponentDefinitionRef comp_def);

SUComponentDefinitionRef SUComponentDefinitionFromDrawingElement (
    SUDrawingElementRef drawing_elem);

SUResult SUComponentDefinitionCreate (SUComponentDefinitionRef* comp_def);

SUResult SUComponentDefinitionRelease (SUComponentDefinitionRef* comp_def);

SUResult SUComponentDefinitionGetName (
    SUComponentDefinitionRef comp_def,
    SUStringRef* name);

SUResult SUComponentDefinitionSetName (
    SUComponentDefinitionRef comp_def,
    const(char)* name);

SUResult SUComponentDefinitionGetGuid (
    SUComponentDefinitionRef comp_def,
    SUStringRef* guid_ref);

SUResult SUComponentDefinitionGetEntities (
    SUComponentDefinitionRef comp_def,
    SUEntitiesRef* entities);

SUResult SUComponentDefinitionGetDescription (
    SUComponentDefinitionRef comp_def,
    SUStringRef* desc);

SUResult SUComponentDefinitionSetDescription (
    SUComponentDefinitionRef comp_def,
    const(char)* desc);

SUResult SUComponentDefinitionCreateInstance (
    SUComponentDefinitionRef comp_def,
    SUComponentInstanceRef* instance);

SUResult SUComponentDefinitionGetNumUsedInstances (
    SUComponentDefinitionRef comp_def,
    size_t* count);

SUResult SUComponentDefinitionGetNumInstances (
    SUComponentDefinitionRef comp_def,
    size_t* count);

SUResult SUComponentDefinitionGetInstances (
    SUComponentDefinitionRef comp_def,
    size_t len,
    SUComponentInstanceRef* instances,
    size_t* count);

SUResult SUComponentDefinitionGetBehavior (
    SUComponentDefinitionRef comp_def,
    SUComponentBehavior* behavior);

SUResult SUComponentDefinitionSetBehavior (
    SUComponentDefinitionRef comp_def,
    const(SUComponentBehavior)* behavior);

SUResult SUComponentDefinitionApplySchemaType (
    SUComponentDefinitionRef comp_def,
    SUSchemaRef schema_ref,
    SUSchemaTypeRef schema_type_ref);

SUResult SUComponentDefinitionIsInternal (
    SUComponentDefinitionRef comp_def,
    bool* is_internal);

SUResult SUComponentDefinitionGetPath (
    SUComponentDefinitionRef comp_def,
    SUStringRef* path);

SUResult SUComponentDefinitionGetLoadTime (
    SUComponentDefinitionRef comp_def,
    tm* load_time);

SUResult SUComponentDefinitionGetNumOpenings (
    SUComponentDefinitionRef comp_def,
    size_t* count);

SUResult SUComponentDefinitionGetOpenings (
    SUComponentDefinitionRef comp_def,
    size_t len,
    SUOpeningRef* openings,
    size_t* count);

SUResult SUComponentDefinitionGetInsertPoint (
    SUComponentDefinitionRef comp_def,
    SUPoint3D* point);

SUResult SUComponentDefinitionGetType (
    SUComponentDefinitionRef comp_def,
    SUComponentType* type);

SUResult SUComponentDefinitionOrientFacesConsistently (
    SUComponentDefinitionRef comp_def);

SUResult SUComponentDefinitionSetInsertPoint (
    SUComponentDefinitionRef comp_def,
    const(SUPoint3D)* point);

SUResult SUComponentDefinitionSetAxes (
    SUComponentDefinitionRef comp_def,
    SUAxesRef axes);

SUResult SUComponentDefinitionIsLiveComponent (
    SUComponentDefinitionRef comp_def,
    bool* is_live);
