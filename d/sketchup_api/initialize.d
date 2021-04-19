module sketchup_api.initialize;

extern (C):

void SUInitialize ();

void SUTerminate ();

void SUGetAPIVersion (size_t* major, size_t* minor);
