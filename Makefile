LUA ?=
STABLE_TL ?= $(LUA) ./tl
NEW_TL ?= $(LUA) ./tl
TLGENFLAGS = --check --gen-target=5.1
BUSTED = busted --suppress-pending

PRECOMPILED = teal/precompiled/default_env.lua
SOURCES = teal/debug.tl teal/attributes.tl teal/errors.tl teal/lexer.tl \
	teal/util.tl teal/types.tl teal/facts.tl teal/parser.tl teal/traversal.tl \
	teal/variables.tl teal/type_reporter.tl \
	teal/macroexps.tl teal/metamethods.tl \
	teal/type_errors.tl teal/environment.tl \
	teal/check/context.tl teal/check/visitors.tl teal/check/check.tl \
	teal/check/relations.tl teal/check/special_functions.tl \
	teal/check/type_checker.tl teal/check/node_checker.tl \
	teal/input.tl \
	teal/check/require_file.tl \
	teal/gen/targets.tl teal/gen/lua_generator.tl teal/gen/lua_compat.tl \
	teal/package_loader.tl teal/loader.tl \
	teal/api/v2.tl teal/api/v1.tl \
	teal/init.tl \
	tl.tl \
	tlcli/configuration.tl \
	tlcli/report.tl \
	tlcli/driver.tl \
	tlcli/perf.tl \
	tlcli/main.tl \
	tlcli/commands/run.tl \
	tlcli/commands/warnings.tl \
	tlcli/commands/types.tl \
	tlcli/commands/check.tl \
	tlcli/commands/gen.tl \
	tlcli/common.tl

all: selfbuild suite

########################################
# Multi-stage bootstrap process:
########################################

precompiler.lua: precompiler.tl
	$(STABLE_TL) gen $< -o $@ || { rm $@; exit 1; }

teal/precompiled/default_env.lua: precompiler.lua teal/default/prelude.d.tl teal/default/stdlib.d.tl tl.tl
	lua precompiler.lua > teal/precompiled/default_env.lua || { rm $@; exit 1; }


#:######################################
# GENERATED SECTION START
# extras/update_make_deps.lua
########################################

_temp/precompiler.lua.1: precompiler.tl teal/attributes.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp;echo precompiler.tl >>_temp/list1;echo _temp/precompiler.lua.1 >>_temp/list1.1;touch _temp/precompiler.lua.1
_temp/precompiler.lua.2: precompiler.tl teal/attributes.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp;echo precompiler.tl >>_temp/list2;touch _temp/precompiler.lua.2

_temp/tl.lua.1: tl.tl teal/api/v2.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp;echo tl.tl >>_temp/list1;echo _temp/tl.lua.1 >>_temp/list1.1;touch _temp/tl.lua.1
_temp/tl.lua.2: tl.tl teal/api/v2.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp;echo tl.tl >>_temp/list2;touch _temp/tl.lua.2

_temp/teal/api/v1.lua.1: teal/api/v1.tl teal/api/v2.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/api;echo teal/api/v1.tl >>_temp/list1;echo _temp/teal/api/v1.lua.1 >>_temp/list1.1;touch _temp/teal/api/v1.lua.1
_temp/teal/api/v1.lua.2: teal/api/v1.tl teal/api/v2.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/api;echo teal/api/v1.tl >>_temp/list2;touch _temp/teal/api/v1.lua.2

_temp/teal/api/v2.lua.1: teal/api/v2.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/api;echo teal/api/v2.tl >>_temp/list1;echo _temp/teal/api/v2.lua.1 >>_temp/list1.1;touch _temp/teal/api/v2.lua.1
_temp/teal/api/v2.lua.2: teal/api/v2.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/api;echo teal/api/v2.tl >>_temp/list2;touch _temp/teal/api/v2.lua.2

_temp/teal/attributes.lua.1: teal/attributes.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/attributes.tl >>_temp/list1;echo _temp/teal/attributes.lua.1 >>_temp/list1.1;touch _temp/teal/attributes.lua.1
_temp/teal/attributes.lua.2: teal/attributes.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/attributes.tl >>_temp/list2;touch _temp/teal/attributes.lua.2

