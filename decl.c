#include <sys/types.h>

extern void* malloc(size_t size);
extern void free(void* ptr);

int main(int argc, char **argv) {
	void *p = malloc(4096);
	free(p);
	return 0;
}
