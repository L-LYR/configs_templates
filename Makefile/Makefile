# Makefile template

.PHONY: all clean

# set path
ROOT = .
INCLUDE_PATH := $(ROOT)/include

# set name
EXE_NAME :=
LIB_NAME :=

# make directories
MKDIR := mkdir
DIR_OBJ := $(ROOT)/obj
DIR_EXE := $(ROOT)/bin
DIR_DEP := $(ROOT)/dep
DIR_LIB := $(ROOT)/lib
DIRS := $(DIR_OBJ) $(DIR_LIB) $(DIR_DEP) $(DIR_EXE)

# set cc
CC := gcc
STD := -std=c11
INC := -I $(INCLUDE_PATH)
DEGUG := -g
C_FLAGS := -Wall

# add options
C_FLAGS += $(STD)

# other tools
AR := ar
AR_FLAG := rcsv

RM := rm
RM_FLAG := -rf
RM_TARGET := $(DIRS)

# files
SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)
OBJS := $(addprefix $(DIR_OBJ)/, $(OBJS))
DEPS := $(SRCS:.c=.dep)
DEPS := $(addprefix $(DIR_DEP)/, $(DEPS))

ifneq ($(EXE), "")
EXE := $(addprefix $(DIR_EXE)/, $(EXE_NAME))
RM_TARGET += $(EXE)
endif

ifneq ($(LIB), "")
LIB := $(addprefix $(DIR_LIB)/, $(LIB_NAME))
RM_TARGET += $(LIB)
endif

# rules
ifneq ($(EXE), "")
all: $(EXE)
endif

ifneq ($(LIB), "")
all: $(LIB)
endif

ifneq ($(MAKECMDGOALS), clean)
-include $(DEPS)
endif

$(DIRS):
	$(MKDIR) $@

$(EXE): $(DIR_EXE) $(OBJS)
	$(CC) $(C_FLAGS) -o $@ $(filter %.o, $^)

$(LIB): $(DIR_LIB) $(OBJS)
	$(AR) $(AR_FLAG) $@ $(filter %.o, $^)

$(DIR_OBJ)/%.o: $(DIR_OBJ) %.c
	$(CC) $(C_FLAGS) -o $@ -c $(filter %.c, $^)

$(DIR_DEP)/%.dep: $(DIR_DEP) %.c
	@echo "Making $@..."
	@set -e ;\
	$(CC) -E -MM $(filter %.c, $^) > $@.tmp ;\
	sed 's,\(.*\)\.o[ :]*,obj/\1.o : ,g' < $@.tmp > $@ ;\
	
clean:
	$(RM) $(RM_FLAG) $(RM_TARGET)
