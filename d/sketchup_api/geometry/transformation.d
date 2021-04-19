module sketchup_api.geometry.transformation;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUTransformationSetFromPointAndNormal (
    SUTransformation* transform,
    const(SUPoint3D)* point,
    const(SUVector3D)* normal);

SUResult SUTransformationSetFromPointAndAxes (
    SUTransformation* transform,
    const(SUPoint3D)* point,
    const(SUVector3D)* x_axis,
    const(SUVector3D)* y_axis,
    const(SUVector3D)* z_axis);

SUResult SUTransformationTranslation (
    SUTransformation* transform,
    const(SUVector3D)* vector);

SUResult SUTransformationScale (SUTransformation* transform, double scale);

SUResult SUTransformationNonUniformScale (
    SUTransformation* transform,
    double x_scale,
    double y_scale,
    double z_scale);

SUResult SUTransformationScaleAboutPoint (
    SUTransformation* transform,
    const(SUPoint3D)* point,
    double scale);

SUResult SUTransformationNonUniformScaleAboutPoint (
    SUTransformation* transform,
    const(SUPoint3D)* point,
    double x_scale,
    double y_scale,
    double z_scale);

SUResult SUTransformationRotation (
    SUTransformation* transform,
    const(SUPoint3D)* point,
    const(SUVector3D)* vector,
    double angle);

SUResult SUTransformationInterpolate (
    SUTransformation* transform,
    const(SUTransformation)* t1,
    const(SUTransformation)* t2,
    double weight);

SUResult SUTransformationIsIdentity (
    const(SUTransformation)* transform,
    bool* is_identity);

SUResult SUTransformationGetInverse (
    const(SUTransformation)* transform,
    SUTransformation* inverse);

SUResult SUTransformationGetOrigin (
    const(SUTransformation)* transform,
    SUPoint3D* origin);

SUResult SUTransformationGetXAxis (
    const(SUTransformation)* transform,
    SUVector3D* x_axis);

SUResult SUTransformationGetYAxis (
    const(SUTransformation)* transform,
    SUVector3D* y_axis);

SUResult SUTransformationGetZAxis (
    const(SUTransformation)* transform,
    SUVector3D* z_axis);

SUResult SUTransformationGetZRotation (
    const(SUTransformation)* transform,
    double* z_rotation);

SUResult SUTransformationMultiply (
    const(SUTransformation)* transform1,
    const(SUTransformation)* transform2,
    SUTransformation* out_transform);

SUResult SUTransformationIsMirrored (
    const(SUTransformation)* transform,
    bool* is_mirrored);
