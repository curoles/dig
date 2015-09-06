I2PR_DIR := $(SRC_DIR)/intro2programming

I2PR := $(I2PR_DIR)/title.ddoc.d
I2PR += $(I2PR_DIR)/toc.ddoc.d
I2PR += $(I2PR_DIR)/foreword.ddoc.d
I2PR += $(I2PR_DIR)/intro.ddoc.d
I2PR += $(I2PR_DIR)/ch1/ch1.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/computer.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/compr.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/comments.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/literals.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/names.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/operators.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/keywords.ddoc.d
I2PR +=   $(I2PR_DIR)/ch1/hello.ddoc.d
I2PR += $(I2PR_DIR)/ch2/ch2.ddoc.d
I2PR += $(I2PR_DIR)/ch3/ch3.ddoc.d
I2PR += $(I2PR_DIR)/ch4/ch4.ddoc.d
I2PR += $(I2PR_DIR)/ch5/ch5.ddoc.d
I2PR += $(I2PR_DIR)/ch6/ch6.ddoc.d
I2PR += $(I2PR_DIR)/ch7/ch7.ddoc.d
I2PR += $(I2PR_DIR)/ch8/ch8.ddoc.d
I2PR += $(I2PR_DIR)/ch9/ch9.ddoc.d
I2PR += $(I2PR_DIR)/ch10/ch10.ddoc.d
I2PR += $(I2PR_DIR)/ch11/ch11.ddoc.d

I2PR_DOC := $(BLD_DIR)/doc/intro2prog

intro2prog:
	mkdir -p $(I2PR_DOC)
	cat $(I2PR) > $(I2PR_DOC)/all.ddoc.d
	$(DC) -D -Dd$(I2PR_DOC) $(I2PR_DIR)/macros.ddoc $(I2PR_DOC)/all.ddoc.d


.PHONY: intro2prog
