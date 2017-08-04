PREFIX = /usr/local #Location in your PATH, /usr/local should be fine on macOS/BSD/Linux
BUILDCMD = gcc #This is the build program.
BUILDPARAMS = -o build #This is where the parameters to BUILDCMD go

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
