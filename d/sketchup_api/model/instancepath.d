module sketchup_api.model.instancepath;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUResult SUInstancePathCreate (SUInstancePathRef* instance_path);

SUResult SUInstancePathCreateCopy (
    SUInstancePathRef* instance_path,
    SUInstancePathRef source_path);

SUResult SUInstancePathRelease (SUInstancePathRef* instance_path);

SUResult SUInstancePathPushInstance (
    SUInstancePathRef instance_path,
    SUComponentInstanceRef component_instance);

SUResult SUInstancePathPopInstance (SUInstancePathRef instance_path);

SUResult SUInstancePathSetLeaf (
    SUInstancePathRef instance_path,
    SUEntityRef entity);

SUResult SUInstancePathGetPathDepth (
    SUInstancePathRef instance_path,
    size_t* depth);

SUResult SUInstancePathGetFullDepth (
    SUInstancePathRef instance_path,
    size_t* full_depth);

SUResult SUInstancePathGetTransform (
    SUInstancePathRef instance_path,
    SUTransformation* transform);

SUResult SUInstancePathGetTransformAtDepth (
    SUInstancePathRef instance_path,
    size_t depth,
    SUTransformation* transform);

SUResult SUInstancePathGetInstanceAtDepth (
    SUInstancePathRef instance_path,
    size_t depth,
    SUComponentInstanceRef* instance);

SUResult SUInstancePathGetLeafAsEntity (
    SUInstancePathRef instance_path,
    SUEntityRef* entity);

SUResult SUInstancePathGetLeaf (
    SUInstancePathRef instance_path,
    SUDrawingElementRef* drawing_element);

SUResult SUInstancePathIsValid (SUInstancePathRef instance_path, bool* valid);

SUResult SUInstancePathIsEmpty (SUInstancePathRef instance_path, bool* empty);

SUResult SUInstancePathContains (
    SUInstancePathRef instance_path,
    SUEntityRef entity,
    bool* contains);

SUResult SUInstancePathGetPersistentID (
    SUInstancePathRef instance_path,
    SUStringRef* pid);

SUResult SUInstancePathGetPersistentIDAtDepth (
    SUInstancePathRef instance_path,
    size_t depth,
    SUStringRef* pid);
