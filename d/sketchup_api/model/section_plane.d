module sketchup_api.model.section_plane;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUSectionPlaneToEntity (SUSectionPlaneRef sectionPlane);

SUSectionPlaneRef SUSectionPlaneFromEntity (SUEntityRef entity);

SUDrawingElementRef SUSectionPlaneToDrawingElement (
    SUSectionPlaneRef sectionPlane);

SUSectionPlaneRef SUSectionPlaneFromDrawingElement (
    SUDrawingElementRef drawing_elem);

SUResult SUSectionPlaneCreate (SUSectionPlaneRef* sectionPlane);

SUResult SUSectionPlaneRelease (SUSectionPlaneRef* sectionPlane);

SUResult SUSectionPlaneSetPlane (
    SUSectionPlaneRef sectionPlane,
    const(SUPlane3D)* plane);

SUResult SUSectionPlaneGetPlane (
    SUSectionPlaneRef sectionPlane,
    SUPlane3D* plane);

SUResult SUSectionPlaneIsActive (
    SUSectionPlaneRef sectionPlane,
    bool* is_active);

SUResult SUSectionPlaneGetName (
    SUSectionPlaneRef sectionPlane,
    SUStringRef* name);

SUResult SUSectionPlaneSetName (
    SUSectionPlaneRef sectionPlane,
    const(char)* name);

SUResult SUSectionPlaneGetSymbol (
    SUSectionPlaneRef sectionPlane,
    SUStringRef* symbol);

SUResult SUSectionPlaneSetSymbol (
    SUSectionPlaneRef sectionPlane,
    const(char)* symbol);
