PREFIX = /usr/local
BUILDCMD = gcc
BUILDPARAMS = -o build

build:
	$(BUILDCMD) main.c $(BUILDPARAMS) #Build output file.
.PHONY: install
install: build
	sudo mkdir -p $(PREFIX)/bin
	sudo cp $< $(PREFIX)/bin/myprogram #replace "myprogram" with your desired executable name
.PHONY: uninstall
uninstall:
	sudo rm -rf $(PREFIX)/bin/myprogram #NEEDS to be the same as above
clean:
	rm build
all: install
