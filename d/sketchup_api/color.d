module sketchup_api.color;

import sketchup_api.common;
import sketchup_api.defs;
import sketchup_api.unicodestring;

extern (C):

alias SUByte = ubyte;

struct SUColor
{
    SUByte red;
    SUByte green;
    SUByte blue;
    SUByte alpha;
}

SUResult SUColorBlend (
    const SUColor color1,
    const SUColor color2,
    const double weight,
    SUColor* blended_color);

SUResult SUColorGetNumNames (size_t* size);

SUResult SUColorGetNames (SUStringRef* names, const size_t size);

SUResult SUColorSetByName (SUColor* color, const(char)* name);

SUResult SUColorSetByValue (SUColor* color, const size_t value);
