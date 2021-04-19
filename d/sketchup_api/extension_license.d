module sketchup_api.extension_license;

import sketchup_api.common;
// import sketchup_api.model.defs;

extern (C):

enum SUExtensionLicenseState
{
    SUExtensionLicenseState_Licensed = 0,
    SUExtensionLicenseState_Expired = 1,
    SUExtensionLicenseState_Trial = 2,
    SUExtensionLicenseState_TrialExpired = 3,
    SUExtensionLicenseState_NotLicensed = 4
}

struct SUExtensionLicense
{
    bool is_licensed;

    SUExtensionLicenseState state;

    size_t days_remaining;

    char[512] error_description;
}

SUResult SUGetExtensionLicense (
    const(char)* extension_id,
    SUExtensionLicense* out_license);