_temp/teal/check/check.lua.1: teal/check/check.tl teal/attributes.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/check.tl >>_temp/list1;echo _temp/teal/check/check.lua.1 >>_temp/list1.1;touch _temp/teal/check/check.lua.1
_temp/teal/check/check.lua.2: teal/check/check.tl teal/attributes.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/check.tl >>_temp/list2;touch _temp/teal/check/check.lua.2

_temp/teal/check/context.lua.1: teal/check/context.tl teal/attributes.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/context.tl >>_temp/list1;echo _temp/teal/check/context.lua.1 >>_temp/list1.1;touch _temp/teal/check/context.lua.1
_temp/teal/check/context.lua.2: teal/check/context.tl teal/attributes.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/context.tl >>_temp/list2;touch _temp/teal/check/context.lua.2

_temp/teal/check/node_checker.lua.1: teal/check/node_checker.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/node_checker.tl >>_temp/list1;echo _temp/teal/check/node_checker.lua.1 >>_temp/list1.1;touch _temp/teal/check/node_checker.lua.1
_temp/teal/check/node_checker.lua.2: teal/check/node_checker.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/node_checker.tl >>_temp/list2;touch _temp/teal/check/node_checker.lua.2

_temp/teal/check/relations.lua.1: teal/check/relations.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/relations.tl >>_temp/list1;echo _temp/teal/check/relations.lua.1 >>_temp/list1.1;touch _temp/teal/check/relations.lua.1
_temp/teal/check/relations.lua.2: teal/check/relations.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/relations.tl >>_temp/list2;touch _temp/teal/check/relations.lua.2

_temp/teal/check/require_file.lua.1: teal/check/require_file.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/require_file.tl >>_temp/list1;echo _temp/teal/check/require_file.lua.1 >>_temp/list1.1;touch _temp/teal/check/require_file.lua.1
_temp/teal/check/require_file.lua.2: teal/check/require_file.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/require_file.tl >>_temp/list2;touch _temp/teal/check/require_file.lua.2

_temp/teal/check/special_functions.lua.1: teal/check/special_functions.tl teal/attributes.tl teal/check/node_checker.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/special_functions.tl >>_temp/list1;echo _temp/teal/check/special_functions.lua.1 >>_temp/list1.1;touch _temp/teal/check/special_functions.lua.1
_temp/teal/check/special_functions.lua.2: teal/check/special_functions.tl teal/attributes.tl teal/check/node_checker.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/special_functions.tl >>_temp/list2;touch _temp/teal/check/special_functions.lua.2

_temp/teal/check/type_checker.lua.1: teal/check/type_checker.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/type_checker.tl >>_temp/list1;echo _temp/teal/check/type_checker.lua.1 >>_temp/list1.1;touch _temp/teal/check/type_checker.lua.1
_temp/teal/check/type_checker.lua.2: teal/check/type_checker.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/type_checker.tl >>_temp/list2;touch _temp/teal/check/type_checker.lua.2

_temp/teal/check/visitors.lua.1: teal/check/visitors.tl teal/attributes.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/visitors.tl >>_temp/list1;echo _temp/teal/check/visitors.lua.1 >>_temp/list1.1;touch _temp/teal/check/visitors.lua.1
_temp/teal/check/visitors.lua.2: teal/check/visitors.tl teal/attributes.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/check;echo teal/check/visitors.tl >>_temp/list2;touch _temp/teal/check/visitors.lua.2

_temp/teal/debug.lua.1: teal/debug.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/debug.tl >>_temp/list1;echo _temp/teal/debug.lua.1 >>_temp/list1.1;touch _temp/teal/debug.lua.1
_temp/teal/debug.lua.2: teal/debug.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/debug.tl >>_temp/list2;touch _temp/teal/debug.lua.2

