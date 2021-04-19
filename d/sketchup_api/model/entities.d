module sketchup_api.model.entities;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUEntitiesClear (SUEntitiesRef entities);

SUResult SUEntitiesFill (
    SUEntitiesRef entities,
    SUGeometryInputRef geom_input,
    bool weld_vertices);

SUResult SUEntitiesGetBoundingBox (
    SUEntitiesRef entities,
    SUBoundingBox3D* bbox);

SUResult SUEntitiesGetBoundingBoxLLA (
    SUEntitiesRef entities,
    SUBoundingBox3D* bbox);

SUResult SUEntitiesGetNumFaces (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetFaces (
    SUEntitiesRef entities,
    size_t len,
    SUFaceRef* faces,
    size_t* count);

SUResult SUEntitiesGetNumCurves (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetCurves (
    SUEntitiesRef entities,
    size_t len,
    SUCurveRef* curves,
    size_t* count);

SUResult SUEntitiesGetNumArcCurves (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetArcCurves (
    SUEntitiesRef entities,
    size_t len,
    SUArcCurveRef* arccurves,
    size_t* count);

SUResult SUEntitiesGetNumGuidePoints (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetGuidePoints (
    SUEntitiesRef entities,
    size_t len,
    SUGuidePointRef* guide_points,
    size_t* count);

SUResult SUEntitiesGetNumGuideLines (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetGuideLines (
    SUEntitiesRef entities,
    size_t len,
    SUGuideLineRef* guide_lines,
    size_t* count);

SUResult SUEntitiesGetNumEdges (
    SUEntitiesRef entities,
    bool standalone_only,
    size_t* count);

SUResult SUEntitiesGetEdges (
    SUEntitiesRef entities,
    bool standalone_only,
    size_t len,
    SUEdgeRef* edges,
    size_t* count);

SUResult SUEntitiesGetNumPolyline3ds (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetPolyline3ds (
    SUEntitiesRef entities,
    size_t len,
    SUPolyline3dRef* lines,
    size_t* count);

SUResult SUEntitiesAddFaces (
    SUEntitiesRef entities,
    size_t len,
    const(SUFaceRef)* faces);

SUResult SUEntitiesAddEdges (
    SUEntitiesRef entities,
    size_t len,
    const(SUEdgeRef)* edges);

SUResult SUEntitiesAddCurves (
    SUEntitiesRef entities,
    size_t len,
    const(SUCurveRef)* curves);

SUResult SUEntitiesAddArcCurves (
    SUEntitiesRef entities,
    size_t len,
    const(SUArcCurveRef)* curves);

SUResult SUEntitiesAddGuidePoints (
    SUEntitiesRef entities,
    size_t len,
    const(SUGuidePointRef)* guide_points);

SUResult SUEntitiesAddGuideLines (
    SUEntitiesRef entities,
    size_t len,
    const(SUGuideLineRef)* guide_lines);

SUResult SUEntitiesAddGroup (SUEntitiesRef entities, SUGroupRef group);

SUResult SUEntitiesAddImage (SUEntitiesRef entities, SUImageRef image);

SUResult SUEntitiesAddInstance (
    SUEntitiesRef entities,
    SUComponentInstanceRef instance,
    SUStringRef* name);

SUResult SUEntitiesAddSectionPlanes (
    SUEntitiesRef entities,
    size_t len,
    const(SUSectionPlaneRef)* section_planes);

SUResult SUEntitiesAddTexts (
    SUEntitiesRef entities,
    size_t len,
    const(SUTextRef)* texts);

SUResult SUEntitiesGetNumGroups (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetGroups (
    SUEntitiesRef entities,
    size_t len,
    SUGroupRef* groups,
    size_t* count);

SUResult SUEntitiesGetNumImages (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetImages (
    SUEntitiesRef entities,
    size_t len,
    SUImageRef* images,
    size_t* count);

SUResult SUEntitiesGetNumInstances (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetInstances (
    SUEntitiesRef entities,
    size_t len,
    SUComponentInstanceRef* instances,
    size_t* count);

SUResult SUEntitiesGetNumSectionPlanes (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetNumTexts (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetSectionPlanes (
    SUEntitiesRef entities,
    size_t len,
    SUSectionPlaneRef* section_planes,
    size_t* count);

SUResult SUEntitiesGetNumDimensions (SUEntitiesRef entities, size_t* count);

SUResult SUEntitiesGetDimensions (
    SUEntitiesRef entities,
    size_t len,
    SUDimensionRef* dimensions,
    size_t* count);

SUResult SUEntitiesGetTexts (
    SUEntitiesRef entities,
    size_t len,
    SUTextRef* texts,
    size_t* count);

SUResult SUEntitiesTransform (
    SUEntitiesRef entities,
    size_t len,
    SUEntityRef* elements,
    const(SUTransformation)* trans);

SUResult SUEntitiesTransformMultiple (
    SUEntitiesRef entities,
    size_t len,
    SUEntityRef* elements,
    const(SUTransformation)* tranforms);

SUResult SUEntitiesErase (
    SUEntitiesRef entities,
    size_t len,
    SUEntityRef* elements);

SUResult SUEntitiesIsRecursivelyEmpty (SUEntitiesRef entities, bool* is_empty);

SUResult SUEntitiesHasSectionCuts (
    SUEntitiesRef entities,
    bool* has_section_cuts);

SUResult SUEntitiesEntityListFill (
    SUEntitiesRef entities,
    SURefType type,
    SUEntityListRef list);

SUResult SUEntitiesWeld (
    SUEntitiesRef entities,
    size_t num_edges,
    SUEdgeRef* edges,
    SUEntityListRef list);
