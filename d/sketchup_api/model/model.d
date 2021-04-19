module sketchup_api.model.model;

import core.stdc.limits;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

struct SUModelStatistics
{
    enum SUEntityType
    {
        SUEntityType_Edge = 0,
        SUEntityType_Face = 1,
        SUEntityType_ComponentInstance = 2,
        SUEntityType_Group = 3,
        SUEntityType_Image = 4,
        SUEntityType_ComponentDefinition = 5,
        SUEntityType_Layer = 6,
        SUEntityType_Material = 7,
        SUNumEntityTypes = 8
    }

    int[SUEntityType.SUNumEntityTypes] entity_counts;
}

enum SUModelUnits
{
    SUModelUnits_Inches = 0,
    SUModelUnits_Feet = 1,
    SUModelUnits_Millimeters = 2,
    SUModelUnits_Centimeters = 3,
    SUModelUnits_Meters = 4
}

enum SUModelVersion
{
    SUModelVersion_SU3 = 0,
    SUModelVersion_SU4 = 1,
    SUModelVersion_SU5 = 2,
    SUModelVersion_SU6 = 3,
    SUModelVersion_SU7 = 4,
    SUModelVersion_SU8 = 5,
    SUModelVersion_SU2013 = 6,
    SUModelVersion_SU2014 = 7,
    SUModelVersion_SU2015 = 8,
    SUModelVersion_SU2016 = 9,
    SUModelVersion_SU2017 = 10,
    SUModelVersion_SU2018 = 11,
    SUModelVersion_SU2019 = 12,
    SUModelVersion_SU2020 = 13,
    SUModelVersion_SU2021 = 14
}

enum SUModelLoadStatus
{
    SUModelLoadStatus_Success = 0,
    SUModelLoadStatus_Success_MoreRecent = 1
}

SUResult SUModelCreate (SUModelRef* model);

SUResult SUModelCreateFromFile (SUModelRef* model, const(char)* file_path);

SUResult SUModelCreateFromFileWithStatus (
    SUModelRef* model,
    const(char)* file_path,
    SUModelLoadStatus* status);

SUResult SUModelCreateFromBuffer (
    SUModelRef* model,
    const(ubyte)* buffer,
    size_t buffer_size);

SUResult SUModelCreateFromBufferWithStatus (
    SUModelRef* model,
    const(ubyte)* buffer,
    size_t buffer_size,
    SUModelLoadStatus* status);

SUResult SUModelRelease (SUModelRef* model);

alias uintptr_t = ulong;

SUModelRef SUModelFromExisting (uintptr_t data);

SUResult SUModelGetEntities (SUModelRef model, SUEntitiesRef* entities);

SUResult SUModelGetActiveEntities (SUModelRef model, SUEntitiesRef* entities);

SUResult SUModelGetActivePath (
    SUModelRef model,
    SUInstancePathRef* instance_path);

SUResult SUModelGetNumMaterials (SUModelRef model, size_t* count);

SUResult SUModelGetMaterials (
    SUModelRef model,
    size_t len,
    SUMaterialRef* materials,
    size_t* count);

SUResult SUModelAddMaterials (
    SUModelRef model,
    size_t len,
    const(SUMaterialRef)* materials);

SUResult SUModelGetNumComponentDefinitions (SUModelRef model, size_t* count);

SUResult SUModelGetComponentDefinitions (
    SUModelRef model,
    size_t len,
    SUComponentDefinitionRef* definitions,
    size_t* count);

SUResult SUModelGetNumGroupDefinitions (SUModelRef model, size_t* count);

SUResult SUModelGetGroupDefinitions (
    SUModelRef model,
    size_t len,
    SUComponentDefinitionRef* definitions,
    size_t* count);

SUResult SUModelGetNumImageDefinitions (SUModelRef model, size_t* count);

SUResult SUModelGetImageDefinitions (
    SUModelRef model,
    size_t len,
    SUComponentDefinitionRef* definitions,
    size_t* count);

SUResult SUModelAddComponentDefinitions (
    SUModelRef model,
    size_t len,
    const(SUComponentDefinitionRef)* components);

SUResult SUModelRemoveComponentDefinitions (
    SUModelRef model,
    size_t len,
    SUComponentDefinitionRef* components);

SUResult SUModelSaveToFile (SUModelRef model, const(char)* file_path);

