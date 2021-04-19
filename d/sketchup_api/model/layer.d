module sketchup_api.model.layer;

import sketchup_api.common;
import sketchup_api.defs;
import sketchup_api.unicodestring;
//import sketchup_api.geometry;
public import sketchup_api.model.defs;

extern (C):

enum SULayerVisibilityDefaultType
{
    SULayerVisibilityDefaultType_Visible = 0x0000,
    SULayerVisibilityDefaultType_Hidden = 0x0001
}

enum SULayerVisibilityNewSceneType
{
    SULayerVisibilityNewSceneType_LayerDefault = 0x0000,
    SULayerVisibilityNewSceneType_Visible = 0x0010,
    SULayerVisibilityNewSceneType_Hidden = 0x0020
}

SUEntityRef SULayerToEntity (SULayerRef layer);

SULayerRef SULayerFromEntity (SUEntityRef entity);

SUResult SULayerCreate (SULayerRef* layer);

SUResult SULayerRelease (SULayerRef* layer);

SUResult SULayerGetName (SULayerRef layer, SUStringRef* name);

SUResult SULayerGetDisplayName (SULayerRef layer, SUStringRef* name);

SUResult SULayerSetName (SULayerRef layer, const(char)* name);

SUResult SULayerGetMaterial (SULayerRef layer, SUMaterialRef* material);

SUResult SULayerGetVisibility (SULayerRef layer, bool* visible);

SUResult SULayerSetVisibility (SULayerRef layer, bool visible);

SUResult SULayerGetLineStyle (SULayerRef layer, SULineStyleRef* line_style);

SUResult SULayerSetLineStyle (SULayerRef layer, SULineStyleRef line_style);

SUResult SULayerClearLineStyle (SULayerRef layer);

SUResult SULayerGetSceneBehavior (
    SULayerRef layer,
    SULayerVisibilityDefaultType* default_type,
    SULayerVisibilityNewSceneType* new_scene_type);

SUResult SULayerSetSceneBehavior (
    SULayerRef layer,
    SULayerVisibilityDefaultType default_type,
    SULayerVisibilityNewSceneType new_scene_type);

SUResult SULayerGetParentLayerFolder (
    SULayerRef layer,
    SULayerFolderRef* layer_folder);
