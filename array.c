int main(int argc, char **argv) {
  int matrix[4][3];
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 3; j++) {
      matrix[i][j] = i*j;
    }
  }
}
