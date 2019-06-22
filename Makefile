SRC = $(wildcard default-*.less)
LESSC = $(SRC:.less=.css)

.PHONY: all

all: $(LESSC)

default-%.css: default-%.less colors.less materials.less
	lessc $< $@