SUResult SUModelSaveToFileWithVersion (
    SUModelRef model,
    const(char)* file_path,
    SUModelVersion version_);

SUResult SUModelGetCamera (SUModelRef model, SUCameraRef* camera);

SUResult SUModelSetCamera (SUModelRef model, SUCameraRef* camera);

SUResult SUModelGetNumScenes (SUModelRef model, size_t* num_scenes);

SUResult SUModelGetNumLayers (SUModelRef model, size_t* count);

SUResult SUModelGetLayers (
    SUModelRef model,
    size_t len,
    SULayerRef* layers,
    size_t* count);

SUResult SUModelAddLayers (
    SUModelRef model,
    size_t len,
    const(SULayerRef)* layers);

SUResult SUModelGetDefaultLayer (SUModelRef model, SULayerRef* layer);

SUResult SUModelRemoveLayers (SUModelRef model, size_t len, SULayerRef* layers);

SUResult SUModelGetActiveLayer (SUModelRef model, SULayerRef* layer);

SUResult SUModelSetActiveLayer (SUModelRef model, SULayerRef layer);

SUResult SUModelGetVersion (
    SUModelRef model,
    int* major,
    int* minor,
    int* build);

SUResult SUModelGetNumAttributeDictionaries (SUModelRef model, size_t* count);

SUResult SUModelGetAttributeDictionaries (
    SUModelRef model,
    size_t len,
    SUAttributeDictionaryRef* dictionaries,
    size_t* count);

SUResult SUModelGetAttributeDictionary (
    SUModelRef model,
    const(char)* name,
    SUAttributeDictionaryRef* dictionary);

SUResult SUModelIsGeoReferenced (SUModelRef model, bool* is_geo_ref);

SUResult SUModelGetLocation (SUModelRef model, SULocationRef* location);

SUResult SUModelGetStatistics (SUModelRef model, SUModelStatistics* statistics);

SUResult SUModelSetGeoReference (
    SUModelRef model,
    double latitude,
    double longitude,
    double altitude,
    bool is_z_value_centered,
    bool is_on_ocean_floor);

SUResult SUModelGetRenderingOptions (
    SUModelRef model,
    SURenderingOptionsRef* rendering_options);

SUResult SUModelGetShadowInfo (SUModelRef model, SUShadowInfoRef* shadow_info);

SUResult SUModelGetOptionsManager (
    SUModelRef model,
    SUOptionsManagerRef* options_manager);

SUResult SUModelGetNorthCorrection (SUModelRef model, double* north_correction);

SUResult SUModelMergeCoplanarFaces (SUModelRef model);

SUResult SUModelGetScenes (
    SUModelRef model,
    size_t len,
    SUSceneRef* scenes,
    size_t* count);

SUResult SUModelGetSceneWithName (
    SUModelRef model,
    const(char)* name,
    SUSceneRef* scene);

SUResult SUModelAddScenes (
    SUModelRef model,
    size_t len,
    const(SUSceneRef)* scenes);

SUResult SUModelAddScene (
    SUModelRef model,
    int index,
    SUSceneRef scene,
    int* out_index);

SUResult SUModelGetActiveScene (SUModelRef model, SUSceneRef* scene);

SUResult SUModelSetActiveScene (SUModelRef model, SUSceneRef scene);

SUResult SUModelAddMatchPhotoScene (
    SUModelRef model,
    const(char)* image_file,
    SUCameraRef camera,
    const(char)* scene_name,
    SUSceneRef* scene);

SUResult SUModelGetName (SUModelRef model, SUStringRef* name);

SUResult SUModelSetName (SUModelRef model, const(char)* name);

SUResult SUModelGetPath (SUModelRef model, SUStringRef* path);

SUResult SUModelGetTitle (SUModelRef model, SUStringRef* title);

SUResult SUModelGetDescription (SUModelRef model, SUStringRef* description);

SUResult SUModelSetDescription (SUModelRef model, const(char)* description);

SUResult SUModelGetUnits (SUModelRef model, SUModelUnits* units);

SUResult SUModelGetClassifications (
    SUModelRef model,
    SUClassificationsRef* classifications);

SUResult SUModelGetAxes (SUModelRef model, SUAxesRef* axes);

SUResult SUModelGetStyles (SUModelRef model, SUStylesRef* styles);

