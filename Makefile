# NMAKE-specific definitions \
!ifndef 0 # \
RM=del # \
CP=copy # \
CAT=type # \
DIFF=git diff --no-index -- # <- git is more likely on Windows \
LUA=lua # \
BUSTED=busted.bat --suppress-pending --exclude-tags=unix # \
!else
# Other definitions
RM=rm -f
CP=cp
CAT=cat
DIFF=diff
LUA ?=

ifeq ($(OS), Windows_NT)
	BUSTED = busted.bat --suppress-pending --exclude-tags=unix
else
	BUSTED = busted --suppress-pending
endif
# \
!endif

all: selfbuild suite

selfbuild:
	$(CP) tl.lua tl.lua.bak
	$(LUA) ./tl gen --check tl.tl && $(CP) tl.lua tl.lua.1 || ( $(CP) tl.lua tl.lua.1 && $(CP) tl.lua.bak tl.lua && exit 1 )
	$(LUA) ./tl gen --check tl.tl && $(CP) tl.lua tl.lua.2 || ( $(CP) tl.lua tl.lua.2 && $(CP) tl.lua.bak tl.lua && exit 1 )
	$(DIFF) tl.lua.1 tl.lua.2

suite:
	$(BUSTED) -v $(TESTFLAGS) spec/lang
	$(BUSTED) -v $(TESTFLAGS) spec/api
	$(BUSTED) -v $(TESTFLAGS) spec/cli

cov:
	$(RM) luacov.stats.out luacov.report.out
	$(BUSTED) -c
	luacov tl.lua
	$(CAT) luacov.report.out
