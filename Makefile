all: $(patsubst %.c,%.ll,$(wildcard *.c))

%.ll: %.c
	clang -S -emit-llvm -O0 -fno-discard-value-names -Xclang -disable-O0-optnone -o $@ $<

clean:
	rm -f *.ll
