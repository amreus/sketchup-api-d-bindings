module sketchup_api.model.layer_folder;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SULayerFolderToEntity (SULayerFolderRef layer_folder);

SULayerFolderRef SULayerFolderFromEntity (SUEntityRef entity);

SUResult SULayerFolderCreate (
    SULayerFolderRef* layer_folder,
    const(char)* name);

SUResult SULayerFolderRelease (SULayerFolderRef* layer_folder);

SUResult SULayerFolderGetName (
    SULayerFolderRef layer_folder,
    SUStringRef* name);

SUResult SULayerFolderSetName (SULayerFolderRef layer_folder, const(char)* name);

SUResult SULayerFolderGetVisibility (
    SULayerFolderRef layer_folder,
    bool* visible);

SUResult SULayerFolderSetVisibility (
    SULayerFolderRef layer_folder,
    bool visible);

SUResult SULayerGroupGetVisibleOnNewScenes (
    SULayerFolderRef layer_folder,
    bool* visible);

SUResult SULayerGroupSetVisibleOnNewScenes (
    SULayerFolderRef layer_folder,
    bool visible);

SUResult SULayerFolderAddLayer (
    SULayerFolderRef layer_folder,
    SULayerRef layer);

SUResult SULayerFolderRemoveLayer (
    SULayerFolderRef layer_folder,
    SULayerRef layer);

SUResult SULayerFolderGetNumLayers (
    SULayerFolderRef layer_folder,
    size_t* count);

SUResult SULayerFolderGetLayers (
    SULayerFolderRef layer_folder,
    size_t len,
    SULayerRef* layers,
    size_t* count);

SUResult SULayerFolderAddLayerFolder (
    SULayerFolderRef layer_folder,
    SULayerFolderRef add_folder);

SUResult SULayerFolderGetNumLayerFolders (
    SULayerFolderRef layer_folder,
    size_t* count);

SUResult SULayerFolderGetLayerFolders (
    SULayerFolderRef layer_folder,
    size_t len,
    SULayerFolderRef* layer_folders,
    size_t* count);

SUResult SULayerFolderGetParentLayerFolder (
    SULayerFolderRef layer_folder,
    SULayerFolderRef* parent);
