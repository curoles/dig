# To be included into BuildMakefile

DC ?= /home/igor/tool/dmd/dmd.2.068.0/linux/bin32/dmd

DIG_DIR := $(SRC_DIR)/source/dig

SRC := $(DIG_DIR)/traits/abstract_entity.d
SRC += $(DIG_DIR)/traits/identity.d
SRC += $(DIG_DIR)/traits/package.d
SRC += $(DIG_DIR)/idiom/block.d
SRC += $(DIG_DIR)/idiom/times.d
SRC += $(DIG_DIR)/literal/daytime.d
SRC += $(DIG_DIR)/literal/ansiescape.d
SRC += $(DIG_DIR)/io/file.d
SRC += $(SRC_DIR)/source/main.d

TBOX := $(DIG_DIR)/toolbox/main.d
TBOX += $(DIG_DIR)/toolbox/wc.d


BLD_DIR := ./bld
INSTALL_DIR := $(BLD_DIR)/install

DMD_GENDOC := -D -Dd$(BLD_DIR)/doc

#-v -deps

all: $(SRC) $(TBOX)
	@echo Compiling with $(DC)
	$(DC) -unittest $(SRC)  -od$(BLD_DIR) -of$(BLD_DIR)/test    -op $(DMD_GENDOC)/dig
	$(DC) -unittest $(TBOX) -od$(BLD_DIR) -of$(BLD_DIR)/toolbox -op $(DMD_GENDOC)/toolbox

clean:
	rm -rf $(BLD_DIR)/*

include $(SRC_DIR)/intro2programming/Makefile

include $(DIG_DIR)/physics/Makefile
include $(DIG_DIR)/toolbox/Makefile


.PHONY: all clean
