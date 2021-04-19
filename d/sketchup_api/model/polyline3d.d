module sketchup_api.model.polyline3d;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
//import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUPolyline3dToEntity (SUPolyline3dRef line);

SUPolyline3dRef SUPolyline3dFromEntity (SUEntityRef entity);

SUDrawingElementRef SUPolyline3dToDrawingElement (SUPolyline3dRef line);

SUPolyline3dRef SUPolyline3dFromDrawingElement (
    SUDrawingElementRef drawing_elem);

SUResult SUPolyline3dCreate (SUPolyline3dRef* polyline);

SUResult SUPolyline3dRelease (SUPolyline3dRef* polyline);

SUResult SUPolyline3dAddPoints (
    SUPolyline3dRef polyline,
    size_t num_points,
    SUPoint3D* points);

SUResult SUPolyline3dGetNumPoints (SUPolyline3dRef line, size_t* count);

SUResult SUPolyline3dGetPoints (
    SUPolyline3dRef line,
    size_t len,
    SUPoint3D* points,
    size_t* count);
