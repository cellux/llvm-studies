#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
  int i = atoi(argv[1]);
  if (i > 5) {
    printf("greater than");
  }
  else if (i == 5) {
    printf("equal to");
  } else {
    printf("less than");
  }
  printf(" five\n");
}
