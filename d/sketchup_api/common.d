module sketchup_api.common;

extern (C):

enum SUResult
{
    SU_ERROR_NONE = 0,

    SU_ERROR_NULL_POINTER_INPUT = 1,

    SU_ERROR_INVALID_INPUT = 2,

    SU_ERROR_NULL_POINTER_OUTPUT = 3,

    SU_ERROR_INVALID_OUTPUT = 4,

    SU_ERROR_OVERWRITE_VALID = 5,

    SU_ERROR_GENERIC = 6,

    SU_ERROR_SERIALIZATION = 7,

    SU_ERROR_OUT_OF_RANGE = 8,

    SU_ERROR_NO_DATA = 9,

    SU_ERROR_INSUFFICIENT_SIZE = 10,

    SU_ERROR_UNKNOWN_EXCEPTION = 11,

    SU_ERROR_MODEL_INVALID = 12,

    SU_ERROR_MODEL_VERSION = 13,

    SU_ERROR_LAYER_LOCKED = 14,

    SU_ERROR_DUPLICATE = 15,

    SU_ERROR_PARTIAL_SUCCESS = 16,

    SU_ERROR_UNSUPPORTED = 17,

    SU_ERROR_INVALID_ARGUMENT = 18,

    SU_ERROR_ENTITY_LOCKED = 19,

    SU_ERROR_INVALID_OPERATION = 20
}

alias SU_ERROR_NONE = SUResult.SU_ERROR_NONE;
alias unichar = ushort;

extern (D) auto SUIsValid(T)(auto ref T VARIABLE)
{
    return VARIABLE.ptr != 0;
}

extern (D) auto SUIsInvalid(T)(auto ref T VARIABLE)
{
    return VARIABLE.ptr == 0;
}

extern (D) auto SUAreEqual(T0, T1)(auto ref T0 VARIABLE1, auto ref T1 VARIABLE2)
{
    return VARIABLE1.ptr == VARIABLE2.ptr;
}
