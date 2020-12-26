#include <stdio.h>

int main(int argc, char **argv) {
  int sum = 0;
  int i = 0;
  while (i < 10) {
    sum += i;
    i++;
  }
  return sum;
}
