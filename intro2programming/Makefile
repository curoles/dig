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
I2PR +=   $(I2PR_DIR)/ch2/builtin.ddoc.d
I2PR +=   $(I2PR_DIR)/ch2/float.ddoc.d
I2PR +=   $(I2PR_DIR)/ch2/array.ddoc.d
I2PR +=   $(I2PR_DIR)/ch2/custom.ddoc.d
I2PR +=   $(I2PR_DIR)/ch2/deduce.ddoc.d
I2PR +=   $(I2PR_DIR)/ch2/const.ddoc.d
I2PR += $(I2PR_DIR)/ch3/ch3.ddoc.d
I2PR +=   $(I2PR_DIR)/ch3/ifelse.ddoc.d
I2PR +=   $(I2PR_DIR)/ch3/switch.ddoc.d
I2PR +=   $(I2PR_DIR)/ch3/while.ddoc.d
I2PR +=   $(I2PR_DIR)/ch3/for.ddoc.d
I2PR +=   $(I2PR_DIR)/ch3/flow.ddoc.d
I2PR += $(I2PR_DIR)/ch4/ch4.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/define.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/overload.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/templatefun.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/operator.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/scope.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/ref.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/contracts.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/funobj.ddoc.d
I2PR +=   $(I2PR_DIR)/ch4/funasarg.ddoc.d
I2PR += $(I2PR_DIR)/ch5/ch5.ddoc.d
I2PR +=   $(I2PR_DIR)/ch5/array.ddoc.d
I2PR +=   $(I2PR_DIR)/ch5/map.ddoc.d
I2PR += $(I2PR_DIR)/ch6/ch6.ddoc.d
I2PR += $(I2PR_DIR)/ch7/ch7.ddoc.d
I2PR += $(I2PR_DIR)/ch8/ch8.ddoc.d
I2PR +=   $(I2PR_DIR)/ch8/sqrt.ddoc.d
I2PR += $(I2PR_DIR)/ch9/ch9.ddoc.d
I2PR += $(I2PR_DIR)/ch10/ch10.ddoc.d
I2PR += $(I2PR_DIR)/ch11/ch11.ddoc.d

I2PR_DOC := $(BLD_DIR)/doc/intro2prog

intro2prog:
	mkdir -p $(I2PR_DOC)
	cat $(I2PR) > $(I2PR_DOC)/all.ddoc.d
	$(DC) -D -Dd$(I2PR_DOC) $(I2PR_DIR)/macros.ddoc $(I2PR_DOC)/all.ddoc.d


.PHONY: intro2prog
