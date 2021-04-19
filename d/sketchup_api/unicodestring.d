module sketchup_api.unicodestring;

import sketchup_api.common;
import sketchup_api.defs;

extern (C):

SUResult SUStringCreate (SUStringRef* out_string_ref);

SUResult SUStringCreateFromUTF8 (
    SUStringRef* out_string_ref,
    const(char)* char_array);

SUResult SUStringCreateFromUTF16 (
    SUStringRef* out_string_ref,
    const(unichar)* char_array);

SUResult SUStringRelease (SUStringRef* string_ref);

SUResult SUStringGetUTF8Length (SUStringRef string_ref, size_t* out_length);

SUResult SUStringGetUTF16Length (SUStringRef string_ref, size_t* out_length);

SUResult SUStringSetUTF8 (SUStringRef string_ref, const(char)* char_array);

SUResult SUStringSetUTF16 (SUStringRef string_ref, const(unichar)* char_array);

SUResult SUStringGetUTF8 (
    SUStringRef string_ref,
    size_t char_array_length,
    char* out_char_array,
    size_t* out_number_of_chars_copied);

SUResult SUStringGetUTF16 (
    SUStringRef string_ref,
    size_t char_array_length,
    unichar* out_char_array,
    size_t* out_number_of_chars_copied);

SUResult SUStringTrimLeft (SUStringRef string_ref);

SUResult SUStringTrimRight (SUStringRef string_ref);

SUResult SUStringCompare (SUStringRef a, SUStringRef b, int* result);
