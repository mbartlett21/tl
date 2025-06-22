BUSTED=busted.bat --suppress-pending --exclude-tags=unix
LUA=lua

all: selfbuild suite

selfbuild:
	copy tl.lua tl.lua.bak
	$(LUA) ./tl gen --check tl.tl && copy tl.lua tl.lua.1 || ( copy tl.lua tl.lua.1 && copy tl.lua.bak tl.lua && exit 1 )
	$(LUA) ./tl gen --check tl.tl && copy tl.lua tl.lua.2 || ( copy tl.lua tl.lua.2 && copy tl.lua.bak tl.lua && exit 1 )
	git diff --no-index -- tl.lua.1 tl.lua.2

suite:
	chcp 65001
	$(BUSTED) -v $(TESTFLAGS) spec/lang
	$(BUSTED) -v $(TESTFLAGS) spec/api
	$(BUSTED) -v $(TESTFLAGS) spec/cli

cov:
	del luacov.stats.out luacov.report.out
	$(BUSTED) -c
	luacov tl.lua
	type luacov.report.out
