void setup() {
}

void draw() {
  int[] x = {
    50, 61, 83, 69, 71, 50, 29, 31, 17, 39
  };
  fill(0);
  // Read one array element each time through the for loop
  for (int i = 0; i < x.length; i++) {
    rect(0, i*10, x[i], 8);
  }
}
