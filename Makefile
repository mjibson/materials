SRC = $(wildcard *dark.less *light.less)
LESSC = $(SRC:.less=.css)

.PHONY: all

all: $(LESSC)

%.css: %.less colors.less materials.less
	lessc $< $@
