#
# Copyright 2015, Wink Saville
#
# This software may be distributed and modified according to the terms of
# the BSD 2-Clause license. Note that NO WARRANTY is provided.
# See "LICENSE_BSD2.txt" for details.

# Targets
TARGETS := libsel4benchmark.a

# Source files required to build the target
CFILES :=

ASMFILES :=

# Libraries we need
LIBS := sel4

# Header files defined here that need to be staged
HDRFILES := $(wildcard $(SOURCE_DIR)/include/*)

# extra flags
CFLAGS += -Werror -ggdb -g3
ASFLAGS += -Werror -ggdb -g3
ifdef CONFIG_X86_64
CFLAGS += -mno-sse
endif

include $(SEL4_COMMON)/common.mk
