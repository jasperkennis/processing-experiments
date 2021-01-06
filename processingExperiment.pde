void setup() {
  size(480, 120);
}

void draw() {
  background(100, 100, 100, 100);

  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}
