# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := netstring
DEFS_Debug := \
	'-DDEBUG' \
	'-DMS_LOG_TRACE' \
	'-DMS_LOG_FILE_LINE'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fasm-blocks \
	-mpascal-strings \
	-O0 \
	-gdwarf-2 \
	-Wnewline-eof \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wundeclared-selector \
	-Wno-parentheses-equality \
	-Wall \
	-Wno-sign-compare

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fstrict-aliasing \
	-g \
	-fPIC

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fstrict-aliasing \
	-g \
	-fPIC

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug :=

DEFS_Release :=

# Flags passed to all source files.
CFLAGS_Release := \
	-fasm-blocks \
	-mpascal-strings \
	-Os \
	-gdwarf-2 \
	-Wnewline-eof \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wundeclared-selector \
	-Wno-parentheses-equality \
	-Wall \
	-Wno-sign-compare

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fstrict-aliasing \
	-g \
	-fPIC

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fstrict-aliasing \
	-g \
	-fPIC

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release :=

OBJS := \
	$(obj).target/$(TARGET)/deps/netstring/netstring-c/netstring.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug :=

LDFLAGS_Release := \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release :=

LIBS :=

$(builddir)/libnetstring.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/libnetstring.a: LIBS := $(LIBS)
$(builddir)/libnetstring.a: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/libnetstring.a: TOOLSET := $(TOOLSET)
$(builddir)/libnetstring.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(builddir)/libnetstring.a
# Add target alias
.PHONY: netstring
netstring: $(builddir)/libnetstring.a

# Add target alias to "all" target.
.PHONY: all
all: netstring

