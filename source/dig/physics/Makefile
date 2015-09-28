PHYS_DIR := $(DIG_DIR)/physics

PHYS_SRC := $(PHYS_DIR)/realnum.d
PHYS_SRC += $(PHYS_DIR)/quantity.d
PHYS_SRC += $(PHYS_DIR)/temperature.d

physics:
	$(DC) -lib -unittest $(PHYS_SRC) -od$(BLD_DIR) -oflibphysics -op $(DMD_GENDOC)/physics -w



.PHONY: physics
