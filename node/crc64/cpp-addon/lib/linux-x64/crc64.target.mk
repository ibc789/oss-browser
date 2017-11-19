# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := crc64
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=crc64' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/include/node \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/src \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/deps/uv/include \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=crc64' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/include/node \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/src \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/deps/uv/include \
	-I/home/zub/.electron-gyp/.node-gyp/iojs-1.7.9/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/crc64.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/crc64.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/crc64.node: LIBS := $(LIBS)
$(obj).target/crc64.node: TOOLSET := $(TOOLSET)
$(obj).target/crc64.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/crc64.node
# Add target alias
.PHONY: crc64
crc64: $(builddir)/crc64.node

# Copy this to the executable output path.
$(builddir)/crc64.node: TOOLSET := $(TOOLSET)
$(builddir)/crc64.node: $(obj).target/crc64.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/crc64.node
# Short alias for building this executable.
.PHONY: crc64.node
crc64.node: $(obj).target/crc64.node $(builddir)/crc64.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/crc64.node
