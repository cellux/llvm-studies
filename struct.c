struct t {
  char c;
  int a;
  char *s;
  float f;
};

int main(int argc, char **argv) {
  struct t tmp;
  tmp.c = 'a';
  tmp.a = 1234;
  tmp.s = "Hello, world!\n";
  tmp.f = 1.25;

  struct t2 {
    int x;
    int y;
  } tmp2;
  tmp2.x = tmp.a;
  tmp2.y = tmp.f;
}
