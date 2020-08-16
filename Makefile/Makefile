# Makefile template for C/C++

.PHONY: all clean

# path
ROOT = .
TARGET_PATH := $(ROOT)/bin
INCLUDE_PATH := $(ROOT)/include
OBJ_PATH := $(ROOT)/obj
SRC_PATH := $(ROOT)/src
STATIC_LIB_PATH := $(ROOT)/lib

# name
TARGET_NAME := xxx
STATIC_LIB_NAME := xxx

# tools
CC := gcc
C_STD := cxx
C_INC := -I $(INCLUDE_PATH)
C_LIB := -L $(STATIC_LIB_PATH) -l$(STATIC_LIB_NAME)
C_DEGUG := -g
C_FLAG := -Wall -std=$(C_STD)

C_FLAG += ...

AR := ar
AR_FLAG := rcsv

RM := rm
RM_FLAG := -rf

# files
TARGET := $(TARGET_PATH)/$(TARGET_NAME)
SRC := $(wildcard $(SRC_PATH)/*.c)
OBJ := $(patsubst $(SRC_PATH)/%.c, $(OBJ_PATH)/%.c, $(SRC))

# rules
all: $(TARGET)
	@echo "compile done..."

$(TARGET):
	@echo "do something..."

clean: 
	$(RM) $(RM_FLAG) $(TARGET) $(OBJ)

