module sketchup_api.geometry.transformation2d;

import sketchup_api.common;
import sketchup_api.geom;

extern (C):

SUResult SUTransformation2DTranslation (
    SUTransformation2D* transform,
    const(SUVector2D)* vector);

SUResult SUTransformation2DScale (SUTransformation2D* transform, double scale);

SUResult SUTransformation2DNonUniformScale (
    SUTransformation2D* transform,
    double x_scale,
    double y_scale);

SUResult SUTransformation2DScaleAboutPoint (
    SUTransformation2D* transform,
    const(SUPoint2D)* point,
    double scale);

SUResult SUTransformation2DNonUniformScaleAboutPoint (
    SUTransformation2D* transform,
    const(SUPoint2D)* point,
    double x_scale,
    double y_scale);

SUResult SUTransformation2DRotation (
    SUTransformation2D* transform,
    const(SUPoint2D)* point,
    double angle);

SUResult SUTransformation2DIsIdentity (
    const(SUTransformation2D)* transform,
    bool* is_identity);

SUResult SUTransformation2DGetInverse (
    const(SUTransformation2D)* transform,
    SUTransformation2D* inverse);

SUResult SUTransformation2DMultiply (
    const(SUTransformation2D)* transform1,
    const(SUTransformation2D)* transform2,
    SUTransformation2D* out_transform);
