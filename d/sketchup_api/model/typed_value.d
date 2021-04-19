module sketchup_api.model.typed_value;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

enum SUTypedValueType
{
    SUTypedValueType_Empty = 0,
    SUTypedValueType_Byte = 1,
    SUTypedValueType_Short = 2,
    SUTypedValueType_Int32 = 3,
    SUTypedValueType_Float = 4,
    SUTypedValueType_Double = 5,
    SUTypedValueType_Bool = 6,
    SUTypedValueType_Color = 7,
    SUTypedValueType_Time = 8,
    SUTypedValueType_String = 9,
    SUTypedValueType_Vector3D = 10,
    SUTypedValueType_Array = 11
}

SUResult SUTypedValueCreate (SUTypedValueRef* typed_value);

SUResult SUTypedValueRelease (SUTypedValueRef* typed_value);

SUResult SUTypedValueGetType (
    SUTypedValueRef typed_value,
    SUTypedValueType* type);

SUResult SUTypedValueGetByte (SUTypedValueRef typed_value, char* byte_value);

SUResult SUTypedValueSetByte (SUTypedValueRef typed_value, char byte_value);

SUResult SUTypedValueGetInt16 (SUTypedValueRef typed_value, short* int16_value);

SUResult SUTypedValueSetInt16 (SUTypedValueRef typed_value, short int16_value);

SUResult SUTypedValueGetInt32 (SUTypedValueRef typed_value, int* int32_value);

SUResult SUTypedValueSetInt32 (SUTypedValueRef typed_value, int int32_value);

SUResult SUTypedValueGetFloat (SUTypedValueRef typed_value, float* float_value);

SUResult SUTypedValueSetFloat (SUTypedValueRef typed_value, float float_value);

SUResult SUTypedValueGetDouble (
    SUTypedValueRef typed_value,
    double* double_value);

SUResult SUTypedValueSetDouble (
    SUTypedValueRef typed_value,
    double double_value);

SUResult SUTypedValueGetBool (SUTypedValueRef typed_value, bool* bool_value);

SUResult SUTypedValueSetBool (SUTypedValueRef typed_value, bool bool_value);

SUResult SUTypedValueGetColor (SUTypedValueRef typed_value, SUColor* color);

SUResult SUTypedValueSetColor (
    SUTypedValueRef typed_value,
    const(SUColor)* color);

SUResult SUTypedValueGetTime (SUTypedValueRef typed_value, long* time_value);

SUResult SUTypedValueSetTime (SUTypedValueRef typed_value, long time_value);

SUResult SUTypedValueGetString (
    SUTypedValueRef typed_value,
    SUStringRef* string_value);

SUResult SUTypedValueSetString (
    SUTypedValueRef typed_value,
    const(char)* string_value);

SUResult SUTypedValueGetVector3d (
    SUTypedValueRef typed_value,
    ref double[3] vector3d_value);

SUResult SUTypedValueSetVector3d (
    SUTypedValueRef typed_value,
    ref const(double)[3] vector3d_value);

SUResult SUTypedValueSetUnitVector3d (
    SUTypedValueRef typed_value,
    ref const(double)[3] vector3d_value);

SUResult SUTypedValueGetArrayItems (
    SUTypedValueRef typed_value,
    size_t len,
    SUTypedValueRef* values,
    size_t* count);

SUResult SUTypedValueSetArrayItems (
    SUTypedValueRef typed_value,
    size_t len,
    SUTypedValueRef* values);

SUResult SUTypedValueGetNumArrayItems (
    SUTypedValueRef typed_value,
    size_t* count);
