hello.so: hello.scm hello.egg /usr/lib/libhello.so
	CSC_OPTIONS='-L -lhello' chicken-install
run:
	csi -q driver.scm
clean:
	rm -rf hello.build.sh hello.import.scm hello.import.so hello.install.sh hello.link hello.so hello.static.o hello.o /usr/lib/libhello.so
hello_impl.c:
hello.o: hello_impl.c
	gcc -fPIC -c -o hello.o hello_impl.c
/usr/lib/libhello.so: hello.o
	gcc -shared -o /usr/lib/libhello.so hello.o