_temp/teal/environment.lua.1: teal/environment.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/environment.tl >>_temp/list1;echo _temp/teal/environment.lua.1 >>_temp/list1.1;touch _temp/teal/environment.lua.1
_temp/teal/environment.lua.2: teal/environment.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/environment.tl >>_temp/list2;touch _temp/teal/environment.lua.2

_temp/teal/errors.lua.1: teal/errors.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/errors.tl >>_temp/list1;echo _temp/teal/errors.lua.1 >>_temp/list1.1;touch _temp/teal/errors.lua.1
_temp/teal/errors.lua.2: teal/errors.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/errors.tl >>_temp/list2;touch _temp/teal/errors.lua.2

_temp/teal/facts.lua.1: teal/facts.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/facts.tl >>_temp/list1;echo _temp/teal/facts.lua.1 >>_temp/list1.1;touch _temp/teal/facts.lua.1
_temp/teal/facts.lua.2: teal/facts.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/facts.tl >>_temp/list2;touch _temp/teal/facts.lua.2

_temp/teal/gen/lua_compat.lua.1: teal/gen/lua_compat.tl teal/attributes.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/gen;echo teal/gen/lua_compat.tl >>_temp/list1;echo _temp/teal/gen/lua_compat.lua.1 >>_temp/list1.1;touch _temp/teal/gen/lua_compat.lua.1
_temp/teal/gen/lua_compat.lua.2: teal/gen/lua_compat.tl teal/attributes.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/gen;echo teal/gen/lua_compat.tl >>_temp/list2;touch _temp/teal/gen/lua_compat.lua.2

_temp/teal/gen/lua_generator.lua.1: teal/gen/lua_generator.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/traversal.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/gen;echo teal/gen/lua_generator.tl >>_temp/list1;echo _temp/teal/gen/lua_generator.lua.1 >>_temp/list1.1;touch _temp/teal/gen/lua_generator.lua.1
_temp/teal/gen/lua_generator.lua.2: teal/gen/lua_generator.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/gen/targets.tl teal/lexer.tl teal/parser.tl teal/traversal.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/gen;echo teal/gen/lua_generator.tl >>_temp/list2;touch _temp/teal/gen/lua_generator.lua.2

_temp/teal/gen/targets.lua.1: teal/gen/targets.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/gen;echo teal/gen/targets.tl >>_temp/list1;echo _temp/teal/gen/targets.lua.1 >>_temp/list1.1;touch _temp/teal/gen/targets.lua.1
_temp/teal/gen/targets.lua.2: teal/gen/targets.tl $(PRECOMPILED)
	@mkdir -p _temp/teal/gen;echo teal/gen/targets.tl >>_temp/list2;touch _temp/teal/gen/targets.lua.2

_temp/teal/init.lua.1: teal/init.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/init.tl >>_temp/list1;echo _temp/teal/init.lua.1 >>_temp/list1.1;touch _temp/teal/init.lua.1
_temp/teal/init.lua.2: teal/init.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/init.tl >>_temp/list2;touch _temp/teal/init.lua.2

_temp/teal/input.lua.1: teal/input.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/input.tl >>_temp/list1;echo _temp/teal/input.lua.1 >>_temp/list1.1;touch _temp/teal/input.lua.1
_temp/teal/input.lua.2: teal/input.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/targets.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/input.tl >>_temp/list2;touch _temp/teal/input.lua.2

_temp/teal/lexer.lua.1: teal/lexer.tl teal/errors.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/lexer.tl >>_temp/list1;echo _temp/teal/lexer.lua.1 >>_temp/list1.1;touch _temp/teal/lexer.lua.1
_temp/teal/lexer.lua.2: teal/lexer.tl teal/errors.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/lexer.tl >>_temp/list2;touch _temp/teal/lexer.lua.2

_temp/teal/loader.lua.1: teal/loader.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/loader.tl >>_temp/list1;echo _temp/teal/loader.lua.1 >>_temp/list1.1;touch _temp/teal/loader.lua.1
_temp/teal/loader.lua.2: teal/loader.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/loader.tl >>_temp/list2;touch _temp/teal/loader.lua.2

