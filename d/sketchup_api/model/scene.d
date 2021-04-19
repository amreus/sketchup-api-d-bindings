module sketchup_api.model.scene;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

enum FLAG_USE_CAMERA = 0x0001;
enum FLAG_USE_RENDERING_OPTIONS = 0x0002;
enum FLAG_USE_SHADOWINFO = 0x0004;
enum FLAG_USE_AXES = 0x0008;
enum FLAG_USE_HIDDEN = 0x0010;
enum FLAG_USE_LAYER_VISIBILITY = 0x0020;
enum FLAG_USE_SECTION_PLANES = 0x0040;
enum FLAG_USE_HIDDEN_GEOMETRY = 0x0080;
enum FLAG_USE_HIDDEN_OBJECTS = 0x0100;

enum FLAG_USE_ALL = 0x0fff;
enum FLAG_NO_CAMERA = 0x0ffe;

SUEntityRef SUSceneToEntity (SUSceneRef scene);

SUSceneRef SUSceneFromEntity (SUEntityRef entity);

SUResult SUSceneCreate (SUSceneRef* scene);

SUResult SUSceneRelease (SUSceneRef* scene);

SUResult SUSceneGetUseCamera (SUSceneRef scene, bool* use_camera);

SUResult SUSceneSetUseCamera (SUSceneRef scene, bool use_camera);

SUResult SUSceneGetCamera (SUSceneRef scene, SUCameraRef* camera);

SUResult SUSceneSetCamera (SUSceneRef scene, SUCameraRef camera);

SUResult SUSceneGetIncludeInAnimation (
    SUSceneRef scene,
    bool* include_in_animation);

SUResult SUSceneSetIncludeInAnimation (
    SUSceneRef scene,
    bool include_in_animation);

SUResult SUSceneGetName (SUSceneRef scene, SUStringRef* name);

SUResult SUSceneSetName (SUSceneRef scene, const(char)* scene_name);

SUResult SUSceneGetRenderingOptions (
    SUSceneRef scene,
    SURenderingOptionsRef* options);

SUResult SUSceneGetShadowInfo (SUSceneRef scene, SUShadowInfoRef* shadow_info);

SUResult SUSceneGetUseShadowInfo (SUSceneRef scene, bool* use_shadow_info);

SUResult SUSceneSetUseShadowInfo (SUSceneRef scene, bool use_shadow_info);

SUResult SUSceneGetUseRenderingOptions (
    SUSceneRef scene,
    bool* use_rendering_options);

SUResult SUSceneSetUseRenderingOptions (
    SUSceneRef scene,
    bool use_rendering_options);

SUResult SUSceneGetUseHidden (SUSceneRef scene, bool* use_hidden);

SUResult SUSceneSetUseHidden (SUSceneRef scene, bool use_hidden);

SUResult SUSceneGetUseHiddenGeometry (SUSceneRef scene, bool* use_hidden);

SUResult SUSceneSetUseHiddenGeometry (SUSceneRef scene, bool use_hidden);

SUResult SUSceneGetUseHiddenObjects (SUSceneRef scene, bool* use_hidden);

SUResult SUSceneSetUseHiddenObjects (SUSceneRef scene, bool use_hidden);

SUResult SUSceneGetUseHiddenLayers (SUSceneRef scene, bool* use_hidden_layers);

SUResult SUSceneSetUseHiddenLayers (SUSceneRef scene, bool use_hidden_layers);

SUResult SUSceneGetUseSectionPlanes (
    SUSceneRef scene,
    bool* use_section_planes);

SUResult SUSceneSetUseSectionPlanes (SUSceneRef scene, bool use_section_planes);

SUResult SUSceneGetNumLayers (SUSceneRef scene, size_t* count);

SUResult SUSceneGetLayers (
    SUSceneRef scene,
    size_t len,
    SULayerRef* layers,
    size_t* count);

SUResult SUSceneAddLayer (SUSceneRef scene, SULayerRef layer);

SUResult SUSceneRemoveLayer (SUSceneRef scene, SULayerRef layer);

SUResult SUSceneClearLayers (SUSceneRef scene);

SUResult SUSceneGetNumLayerFolders (SUSceneRef scene, size_t* count);

SUResult SUSceneGetLayerFolders (
    SUSceneRef scene,
    size_t len,
    SULayerFolderRef* layer_folders,
    size_t* count);

SUResult SUSceneAddLayerFolder (SUSceneRef scene, SULayerFolderRef layer_folder);

SUResult SUSceneRemoveLayerFolder (
    SUSceneRef scene,
    SULayerFolderRef layer_folder);

SUResult SUSceneClearLayerFolders (SUSceneRef scene);

SUResult SUSceneGetAxes (SUSceneRef scene, SUAxesRef* axes);

SUResult SUSceneSetUseAxes (SUSceneRef scene, bool use_axes);

SUResult SUSceneGetUseAxes (SUSceneRef scene, bool* use_axes);

SUResult SUSceneGetNumHiddenEntities (SUSceneRef scene, size_t* count);

SUResult SUSceneGetHiddenEntities (
    SUSceneRef scene,
    size_t len,
    SUEntityRef* entities,
    size_t* count);

SUResult SUSceneSetFlags (SUSceneRef scene, uint flags);

SUResult SUSceneGetFlags (SUSceneRef scene, uint* flags);

SUResult SUSceneSetSketchAxesDisplayed (SUSceneRef scene, bool displayed);

SUResult SUSceneGetSketchAxesDisplayed (SUSceneRef scene, bool* displayed);

SUResult SUSceneGetPhotoMatchImageDisplayed (SUSceneRef scene, bool* displayed);

SUResult SUSceneClearPhotoMatchImage (SUSceneRef scene);

SUResult SUSceneGetStyle (SUSceneRef scene, SUStyleRef* style);

SUResult SUSceneCopy (SUSceneRef scene, SUSceneRef copy_scene);

SUResult SUSceneActivate (SUSceneRef scene);

SUResult SUSceneSetDrawingElementHidden (
    SUSceneRef scene,
    SUDrawingElementRef drawing_element,
    bool is_hidden);

SUResult SUSceneGetDrawingElementHidden (
    SUSceneRef scene,
    SUDrawingElementRef drawing_element,
    bool* is_hidden);
