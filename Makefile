# This must be the first line
PATH := $(dir $(realpath $(lastword $(MAKEFILE_LIST)))) 

$(DOTS) := .bashrc .vimrc .gvimrc .gitconfig

copy:
	mkdir -p ~/dotsbkp
	cp ~/$(DOTS) ~/dotsbkp
	cp $(PATH)/$(DOTS) ~/

sync:
	mkdir -p $(PATH)/dotsbkp
	cp $(PATHS)/$(DOTS) $(PATH)/dotsbkp
	cp ~/$(DOTS) $(PATH)