_temp/teal/macroexps.lua.1: teal/macroexps.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/traversal.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/macroexps.tl >>_temp/list1;echo _temp/teal/macroexps.lua.1 >>_temp/list1.1;touch _temp/teal/macroexps.lua.1
_temp/teal/macroexps.lua.2: teal/macroexps.tl teal/attributes.tl teal/check/type_checker.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/traversal.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/macroexps.tl >>_temp/list2;touch _temp/teal/macroexps.lua.2

_temp/teal/metamethods.lua.1: teal/metamethods.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/metamethods.tl >>_temp/list1;echo _temp/teal/metamethods.lua.1 >>_temp/list1.1;touch _temp/teal/metamethods.lua.1
_temp/teal/metamethods.lua.2: teal/metamethods.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/metamethods.tl >>_temp/list2;touch _temp/teal/metamethods.lua.2

_temp/teal/package_loader.lua.1: teal/package_loader.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/package_loader.tl >>_temp/list1;echo _temp/teal/package_loader.lua.1 >>_temp/list1.1;touch _temp/teal/package_loader.lua.1
_temp/teal/package_loader.lua.2: teal/package_loader.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/input.tl teal/lexer.tl teal/macroexps.tl teal/metamethods.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/package_loader.tl >>_temp/list2;touch _temp/teal/package_loader.lua.2

_temp/teal/parser.lua.1: teal/parser.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/parser.tl >>_temp/list1;echo _temp/teal/parser.lua.1 >>_temp/list1.1;touch _temp/teal/parser.lua.1
_temp/teal/parser.lua.2: teal/parser.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/parser.tl >>_temp/list2;touch _temp/teal/parser.lua.2

_temp/teal/traversal.lua.1: teal/traversal.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/traversal.tl >>_temp/list1;echo _temp/teal/traversal.lua.1 >>_temp/list1.1;touch _temp/teal/traversal.lua.1
_temp/teal/traversal.lua.2: teal/traversal.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/traversal.tl >>_temp/list2;touch _temp/teal/traversal.lua.2

_temp/teal/types.lua.1: teal/types.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/types.tl >>_temp/list1;echo _temp/teal/types.lua.1 >>_temp/list1.1;touch _temp/teal/types.lua.1
_temp/teal/types.lua.2: teal/types.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/types.tl >>_temp/list2;touch _temp/teal/types.lua.2

_temp/teal/type_errors.lua.1: teal/type_errors.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/type_errors.tl >>_temp/list1;echo _temp/teal/type_errors.lua.1 >>_temp/list1.1;touch _temp/teal/type_errors.lua.1
_temp/teal/type_errors.lua.2: teal/type_errors.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/type_errors.tl >>_temp/list2;touch _temp/teal/type_errors.lua.2

_temp/teal/type_reporter.lua.1: teal/type_reporter.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/type_reporter.tl >>_temp/list1;echo _temp/teal/type_reporter.lua.1 >>_temp/list1.1;touch _temp/teal/type_reporter.lua.1
_temp/teal/type_reporter.lua.2: teal/type_reporter.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/type_reporter.tl >>_temp/list2;touch _temp/teal/type_reporter.lua.2

_temp/teal/util.lua.1: teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/util.tl >>_temp/list1;echo _temp/teal/util.lua.1 >>_temp/list1.1;touch _temp/teal/util.lua.1
_temp/teal/util.lua.2: teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/util.tl >>_temp/list2;touch _temp/teal/util.lua.2

_temp/teal/variables.lua.1: teal/variables.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/variables.tl >>_temp/list1;echo _temp/teal/variables.lua.1 >>_temp/list1.1;touch _temp/teal/variables.lua.1
_temp/teal/variables.lua.2: teal/variables.tl teal/attributes.tl teal/debug.tl teal/errors.tl teal/lexer.tl teal/parser.tl teal/types.tl teal/util.tl $(PRECOMPILED)
	@mkdir -p _temp/teal;echo teal/variables.tl >>_temp/list2;touch _temp/teal/variables.lua.2

