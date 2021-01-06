Car myCar1;
Car myCar2;
float[] sineWave;
Spot[] spots;
int[][] x = {
	{50, 0} ,
	{61, 204} ,
	{83, 51} ,
	{69,102} ,
	{71, 0} ,
	{50,153} ,
	{29, 0} ,
	{31,51} ,
	{17,102} ,
	{39,204}
};


void setup() {
	size(700, 100);
	int numSpots = 70; // Number of objects
	int dia = width / numSpots; // Calculate diameter
	spots = new Spot[numSpots]; // Create array
	for (int i = 0; i < spots.length; i++) {
		float x = dia / 2 + i * dia;
		float rate = random(0.1, 2.0);
		// Create each object
		spots[i] = new Spot(x, 50, dia, rate);
	}
	noStroke();

	myCar1 = new Car(color(255,0,0),0,100,2);
	myCar2 = new Car(color(0,0,255),0,10,1);

	sineWave = new float[width];
	for (int i = 0; i < sineWave.length; i++) {
		// Fill array with values from sin()
		float r = map(i, 0, width, 0, TWO_PI);
		sineWave[i] = abs(sin(r));
	}
}

void draw() {
	for (int i = 0; i < sineWave.length; i++) {
		// Set stroke values to numbers read from array
		stroke(sineWave[i] * 255,sineWave[i] * 255,sineWave[i] * 255, 10);
		line(i, 0, i, height);
	}

	fill(255);
	for (int i = 0; i < spots.length; i++) {
		spots[i].move(); // Move each object
		spots[i].display(); // Display each object
	}

	myCar1.drive();
	myCar1.display();
	myCar2.drive();
	myCar2.display();

	for (int i = 0; i < x.length; i++) {
		fill(x[i][1]);
		rect(0, i * 10, x[i][0], 8);
	}
}
