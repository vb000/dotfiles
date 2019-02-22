# This must be the first line
DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
$(warning $(DIR))

DOTS := .bashrc .vimrc .gvimrc .gitconfig
$(warning $(DOTS))

copy:
	mkdir -p ~/dotsbkp
	cp $(foreach dot, $(DOTS), ~/$(dot)) ~/dotsbkp
	cp $(foreach dot, $(DOTS), $(DIR)/$(dot)) ~/

sync:
	mkdir -p $(DIR)/dotsbkp
	cp $(foreach dot, $(DOTS), $(DIR)/$(dot)) $(DIR)/dotsbkp
	cp $(foreach dot, $(DOTS), ~/$(dot)) $(DIR)