_temp/tlcli/commands/check.lua.1: tlcli/commands/check.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/check.tl >>_temp/list1;echo _temp/tlcli/commands/check.lua.1 >>_temp/list1.1;touch _temp/tlcli/commands/check.lua.1
_temp/tlcli/commands/check.lua.2: tlcli/commands/check.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/check.tl >>_temp/list2;touch _temp/tlcli/commands/check.lua.2

_temp/tlcli/commands/gen.lua.1: tlcli/commands/gen.tl lfs.d.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/gen.tl >>_temp/list1;echo _temp/tlcli/commands/gen.lua.1 >>_temp/list1.1;touch _temp/tlcli/commands/gen.lua.1
_temp/tlcli/commands/gen.lua.2: tlcli/commands/gen.tl lfs.d.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/gen.tl >>_temp/list2;touch _temp/tlcli/commands/gen.lua.2

_temp/tlcli/commands/run.lua.1: tlcli/commands/run.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/run.tl >>_temp/list1;echo _temp/tlcli/commands/run.lua.1 >>_temp/list1.1;touch _temp/tlcli/commands/run.lua.1
_temp/tlcli/commands/run.lua.2: tlcli/commands/run.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/run.tl >>_temp/list2;touch _temp/tlcli/commands/run.lua.2

_temp/tlcli/commands/types.lua.1: tlcli/commands/types.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/types.tl >>_temp/list1;echo _temp/tlcli/commands/types.lua.1 >>_temp/list1.1;touch _temp/tlcli/commands/types.lua.1
_temp/tlcli/commands/types.lua.2: tlcli/commands/types.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/types.tl >>_temp/list2;touch _temp/tlcli/commands/types.lua.2

_temp/tlcli/commands/warnings.lua.1: tlcli/commands/warnings.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/warnings.tl >>_temp/list1;echo _temp/tlcli/commands/warnings.lua.1 >>_temp/list1.1;touch _temp/tlcli/commands/warnings.lua.1
_temp/tlcli/commands/warnings.lua.2: tlcli/commands/warnings.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli/commands;echo tlcli/commands/warnings.tl >>_temp/list2;touch _temp/tlcli/commands/warnings.lua.2

_temp/tlcli/common.lua.1: tlcli/common.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/common.tl >>_temp/list1;echo _temp/tlcli/common.lua.1 >>_temp/list1.1;touch _temp/tlcli/common.lua.1
_temp/tlcli/common.lua.2: tlcli/common.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/common.tl >>_temp/list2;touch _temp/tlcli/common.lua.2

_temp/tlcli/configuration.lua.1: tlcli/configuration.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/configuration.tl >>_temp/list1;echo _temp/tlcli/configuration.lua.1 >>_temp/list1.1;touch _temp/tlcli/configuration.lua.1
_temp/tlcli/configuration.lua.2: tlcli/configuration.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/common.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/configuration.tl >>_temp/list2;touch _temp/tlcli/configuration.lua.2

_temp/tlcli/driver.lua.1: tlcli/driver.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/common.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/driver.tl >>_temp/list1;echo _temp/tlcli/driver.lua.1 >>_temp/list1.1;touch _temp/tlcli/driver.lua.1
_temp/tlcli/driver.lua.2: tlcli/driver.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/common.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/driver.tl >>_temp/list2;touch _temp/tlcli/driver.lua.2

_temp/tlcli/main.lua.1: tlcli/main.tl argparse.d.tl lfs.d.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/commands/check.tl tlcli/commands/gen.tl tlcli/commands/run.tl tlcli/commands/types.tl tlcli/commands/warnings.tl tlcli/common.tl tlcli/configuration.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/main.tl >>_temp/list1;echo _temp/tlcli/main.lua.1 >>_temp/list1.1;touch _temp/tlcli/main.lua.1
_temp/tlcli/main.lua.2: tlcli/main.tl argparse.d.tl lfs.d.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/args.d.tl tlcli/commands/check.tl tlcli/commands/gen.tl tlcli/commands/run.tl tlcli/commands/types.tl tlcli/commands/warnings.tl tlcli/common.tl tlcli/configuration.tl tlcli/driver.tl tlcli/perf.tl tlcli/report.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/main.tl >>_temp/list2;touch _temp/tlcli/main.lua.2

