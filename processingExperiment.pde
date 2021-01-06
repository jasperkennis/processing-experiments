Car myCar1;
Car myCar2;

void setup() {
  myCar1 = new Car(color(255,0,0),0,100,2);
  myCar2 = new Car(color(0,0,255),0,10,1);
}

void draw() {
  background(255, 255, 255, 0);

  int[] x = {
    50, 61, 83, 69, 71, 50, 29, 31, 17, 39
  };
  fill(0);
  // Read one array element each time through the for loop
  for (int i = 0; i < x.length; i++) {
    rect(0, i*10, x[i], 8);
  }

  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
}
