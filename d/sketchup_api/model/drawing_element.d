module sketchup_api.model.drawing_element;

public import sketchup_api.common;
public import sketchup_api.geom;
public import sketchup_api.model.defs;

extern (C):

SUEntityRef SUDrawingElementToEntity (SUDrawingElementRef elem);

SUDrawingElementRef SUDrawingElementFromEntity (SUEntityRef entity);

SURefType SUDrawingElementGetType (SUDrawingElementRef elem);

SUResult SUDrawingElementGetBoundingBox (
    SUDrawingElementRef elem,
    SUBoundingBox3D* bbox);

SUResult SUDrawingElementGetMaterial (
    SUDrawingElementRef elem,
    SUMaterialRef* material);

SUResult SUDrawingElementSetMaterial (
    SUDrawingElementRef elem,
    SUMaterialRef material);

SUResult SUDrawingElementGetLayer (SUDrawingElementRef elem, SULayerRef* layer);

SUResult SUDrawingElementSetLayer (SUDrawingElementRef elem, SULayerRef layer);

SUResult SUDrawingElementSetHidden (SUDrawingElementRef elem, bool hide_flag);

SUResult SUDrawingElementGetHidden (SUDrawingElementRef elem, bool* hide_flag);

SUResult SUDrawingElementSetCastsShadows (
    SUDrawingElementRef elem,
    bool casts_shadows_flag);

SUResult SUDrawingElementGetCastsShadows (
    SUDrawingElementRef elem,
    bool* casts_shadows_flag);

SUResult SUDrawingElementSetReceivesShadows (
    SUDrawingElementRef elem,
    bool receives_shadows_flag);

SUResult SUDrawingElementGetReceivesShadows (
    SUDrawingElementRef elem,
    bool* receives_shadows_flag);
