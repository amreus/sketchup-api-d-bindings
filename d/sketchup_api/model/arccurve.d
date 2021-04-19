module sketchup_api.model.arccurve;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;

extern (C):

SUEntityRef SUArcCurveToEntity (SUArcCurveRef arccurve);

SUArcCurveRef SUArcCurveFromEntity (SUEntityRef entity);

SUCurveRef SUArcCurveToCurve (SUArcCurveRef arccurve);

SUArcCurveRef SUArcCurveFromCurve (SUCurveRef curve);

SUResult SUArcCurveCreate (
    SUArcCurveRef* arccurve,
    const(SUPoint3D)* center,
    const(SUPoint3D)* start_point,
    const(SUPoint3D)* end_point,
    const(SUVector3D)* normal,
    size_t num_edges);

SUResult SUArcCurveRelease (SUArcCurveRef* arccurve);

SUResult SUArcCurveGetRadius (SUArcCurveRef arccurve, double* radius);

SUResult SUArcCurveGetStartPoint (SUArcCurveRef arccurve, SUPoint3D* point);

SUResult SUArcCurveGetEndPoint (SUArcCurveRef arccurve, SUPoint3D* point);

SUResult SUArcCurveGetXAxis (SUArcCurveRef arccurve, SUVector3D* axis);

SUResult SUArcCurveGetYAxis (SUArcCurveRef arccurve, SUVector3D* axis);

SUResult SUArcCurveGetCenter (SUArcCurveRef arccurve, SUPoint3D* point);

SUResult SUArcCurveGetNormal (SUArcCurveRef arccurve, SUVector3D* normal);

SUResult SUArcCurveGetStartAngle (SUArcCurveRef arccurve, double* angle);

SUResult SUArcCurveGetEndAngle (SUArcCurveRef arccurve, double* angle);

SUResult SUArcCurveGetIsFullCircle (SUArcCurveRef arccurve, bool* is_full);
