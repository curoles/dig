# To be included into BuildMakefile

DC ?= /home/igor/tool/dmd/dmd.2.068.0/linux/bin32/dmd

DIG_DIR := $(SRC_DIR)/source/dig

SRC := $(DIG_DIR)/traits/abstract_entity.d
SRC += $(DIG_DIR)/traits/identity.d
SRC += $(DIG_DIR)/traits/package.d
SRC += $(DIG_DIR)/idiom/block.d
SRC += $(DIG_DIR)/idiom/times.d
SRC += $(DIG_DIR)/io/file.d
SRC += $(SRC_DIR)/source/main.d

BLD_DIR := ./

#-v -deps

all: $(SRC)
	@echo Compiling with $(DC)
	$(DC) -unittest $(SRC) -od$(BLD_DIR) -of$(BLD_DIR)/test

.PHONY: all
