module sketchup_api.model.defs;

extern (C):

struct SUArcCurveRef
{
  void* ptr;
}

struct SUAttributeDictionaryRef
{
  void* ptr;
}

struct SUAxesRef
{
  void* ptr;
}

struct SUCameraRef
{
  void* ptr;
}

struct SUClassificationsRef
{
  void* ptr;
}

struct SUClassificationAttributeRef
{
  void* ptr;
}

struct SUClassificationInfoRef
{
  void* ptr;
}

struct SUComponentDefinitionRef
{
  void* ptr;
}

struct SUComponentInstanceRef
{
  void* ptr;
}

struct SUCurveRef
{
  void* ptr;
}

struct SUDimensionRef
{
  void* ptr;
}

struct SUDimensionLinearRef
{
  void* ptr;
}

struct SUDimensionRadialRef
{
  void* ptr;
}

struct SUDimensionStyleRef
{
  void* ptr;
}

struct SUDrawingElementRef
{
  void* ptr;
}

struct SUDynamicComponentInfoRef
{
  void* ptr;
}

struct SUDynamicComponentAttributeRef
{
  void* ptr;
}

struct SUEdgeRef
{
  void* ptr;
}

struct SUEdgeUseRef
{
  void* ptr;
}

struct SUEntitiesRef
{
  void* ptr;
}

struct SUEntityListRef
{
  void* ptr;
}

struct SUEntityListIteratorRef
{
  void* ptr;
}

struct SUEntityRef
{
  void* ptr;
}

struct SUFaceRef
{
  void* ptr;
}

struct SUFontRef
{
  void* ptr;
}

struct SUGeometryInputRef
{
  void* ptr;
}

struct SUGroupRef
{
  void* ptr;
}

struct SUGuideLineRef
{
  void* ptr;
}

struct SUGuidePointRef
{
  void* ptr;
}

struct SUImageRef
{
  void* ptr;
}

struct SUImageRepRef
{
  void* ptr;
}

struct SUInstancePathRef
{
  void* ptr;
}

struct SULayerRef
{
  void* ptr;
}

struct SULayerFolderRef
{
  void* ptr;
}

struct SULineStyleRef
{
  void* ptr;
}

struct SULineStylesRef
{
  void* ptr;
}

struct SULocationRef
{
  void* ptr;
}

struct SULoopInputRef
{
  void* ptr;
}

struct SULoopRef
{
  void* ptr;
}

struct SUMaterialRef
{
  void* ptr;
}

struct SUMeshHelperRef
{
  void* ptr;
}

struct SUModelRef
{
  void* ptr;
}

struct SUOpeningRef
{
  void* ptr;
}

struct SUOptionsManagerRef
{
  void* ptr;
}

struct SUOptionsProviderRef
{
  void* ptr;
}

struct SUPolyline3dRef
{
  void* ptr;
}

struct SURenderingOptionsRef
{
  void* ptr;
}

struct SUSceneRef
{
  void* ptr;
}

struct SUSchemaRef
{
  void* ptr;
}

struct SUSchemaTypeRef
{
  void* ptr;
}

struct SUSectionPlaneRef
{
  void* ptr;
}

struct SUSelectionRef
{
  void* ptr;
}

struct SUShadowInfoRef
{
  void* ptr;
}

struct SUStyleRef
{
  void* ptr;
}

struct SUStylesRef
{
  void* ptr;
}

struct SUTextRef
{
  void* ptr;
}

struct SUTextureRef
{
  void* ptr;
}

struct SUTextureWriterRef
{
  void* ptr;
}

struct SUTypedValueRef
{
  void* ptr;
}

struct SUUVHelperRef
{
  void* ptr;
}

struct SUVertexRef
{
  void* ptr;
}

enum SURefType
{
  SURefType_Unknown = 0,
  SURefType_AttributeDictionary = 1,
  SURefType_Camera = 2,
  SURefType_ComponentDefinition = 3,
  SURefType_ComponentInstance = 4,
  SURefType_Curve = 5,
  SURefType_Edge = 6,
  SURefType_EdgeUse = 7,
  SURefType_Entities = 8,
  SURefType_Face = 9,
  SURefType_Group = 10,
  SURefType_Image = 11,
  SURefType_Layer = 12,
  SURefType_Location = 13,
  SURefType_Loop = 14,
  SURefType_MeshHelper = 15,
  SURefType_Material = 16,
  SURefType_Model = 17,
  SURefType_Polyline3D = 18,
  SURefType_Scene = 19,
  SURefType_Texture = 20,
  SURefType_TextureWriter = 21,
  SURefType_TypedValue = 22,
  SURefType_UVHelper = 23,
  SURefType_Vertex = 24,
  SURefType_RenderingOptions = 25,
  SURefType_GuidePoint = 26,
  SURefType_GuideLine = 27,
  SURefType_Schema = 28,
  SURefType_SchemaType = 29,
  SURefType_ShadowInfo = 30,
  SURefType_Axes = 31,
  SURefType_ArcCurve = 32,
  SURefType_SectionPlane = 33,
  SURefType_DynamicComponentInfo = 34,
  SURefType_DynamicComponentAttribute = 35,
  SURefType_Style = 36,
  SURefType_Styles = 37,
  SURefType_ImageRep = 38,
  SURefType_InstancePath = 39,
  SURefType_Font = 40,
  SURefType_Dimension = 41,
  SURefType_DimensionLinear = 42,
  SURefType_DimensionRadial = 43,
  SURefType_DimensionStyle = 44,
  SURefType_Text = 45,
  SURefType_EntityList = 46,
  SURefType_EntityListIterator = 47,
  SURefType_DrawingElement = 48,
  SURefType_Entity = 49,
  SURefType_LengthFormatter = 50,
  SURefType_LineStyle = 51,
  SURefType_LineStyleManager = 52,
  SURefType_Selection = 53,
  SURefType_LayerFolder = 54
}
