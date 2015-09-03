# To be included into BuildMakefile

DC ?= /home/igor/tool/dmd/dmd.2.068.0/linux/bin32/dmd

DIG_DIR := $(SRC_DIR)/source/dig

SRC := $(DIG_DIR)/traits/abstract_entity.d
SRC += $(DIG_DIR)/traits/identity.d
SRC += $(DIG_DIR)/traits/package.d
SRC += $(DIG_DIR)/idiom/block.d
SRC += $(DIG_DIR)/idiom/times.d
SRC += $(DIG_DIR)/literal/daytime.d
SRC += $(DIG_DIR)/io/file.d
SRC += $(SRC_DIR)/source/main.d

TBOX := $(DIG_DIR)/toolbox/main.d
TBOX += $(DIG_DIR)/toolbox/wc.d


BLD_DIR := ./bld

DMD_GENDOC := -D -Dd$(BLD_DIR)/doc

#-v -deps

all: $(SRC) $(TBOX)
	@echo Compiling with $(DC)
	$(DC) -unittest $(SRC)  -od$(BLD_DIR) -of$(BLD_DIR)/test    -op $(DMD_GENDOC)/dig
	$(DC) -unittest $(TBOX) -od$(BLD_DIR) -of$(BLD_DIR)/toolbox -op $(DMD_GENDOC)/toolbox

I2PR_DIR := $(SRC_DIR)/intro2programming
I2PR := $(I2PR_DIR)/title.ddoc.d
I2PR += $(I2PR_DIR)/foreword.ddoc.d
I2PR += $(I2PR_DIR)/intro.ddoc.d
I2PR += $(I2PR_DIR)/ch1.ddoc.d
I2PR += $(I2PR_DIR)/ch2.ddoc.d

I2PR_DOC := $(BLD_DIR)/doc/intro2prog

intro2prog:
	mkdir -p $(I2PR_DOC)
	cat $(I2PR) > $(I2PR_DOC)/all.ddoc.d
	$(DC) -D -Dd$(I2PR_DOC) $(I2PR_DIR)/macros.ddoc $(I2PR_DOC)/all.ddoc.d


.PHONY: all intro2prog
