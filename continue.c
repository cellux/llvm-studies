int main(int argc, char **argv) {
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    if (i == 5)
      continue;
    sum += i;
  }
  return sum;
}
