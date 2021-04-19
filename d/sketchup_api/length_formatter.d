module sketchup_api.length_formatter;

import sketchup_api.common;
import sketchup_api.defs;

extern (C):

enum SULengthFormatType
{
    SU_LFORMAT_DECIMAL = 0,
    SU_LFORMAT_ARCHITECTURAL = 1,
    SU_LFORMAT_ENGINEERING = 2,
    SU_LFORMAT_FRACTIONAL = 3
}

enum SULengthUnitType
{
    SU_LUNIT_INCHES = 0,
    SU_LUNIT_FEET = 1,
    SU_LUNIT_MILLIMETER = 2,
    SU_LUNIT_CENTIMETER = 3,
    SU_LUNIT_METER = 4,
    SU_LUNIT_YARD = 5
}

enum SUAreaUnitType
{
    SU_AUNIT_SQUARE_INCHES = 0,
    SU_AUNIT_SQUARE_FEET = 1,
    SU_AUNIT_SQUARE_MILLIMETER = 2,
    SU_AUNIT_SQUARE_CENTIMETER = 3,
    SU_AUNIT_SQUARE_METER = 4,
    SU_AUNIT_SQUARE_YARD = 5
}

enum SUVolumeUnitType
{
    SU_VUNIT_CUBIC_INCHES = 0,
    SU_VUNIT_CUBIC_FEET = 1,
    SU_VUNIT_CUBIC_MILLIMETER = 2,
    SU_VUNIT_CUBIC_CENTIMETER = 3,
    SU_VUNIT_CUBIC_METER = 4,
    SU_VUNIT_CUBIC_YARD = 5,
    SU_VUNIT_LITER = 6,
    SU_VUNIT_US_GALLON = 7
}

SUResult SULengthFormatterCreate (SULengthFormatterRef* formatter);

SUResult SULengthFormatterRelease (SULengthFormatterRef* formatter);

SUResult SULengthFormatterGetPrecision (
    SULengthFormatterRef formatter,
    size_t* precision);

SUResult SULengthFormatterSetPrecision (
    SULengthFormatterRef formatter,
    size_t precision);

SUResult SULengthFormatterGetAreaPrecision (
    SULengthFormatterRef formatter,
    size_t* precision);

SUResult SULengthFormatterSetAreaPrecision (
    SULengthFormatterRef formatter,
    size_t precision);

SUResult SULengthFormatterGetVolumePrecision (
    SULengthFormatterRef formatter,
    size_t* precision);

SUResult SULengthFormatterSetVolumePrecision (
    SULengthFormatterRef formatter,
    size_t precision);

SUResult SULengthFormatterGetFormat (
    SULengthFormatterRef formatter,
    SULengthFormatType* format);

SUResult SULengthFormatterSetFormat (
    SULengthFormatterRef formatter,
    SULengthFormatType format);

SUResult SULengthFormatterGetUnits (
    SULengthFormatterRef formatter,
    SULengthUnitType* units);

SUResult SULengthFormatterGetAreaUnits (
    SULengthFormatterRef formatter,
    SUAreaUnitType* units);

SUResult SULengthFormatterGetVolumeUnits (
    SULengthFormatterRef formatter,
    SUVolumeUnitType* units);

SUResult SULengthFormatterSetUnits (
    SULengthFormatterRef formatter,
    SULengthUnitType units);

SUResult SULengthFormatterSetAreaUnits (
    SULengthFormatterRef formatter,
    SUAreaUnitType units);

SUResult SULengthFormatterSetVolumeUnits (
    SULengthFormatterRef formatter,
    SUVolumeUnitType units);

SUResult SULengthFormatterGetSuppressUnits (
    SULengthFormatterRef formatter,
    bool* suppress);

SUResult SULengthFormatterSetSuppressUnits (
    SULengthFormatterRef formatter,
    bool suppress);

SUResult SULengthFormatterGetLengthString (
    SULengthFormatterRef formatter,
    double length,
    bool strip,
    SUStringRef* string);

SUResult SULengthFormatterGetAreaString (
    SULengthFormatterRef formatter,
    double area,
    SUStringRef* string);

SUResult SULengthFormatterGetVolumeString (
    SULengthFormatterRef formatter,
    double volume,
    SUStringRef* string);

SUResult SULengthFormatterParseString (
    SULengthFormatterRef formatter,
    SUStringRef string,
    double* value);

SUResult SULengthFormatterSetForceInchDisplay (
    SULengthFormatterRef formatter,
    bool force_inch);

SUResult SULengthFormatterGetForceInchDisplay (
    SULengthFormatterRef formatter,
    bool* force_inch);
