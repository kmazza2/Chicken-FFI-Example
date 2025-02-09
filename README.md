# Minimal Chicken Scheme Extension with FFI 

This repo contains the code for a minimal Chicken Scheme extension that calls a function in a C file, and a Makefile that will build and install the extension so that it can be used from the Chicken REPL. The official Chicken docs make it clear that "foreign" functions cannot be used from the REPL, but do not make it clear that EXTENSIONS making use of foreign functions *can* be used from the REPL. The purpose of this repo is to demonstrate the creation and installation of such an extension.

This works on Ubuntu 24.04 x86_64:
```
make
make run
make clean
```

Undoubtedly the code and Makefile I have written are not as clean as possible, so any experienced Chicken devs that happen to be reading this: please let me know how this example can be improved!
