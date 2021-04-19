module sketchup_api.model.group;

import sketchup_api.common; // SUResult
import sketchup_api.model.defs;
import sketchup_api.geom;
//import sketchup_api.color;
import sketchup_api.defs; // SUStringRef

extern (C):

SUEntityRef SUGroupToEntity (SUGroupRef group);

SUGroupRef SUGroupFromEntity (SUEntityRef entity);

SUDrawingElementRef SUGroupToDrawingElement (SUGroupRef group);

SUGroupRef SUGroupFromDrawingElement (SUDrawingElementRef drawing_elem);

SUComponentInstanceRef SUGroupToComponentInstance (SUGroupRef group);

SUGroupRef SUGroupFromComponentInstance (SUComponentInstanceRef component_inst);

SUResult SUGroupCreate (SUGroupRef* group);

SUResult SUGroupSetName (SUGroupRef group, const(char)* name);

SUResult SUGroupGetName (SUGroupRef group, SUStringRef* name);

SUResult SUGroupGetGuid (SUGroupRef group, SUStringRef* guid);

SUResult SUGroupSetGuid (SUGroupRef group, const(char)* guid_str);

SUResult SUGroupSetTransform (
    SUGroupRef group,
    const(SUTransformation)* transform);

SUResult SUGroupGetTransform (SUGroupRef group, SUTransformation* transform);

SUResult SUGroupGetEntities (SUGroupRef group, SUEntitiesRef* entities);

SUResult SUGroupGetDefinition (
    SUGroupRef group,
    SUComponentDefinitionRef* component);
