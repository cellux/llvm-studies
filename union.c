union u {
  char c;
  int a;
  char *s;
  float f;
};

int main(int argc, char **argv) {
  union u tmp;
  tmp.c = 'a';
  tmp.a = 1234;
  tmp.s = "Hello, world!\n";
  tmp.f = 1.25;
}
