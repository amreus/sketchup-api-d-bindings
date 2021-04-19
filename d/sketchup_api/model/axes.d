module sketchup_api.model.axes;

import sketchup_api.common;
import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

SUEntityRef SUAxesToEntity (SUAxesRef axes);

SUAxesRef SUAxesFromEntity (SUEntityRef entity);

SUDrawingElementRef SUAxesToDrawingElement (SUAxesRef axes);

SUAxesRef SUAxesFromDrawingElement (SUDrawingElementRef drawing_elem);

SUResult SUAxesCreate (SUAxesRef* axes);

SUResult SUAxesCreateCustom (
    SUAxesRef* axes,
    const(SUPoint3D)* origin,
    const(SUVector3D)* xaxis,
    const(SUVector3D)* yaxis,
    const(SUVector3D)* zaxis);

SUResult SUAxesRelease (SUAxesRef* axes);

SUResult SUAxesGetOrigin (SUAxesRef axes, SUPoint3D* origin);

SUResult SUAxesSetOrigin (SUAxesRef axes, const(SUPoint3D)* origin);

SUResult SUAxesGetXAxis (SUAxesRef axes, SUVector3D* axis);

SUResult SUAxesGetYAxis (SUAxesRef axes, SUVector3D* axis);

SUResult SUAxesGetZAxis (SUAxesRef axes, SUVector3D* axis);

SUResult SUAxesSetAxesVecs (
    SUAxesRef axes,
    const(SUVector3D)* xaxis,
    const(SUVector3D)* yaxis,
    const(SUVector3D)* zaxis);

SUResult SUAxesGetTransform (SUAxesRef axes, SUTransformation* transform);

SUResult SUAxesGetPlane (SUAxesRef axes, SUPlane3D* plane);
