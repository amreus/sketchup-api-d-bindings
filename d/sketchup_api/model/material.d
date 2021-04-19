module sketchup_api.model.material;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

enum SUMaterialType
{
    SUMaterialType_Colored = 0,
    SUMaterialType_Textured = 1,
    SUMaterialType_ColorizedTexture = 2
}

enum SUMaterialOwnerType
{
    SUMaterialOwnerType_None = 0,
    SUMaterialOwnerType_DrawingElement = 1,
    SUMaterialOwnerType_Image = 2,
    SUMaterialOwnerType_Layer = 3
}

enum SUMaterialColorizeType
{
    SUMaterialColorizeType_Shift = 0,
    SUMaterialColorizeType_Tint = 1
}

SUEntityRef SUMaterialToEntity (SUMaterialRef material);

SUMaterialRef SUMaterialFromEntity (SUEntityRef entity);

SUResult SUMaterialCreate (SUMaterialRef* material);

SUResult SUMaterialRelease (SUMaterialRef* material);

SUResult SUMaterialSetName (SUMaterialRef material, const(char)* name);

SUResult SUMaterialGetName (SUMaterialRef material, SUStringRef* name);

SUResult SUMaterialGetNameLegacyBehavior (
    SUMaterialRef material,
    SUStringRef* name);

SUResult SUMaterialSetColor (SUMaterialRef material, const(SUColor)* color);

SUResult SUMaterialGetColor (SUMaterialRef material, SUColor* color);

SUResult SUMaterialSetTexture (SUMaterialRef material, SUTextureRef texture);

SUResult SUMaterialGetTexture (SUMaterialRef material, SUTextureRef* texture);

SUResult SUMaterialGetOpacity (SUMaterialRef material, double* alpha);

SUResult SUMaterialSetOpacity (SUMaterialRef material, double alpha);

SUResult SUMaterialGetUseOpacity (SUMaterialRef material, bool* use_opacity);

SUResult SUMaterialSetUseOpacity (SUMaterialRef material, bool use_opacity);

SUResult SUMaterialSetType (SUMaterialRef material, SUMaterialType type);

SUResult SUMaterialGetType (SUMaterialRef material, SUMaterialType* type);

SUResult SUMaterialIsDrawnTransparent (
    SUMaterialRef material,
    bool* transparency);

SUResult SUMaterialGetOwnerType (
    SUMaterialRef material,
    SUMaterialOwnerType* type);

SUResult SUMaterialSetColorizeType (
    SUMaterialRef material,
    SUMaterialColorizeType type);

SUResult SUMaterialGetColorizeType (
    SUMaterialRef material,
    SUMaterialColorizeType* type);

SUResult SUMaterialGetColorizeDeltas (
    SUMaterialRef material,
    double* hue,
    double* saturation,
    double* lightness);
