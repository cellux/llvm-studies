static int sum = 0;

void add(int x) {
  sum += x;
}

int main(int argc, char **argv) {
  int x = 5;
  add(x);
  {
    int x = 8;
    add(x);
  }
  return sum;
}
