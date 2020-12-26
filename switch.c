#include <stdlib.h>

enum {
  RED = 1,
  GREEN = 2,
  BLUE = 3
};

int main(int argc, char **argv) {
  int what = atoi(argv[1]);
  int result = 0;
  switch (what) {
  case RED:
    result += 0xff0000;
    break;
  case GREEN:
    result += 0x00ff00;
    break;
  case BLUE:
    result += 0x0000ff;
    break;
  default:
    result = 0xffffff;
    break;
  }
  return result;
}
