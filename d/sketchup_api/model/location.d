module sketchup_api.model.location;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
//import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SULocationGetLatLong (
    SULocationRef location,
    double* latitude,
    double* longitude);

SUResult SULocationSetLatLong (
    SULocationRef location,
    double latitude,
    double longitude);

SUResult SULocationSetNorthAngle (SULocationRef location, double north_angle);
