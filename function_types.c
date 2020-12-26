int add1(int x) {
  return x+1;
}

int sub1(int x) {
  return x-1;
}

typedef int (*intfn)(int);

int main(int argc, char **argv) {
  intfn ifn1 = add1;
  intfn ifn2 = sub1;
  return ifn1(ifn2(0));
}
