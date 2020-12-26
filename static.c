static int x;
int y;

int add(int x, int y) {
  static int z = 8;
  return x + y + z;
}

int main(int argc, char **argv) {
  x = 5;
  y = 3;
  return add(x,y);
}