SUResult SUModelGetInstancePathByPid (
    SUModelRef model,
    SUStringRef pid_ref,
    SUInstancePathRef* instance_path_ref);

SUResult SUModelGetNumFonts (SUModelRef model, size_t* count);

SUResult SUModelGetFonts (
    SUModelRef model,
    size_t len,
    SUFontRef* fonts,
    size_t* count);

SUResult SUModelGetDimensionStyle (
    SUModelRef model,
    SUDimensionStyleRef* style);

SUResult SUModelGetLengthFormatter (
    SUModelRef model,
    SULengthFormatterRef* formatter);

SUResult SUModelGenerateUniqueMaterialName (
    SUModelRef model,
    const(char)* in_name,
    SUStringRef* out_name);

SUResult SUModelFixErrors (SUModelRef model);

SUResult SUModelOrientFacesConsistently (
    SUModelRef model,
    bool recurse_components);

SUResult SUModelGetLineStyles (SUModelRef model, SULineStylesRef* line_styles);

SUResult SUModelLoadDefinition (
    SUModelRef model,
    const(char)* filename,
    SUComponentDefinitionRef* definition);

SUResult SUModelLoadDefinitionWithStatus (
    SUModelRef model,
    const(char)* filename,
    SUComponentDefinitionRef* definition,
    SUModelLoadStatus* status);

SUResult SUModelRemoveMaterials (
    SUModelRef model,
    size_t len,
    SUMaterialRef* materials);

SUResult SUModelRemoveScenes (SUModelRef model, size_t len, SUSceneRef* scenes);

SUResult SUModelGetNumAllMaterials (SUModelRef model, size_t* count);

SUResult SUModelGetAllMaterials (
    SUModelRef model,
    size_t len,
    SUMaterialRef* materials,
    size_t* count);

SUResult SUModelGetGuid (SUModelRef model, SUStringRef* guid);

SUResult SUModelGetLayersByPersistentIDs (
    SUModelRef model,
    size_t num_pids,
    const(long)* pids,
    SULayerRef* layers);

SUResult SUModelIsDrawingElementVisible (
    SUModelRef model,
    SUInstancePathRef path,
    bool* visible);

SUResult SUModelGetEntitiesByPersistentIDs (
    SUModelRef model,
    size_t num_pids,
    const(long)* pids,
    SUEntityRef* entities);

SUResult SUModelGetSelection (SUModelRef model, SUSelectionRef* selection);

SUResult SUModelGetNumLayerFolders (SUModelRef model, size_t* count);

SUResult SUModelGetLayerFolders (
    SUModelRef model,
    size_t len,
    SULayerFolderRef* layer_folders,
    size_t* count);

SUResult SUModelPurgeEmptyLayerFolders (SUModelRef model, size_t* count);

SUResult SUModelAddLayerFolder (
    SUModelRef model,
    SULayerFolderRef layer_folder);

SUResult SUModelPurgeUnusedLayers (SUModelRef model, size_t* count);

SUResult SUModelGetNumTopLevelLayers (SUModelRef model, size_t* count);

SUResult SUModelGetTopLevelLayers (
    SUModelRef model,
    size_t len,
    SULayerRef* layers,
    size_t* count);

SUResult SUModelRemoveLayerFolders (
    SUModelRef model,
    size_t len,
    SULayerFolderRef* layer_folders);

enum FLAG_GET_ENTITIES_TYPE_DEFINITION_ENTITIES = 0x0001;

enum FLAG_GET_ENTITIES_TYPE_LAYERS = 0x0002;

enum FLAG_GET_ENTITIES_TYPE_LAYER_FOLDERS = 0x0004;

enum FLAG_GET_ENTITIES_TYPE_MATERIALS = 0x0008;

enum FLAG_GET_ENTITIES_TYPE_SCENES = 0x0010;

enum FLAG_GET_ENTITIES_TYPE_STYLES = 0x0020;

enum FLAG_GET_ENTITIES_TYPE_DEFINITIONS = 0x0040;

enum FLAG_GET_ENTITIES_TYPE_ALL = 0xffff;

SUResult SUModelGetEntitiesOfTypeByPersistentIDs (
    SUModelRef model,
    const uint type_flags,
    const size_t num_pids,
    const(long)* pids,
    SUEntityRef* entities);
