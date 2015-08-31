DC ?= /home/igor/tool/dmd/dmd.2.068.0/linux/bin32/dmd

SRC := source/dig/traits/abstract_entity.d
SRC += source/dig/traits/package.d
SRC += source/dig/idiom/block.d
SRC += source/main.d

BLD_DIR := ../build

#-v -deps

all: $(SRC)
	echo Compiling with $(DC)
	$(DC) -unittest $(SRC) -od$(BLD_DIR) -of$(BLD_DIR)/test

.PHONY: all