_temp/tlcli/perf.lua.1: tlcli/perf.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/perf.tl >>_temp/list1;echo _temp/tlcli/perf.lua.1 >>_temp/list1.1;touch _temp/tlcli/perf.lua.1
_temp/tlcli/perf.lua.2: tlcli/perf.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/perf.tl >>_temp/list2;touch _temp/tlcli/perf.lua.2

_temp/tlcli/report.lua.1: tlcli/report.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/common.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/report.tl >>_temp/list1;echo _temp/tlcli/report.lua.1 >>_temp/list1.1;touch _temp/tlcli/report.lua.1
_temp/tlcli/report.lua.2: tlcli/report.tl teal/attributes.tl teal/check/check.tl teal/check/context.tl teal/check/node_checker.tl teal/check/relations.tl teal/check/require_file.tl teal/check/special_functions.tl teal/check/type_checker.tl teal/check/visitors.tl teal/debug.tl teal/environment.tl teal/errors.tl teal/facts.tl teal/gen/lua_compat.tl teal/gen/lua_generator.tl teal/gen/targets.tl teal/init.tl teal/input.tl teal/lexer.tl teal/loader.tl teal/macroexps.tl teal/metamethods.tl teal/package_loader.tl teal/parser.tl teal/precompiled/default_env.d.tl teal/traversal.tl teal/type_errors.tl teal/type_reporter.tl teal/types.tl teal/util.tl teal/variables.tl tlcli/common.tl tlcli/tlconfig.d.tl $(PRECOMPILED)
	@mkdir -p _temp/tlcli;echo tlcli/report.tl >>_temp/list2;touch _temp/tlcli/report.lua.2

########################################
# GENERATED SECTION END
######################################:#


build1: $(SOURCES:%.tl=_temp/%.lua.1) $(PRECOMPILED)
	if [ -e _temp/list1 ]; \
		then $(STABLE_TL) gen $(TLGENFLAGS) --root . --custom-ext .lua.1 --output-dir _temp `cat _temp/list1` || { rm `cat _temp/list1.1`; exit 1; };\
	fi

replace1:
	extras/make.sh move_1_to_lua
	@rm -f _temp/list2

build2: $(SOURCES:%.tl=_temp/%.lua.2)
	if [ -e _temp/list2 ]; \
		then $(NEW_TL) gen $(TLGENFLAGS) --root . --custom-ext .lua.2 --output-dir _temp `cat _temp/list2` || extras/make.sh revert; \
	fi

newlist:
	@mkdir -p _temp/
	@rm -f _temp/list1
	@rm -f _temp/list1.1
	@rm -f _temp/list1.2

selfbuild: newlist build1 replace1 build2 combine
	extras/make.sh diff_1_and_2 || extras/make.sh revert

########################################
# Test suite:
########################################

suite:
	${BUSTED} -v $(TESTFLAGS) spec/lang
	${BUSTED} -v $(TESTFLAGS) spec/api
	${BUSTED} -v $(TESTFLAGS) spec/cli

########################################
# Utility targets:
########################################

bin:
	$(MAKE) STABLE_TL=_binary/build/tl

binary:
	extras/binary.sh --clean

combine:
	$(STABLE_TL) run extras/combine.tl

revert:
	git checkout $(PRECOMPILED) $(SOURCES:%.tl=%.lua)

cov:
	rm -f luacov.stats.out luacov.report.out
	${BUSTED} -c
	luacov tl.lua
	cat luacov.report.out

cleantemp:
	rm -rf _temp

clean: cleantemp
# force a recompile of the environment
	rm precompiler.lua

########################################
# Makefile administrivia
########################################

.PHONY: all build1 replace1 build2 selfbuild \
	suite bin binary cov revert cov cleantemp clean

