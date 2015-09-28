TBOX_DIR := $(DIG_DIR)/toolbox

TBOX := $(TBOX_DIR)/main.d
TBOX += $(TBOX_DIR)/wc.d
TBOX += $(TBOX_DIR)/tc.d

TBOX_OPTIONS := $(BLD_DIR)/libphysics.a $(TBOX)
TBOX_OPTIONS += -I$(SRC_DIR)/source
TBOX_OPTIONS += -unittest
TBOX_OPTIONS += -w
TBOX_OPTIONS += -od$(BLD_DIR) -of$(INSTALL_DIR)/toolbox -op $(DMD_GENDOC)/toolbox

toolbox: $(TBOX) physics
	@echo Compiling with $(DC)
	$(DC) $(TBOX_OPTIONS)


.PHONY: toolbox
