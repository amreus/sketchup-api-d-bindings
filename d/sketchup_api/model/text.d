module sketchup_api.model.text;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
import sketchup_api.color;
import sketchup_api.defs; // SUStringRef
import sketchup_api.model.arrow_type;

extern (C):

enum SUTextLeaderType
{
    SUTextLeaderType_None = 0,
    SUTextLeaderType_ViewBased = 1,
    SUTextLeaderType_PushPin = 2
}

SUEntityRef SUTextToEntity (SUTextRef text);

SUTextRef SUTextFromEntity (SUEntityRef entity);

SUDrawingElementRef SUTextToDrawingElement (SUTextRef text);

SUTextRef SUTextFromDrawingElement (SUDrawingElementRef element);

SUResult SUTextCreate (SUTextRef* text);

SUResult SUTextRelease (SUTextRef* text);

SUResult SUTextSetString (SUTextRef text, const(char)* string);

SUResult SUTextGetString (SUTextRef text, SUStringRef* string);

SUResult SUTextSetFont (SUTextRef text, SUFontRef font);

SUResult SUTextGetFont (SUTextRef text, SUFontRef* font);

SUResult SUTextSetLeaderType (SUTextRef text, SUTextLeaderType leader);

SUResult SUTextGetLeaderType (SUTextRef text, SUTextLeaderType* leader);

SUResult SUTextSetArrowType (SUTextRef text, SUArrowType arrow_type);

SUResult SUTextGetArrowType (SUTextRef text, SUArrowType* arrow_type);

SUResult SUTextSetPoint (
    SUTextRef text,
    const(SUPoint3D)* point,
    SUInstancePathRef path);

SUResult SUTextGetPoint (
    SUTextRef text,
    SUPoint3D* point,
    SUInstancePathRef* path);

SUResult SUTextSetLeaderVector (SUTextRef text, const(SUVector3D)* vector);

SUResult SUTextGetLeaderVector (SUTextRef text, SUVector3D* vector);

SUResult SUTextSetColor (SUTextRef text, const(SUColor)* color);

SUResult SUTextGetColor (SUTextRef text, SUColor* color);

SUResult SUTextSetScreenPosition (
    SUTextRef text,
    const double percent_x,
    const double percent_y);

SUResult SUTextGetScreenPosition (
    SUTextRef text,
    double* percent_x,
    double* percent_y);
