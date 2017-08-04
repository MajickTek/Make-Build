PREFIX = /usr/local #Location in your PATH, /usr/local should be fine on macOS/BSD/Linux
BUILDCMD = gcc #This is the build program.
BUILDPARAMS = -o build #This is where the parameters to BUILDCMD go
EXEBIN = myprogram #replace "myprogram" with your desired executable name

//----------------------------------------------
//The following should NOT need to be modified.|
//It is incredibly complicated and hacked up.  |
//Modify the variables above to use this file. |
//----------------------------------------------
build:
	$(BUILDCMD) main.c $(BUILDPARAMS) #Build output file.
.PHONY: install
install: build
	sudo mkdir -p $(PREFIX)/bin
	sudo cp $< $(PREFIX)/bin/$(EXEBIN)
.PHONY: uninstall
uninstall:
	sudo rm -rf $(PREFIX)/bin/$(EXEBIN)
clean:
	rm build
all: install
