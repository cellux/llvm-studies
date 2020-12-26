#include <stdio.h>
#include <stddef.h>

int main(int argc, char **argv) {
  char c1 = 'x';
  signed char c2 = 65;
  unsigned char c3 = 0xc8;
  printf("c1=%c, c2=%c, c3=%c\n", c1, c2, c3);

  short s1 = 1234;
  signed short s2 = 5678;
  unsigned short s3 = 0xface;
  printf("s1=%hd, s2=%hd, s3=%hu\n", s1, s2, s3);

  int i1 = 1234;
  signed int i2 = 5678;
  unsigned int i3 = 0xfacefeed;
  printf("i1=%d, i2=%d, i3=%u\n", i1, i2, i3);

  long l1 = 1234;
  signed long l2 = 5678;
  unsigned long l3 = 0xfacefeed;
  printf("l1=%ld, l2=%ld, l3=%lu\n", l1, l2, l3);

  long long ll1 = 1234;
  signed long long ll2 = 5678;
  unsigned long long ll3 = 0xfacefeed;
  printf("ll1=%lld, ll2=%lld, ll3=%llu\n", ll1, ll2, ll3);

  size_t size = 0xfacefeed;
  printf("size=%zd\n", size);

  float f = 1.25;
  printf("f=%g\n", f);

  double d = 1.25;
  printf("d=%g\n", d);

  long double ld = 1.25;
  printf("ld=%Lg\n", ld);

  void *ptr = 0;
  printf("ptr=%p\n", ptr);
}
