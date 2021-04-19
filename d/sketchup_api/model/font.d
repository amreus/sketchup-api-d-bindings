module sketchup_api.model.font;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUFontGetFaceName (SUFontRef font, SUStringRef* name);

SUResult SUFontGetPointSize (SUFontRef font, size_t* size);

SUResult SUFontGetBold (SUFontRef font, bool* is_bold);

SUResult SUFontGetItalic (SUFontRef font, bool* is_italic);

SUResult SUFontGetUseWorldSize (SUFontRef font, bool* use_world_size);

SUResult SUFontGetWorldSize (SUFontRef font, double* world_size);

SUEntityRef SUFontToEntity (SUFontRef font);

SUFontRef SUFontFromEntity (SUEntityRef entity);
