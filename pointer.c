struct t {
  char c;
  int a;
  char *s;
  float f;
};

void p(struct t *t) {
  struct t2 {
    int x;
    int y;
  } tmp2;
  tmp2.x = t->a;
  tmp2.y = t->f;
}

int main(int argc, char **argv) {
  struct t tmp;
  tmp.c = 'a';
  tmp.a = 1234;
  tmp.s = "Hello, world!\n";
  tmp.f = 1.25;
  p(&tmp);
}
