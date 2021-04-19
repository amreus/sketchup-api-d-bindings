module sketchup_api.model.camera;

import sketchup_api.common;
import sketchup_api.defs;
import sketchup_api.geom;
import sketchup_api.model.defs;

extern (C):

SUResult SUCameraCreate (SUCameraRef* camera);

SUResult SUCameraRelease (SUCameraRef* camera);

SUResult SUCameraGetOrientation (
    SUCameraRef camera,
    SUPoint3D* position,
    SUPoint3D* target,
    SUVector3D* up_vector);

SUResult SUCameraSetOrientation (
    SUCameraRef camera,
    const(SUPoint3D)* position,
    const(SUPoint3D)* target,
    const(SUVector3D)* up_vector);

SUResult SUCameraGetViewTransformation (
    SUCameraRef camera,
    SUTransformation* transformation);

SUResult SUCameraSetPerspectiveFrustumFOV (SUCameraRef camera, double fov);

SUResult SUCameraGetPerspectiveFrustumFOV (SUCameraRef camera, double* fov);

SUResult SUCameraSetAspectRatio (SUCameraRef camera, double aspect_ratio);

SUResult SUCameraGetAspectRatio (SUCameraRef camera, double* aspect_ratio);

SUResult SUCameraSetOrthographicFrustumHeight (
    SUCameraRef camera,
    double height);

SUResult SUCameraGetOrthographicFrustumHeight (
    SUCameraRef camera,
    double* height);

SUResult SUCameraSetPerspective (SUCameraRef camera, bool perspective);

SUResult SUCameraGetPerspective (SUCameraRef camera, bool* perspective);

SUResult SUCameraGetClippingDistances (
    SUCameraRef camera,
    double* znear,
    double* zfar);

SUResult SUCameraSetFOVIsHeight (SUCameraRef camera, bool is_fov_height);

SUResult SUCameraGetFOVIsHeight (SUCameraRef camera, bool* is_fov_height);

SUResult SUCameraSetImageWidth (SUCameraRef camera, double width);

SUResult SUCameraGetImageWidth (SUCameraRef camera, double* width);

SUResult SUCameraSetDescription (SUCameraRef camera, const(char)* desc);

SUResult SUCameraGetDescription (SUCameraRef camera, SUStringRef* desc);

SUResult SUCameraGetDirection (SUCameraRef camera, SUVector3D* direction);

SUResult SUCameraSet2D (SUCameraRef camera, bool make_2d);

SUResult SUCameraGet2D (SUCameraRef camera, bool* is_2d);

SUResult SUCameraSetScale2D (SUCameraRef camera, double scale);

SUResult SUCameraGetScale2D (SUCameraRef camera, double* scale);

SUResult SUCameraSetCenter2D (SUCameraRef camera, const(SUPoint3D)* center);

SUResult SUCameraGetCenter2D (SUCameraRef camera, SUPoint3D* center);
