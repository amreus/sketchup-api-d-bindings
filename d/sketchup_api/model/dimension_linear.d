module sketchup_api.model.dimension_linear;

import sketchup_api.common; // SUResult
//import sketchup_api.defs; // SUStringRef
import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

enum SUHorizontalTextPositionType
{
    SUHorizontalTextPositionCenter = 0,
    SUHorizontalTextPositionOutsideStart = 1,
    SUHorizontalTextPositionOutsideEnd = 2
}

enum SUVerticalTextPositionType
{
    SUVerticalTextPositionCenter = 0,
    SUVerticalTextPositionAbove = 1,
    SUVerticalTextPositionBelow = 2
}

enum SUDimensionLinearAlignmentType
{
    SUDimensionLinearAlignmentAligned = 0,
    SUDimensionLinearAlignmentVertical = 1,
    SUDimensionLinearAlignmentHorizontal = 2
}

SUDimensionRef SUDimensionLinearToDimension (SUDimensionLinearRef dimension);

SUDimensionLinearRef SUDimensionLinearFromDimension (SUDimensionRef dimension);

SUResult SUDimensionLinearCreate (
    SUDimensionLinearRef* dimension,
    const(SUPoint3D)* start_point,
    SUInstancePathRef start_path,
    const(SUPoint3D)* end_point,
    SUInstancePathRef end_path,
    double offset);

SUResult SUDimensionLinearRelease (SUDimensionLinearRef* dimension);

SUResult SUDimensionLinearGetStartPoint (
    SUDimensionLinearRef dimension,
    SUPoint3D* point,
    SUInstancePathRef* path);

SUResult SUDimensionLinearSetStartPoint (
    SUDimensionLinearRef dimension,
    const(SUPoint3D)* point,
    SUInstancePathRef path);

SUResult SUDimensionLinearGetEndPoint (
    SUDimensionLinearRef dimension,
    SUPoint3D* point,
    SUInstancePathRef* path);

SUResult SUDimensionLinearSetEndPoint (
    SUDimensionLinearRef dimension,
    const(SUPoint3D)* point,
    SUInstancePathRef path);

SUResult SUDimensionLinearGetXAxis (
    SUDimensionLinearRef dimension,
    SUVector3D* axis);

SUResult SUDimensionLinearSetXAxis (
    SUDimensionLinearRef dimension,
    const(SUVector3D)* axis);

SUResult SUDimensionLinearGetNormal (
    SUDimensionLinearRef dimension,
    SUVector3D* normal);

SUResult SUDimensionLinearSetNormal (
    SUDimensionLinearRef dimension,
    const(SUVector3D)* normal);

SUResult SUDimensionLinearGetPosition (
    SUDimensionLinearRef dimension,
    SUPoint2D* position);

SUResult SUDimensionLinearSetPosition (
    SUDimensionLinearRef dimension,
    const(SUPoint2D)* position);

SUResult SUDimensionLinearGetVerticalAlignment (
    SUDimensionLinearRef dimension,
    SUVerticalTextPositionType* alignment);

SUResult SUDimensionLinearSetVerticalAlignment (
    SUDimensionLinearRef dimension,
    SUVerticalTextPositionType alignment);

SUResult SUDimensionLinearGetHorizontalAlignment (
    SUDimensionLinearRef dimension,
    SUHorizontalTextPositionType* alignment);

SUResult SUDimensionLinearSetHorizontalAlignment (
    SUDimensionLinearRef dimension,
    SUHorizontalTextPositionType alignment);

SUResult SUDimensionLinearGetAlignment (
    SUDimensionLinearRef dimension,
    SUDimensionLinearAlignmentType* alignment);

SUResult SUDimensionLinearGetTextPosition (
    SUDimensionLinearRef dimension,
    SUPoint3D* position);
