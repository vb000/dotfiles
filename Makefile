# This must be the first line
DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
$(warning $(DIR))

DOTS := .bashrc .vimrc .gvimrc .gitconfig \
	    .vim/ftdetect/*.vim .vim/indent/*.vim .vim/syntax/*.vim

$(warning $(DOTS))

copy:
	mkdir -p ~/dotsbkp
	cp -r $(foreach dot, $(DOTS), ~/$(dot)) ~/dotsbkp
	cp -r $(foreach dot, $(DOTS), $(DIR)/$(dot)) ~/

sync:
	mkdir -p $(DIR)/dotsbkp
	cp -r $(foreach dot, $(DOTS), $(DIR)/$(dot)) $(DIR)/dotsbkp
	cp -r $(foreach dot, $(DOTS), ~/$(dot)) $(DIR)
