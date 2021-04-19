module sketchup_api.model.dimension_radial;

import sketchup_api.common; // SUResult
//import sketchup_api.defs; // SUStringRef
import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

SUDimensionRef SUDimensionRadialToDimension (SUDimensionRadialRef dimension);

SUDimensionRadialRef SUDimensionRadialFromDimension (SUDimensionRef dimension);

SUResult SUDimensionRadialCreate (
    SUDimensionRadialRef* dimension,
    SUInstancePathRef path);

SUResult SUDimensionRadialRelease (SUDimensionRadialRef* dimension);

SUResult SUDimensionRadialGetCurveInstancePath (
    SUDimensionRadialRef dimension,
    SUInstancePathRef* path);

SUResult SUDimensionRadialSetCurveInstancePath (
    SUDimensionRadialRef dimension,
    SUInstancePathRef path);

SUResult SUDimensionRadialGetDiameter (
    SUDimensionRadialRef dimension,
    bool* is_diameter);

SUResult SUDimensionRadialSetDiameter (
    SUDimensionRadialRef dimension,
    bool is_diameter);

SUResult SUDimensionRadialGetLeaderBreakPoint (
    SUDimensionRadialRef dimension,
    SUPoint3D* point);

SUResult SUDimensionRadialSetLeaderBreakPoint (
    SUDimensionRadialRef dimension,
    const(SUPoint3D)* point);

SUResult SUDimensionRadialGetLeaderPoints (
    SUDimensionRadialRef dimension,
    ref SUPoint3D[3] points);
