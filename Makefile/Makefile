# Makefile template for C/C++

.PHONY: all clean

# set path
ROOT = .
TARGET_PATH := $(ROOT)/bin
INCLUDE_PATH := $(ROOT)/include
OBJ_PATH := $(ROOT)/obj
SRC_PATH := $(ROOT)/src
LIB_PATH := $(ROOT)/lib

# set name
TARGET_NAME := xxx
LIB_NAME := xxx

# set cc
CC := gxx
STD := -std=cxx
INC := -I $(INCLUDE_PATH)
LIB := -L $(LIB_PATH) -l$(LIB_NAME)
DEGUG := -g
FLAGS := -Wall

# add options
FLAGS += $(STD)
FLAGS += ...

# other tools
AR := ar
AR_FLAG := rcsv

RM := rm
RM_FLAG := -rf

# files
TARGET := $(TARGET_PATH)/$(TARGET_NAME)
SRC := $(wildcard $(SRC_PATH)/*.c)
OBJ := $(patsubst $(SRC_PATH)/%.c, $(OBJ_PATH)/%.o, $(SRC))

# rules
all: $(TARGET)
	@echo "compile done..."

$(TARGET): $(OBJ)
	$(CC) $(FLAGS) $^ -o $@

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c
	$(CC) -c $< -o $@ 

clean: 
	$(RM) $(RM_FLAG) $(TARGET) $(OBJ)

