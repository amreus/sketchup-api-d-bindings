module sketchup_api.model.dimension;

import sketchup_api.common;
import sketchup_api.defs;
import sketchup_api.geom;
import sketchup_api.model.defs;
import sketchup_api.model.arrow_type;

extern (C):

enum SUDimensionType
{
    SUDimensionType_Invalid = 0,
    SUDimensionType_Linear = 1,
    SUDimensionType_Radial = 2
}

SUEntityRef SUDimensionToEntity (SUDimensionRef dimension);

SUDimensionRef SUDimensionFromEntity (SUEntityRef entity);

SUDrawingElementRef SUDimensionToDrawingElement (SUDimensionRef dimension);

SUDimensionRef SUDimensionFromDrawingElement (SUDrawingElementRef element);

SUResult SUDimensionGetType (SUDimensionRef dimension, SUDimensionType* type);

SUResult SUDimensionGetText (SUDimensionRef dimension, SUStringRef* text);

SUResult SUDimensionSetText (SUDimensionRef dimension, const(char)* text);

SUResult SUDimensionGetPlane (SUDimensionRef dimension, SUPlane3D* plane);

SUResult SUDimensionGetText3D (SUDimensionRef dimension, bool* is_text_3d);

SUResult SUDimensionSetText3D (SUDimensionRef dimension, bool is_text_3d);

SUResult SUDimensionGetArrowType (SUDimensionRef dimension, SUArrowType* type);

SUResult SUDimensionSetArrowType (SUDimensionRef dimension, SUArrowType type);

SUResult SUDimensionGetFont (SUDimensionRef dimension, SUFontRef* font);

SUResult SUDimensionSetFont (SUDimensionRef dimension, SUFontRef font);
