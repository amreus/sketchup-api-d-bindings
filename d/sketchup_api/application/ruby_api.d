module sketchup_api.application.ruby_api;

import sketchup_api.common;
import sketchup_api.model.defs;

extern (C):

alias RUBY_VALUE = ulong;

SUResult SUEntityToRuby (SUEntityRef entity, ulong* ruby_entity);

SUResult SUEntityFromRuby (ulong ruby_entity, SUEntityRef* entity);

SUResult SUImageRepToRuby (SUImageRepRef imagerep, ulong* ruby_imagerep);

SUResult SUImageRepFromRuby (ulong ruby_imagerep, SUImageRepRef* imagerep);
