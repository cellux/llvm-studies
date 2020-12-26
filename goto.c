#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
  int i = atoi(argv[1]);
  if (i > 5)
    goto greater_than_five;
  printf("less than five\n");
  goto end;
greater_than_five:
  printf("greater than five\n");
end:
  printf("exiting\n");
}
