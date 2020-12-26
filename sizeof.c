struct t {
  char c;
  int i;
  char *s;
  float f;
};

int main(int argc, char **argv) {
  struct t t;
  return sizeof(t);
}
