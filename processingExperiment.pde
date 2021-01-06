// Car myCar1;
// Car myCar2;

// SpotLayer spotLayer;
SineWaveLayer sineWaveLayer;
DancingLine dancingLine;
// BarsLayer barsLayer;


void setup() {
	size(400, 400);

	sineWaveLayer = new SineWaveLayer();
	dancingLine = new DancingLine();
	// spotLayer = new SpotLayer();
	// barsLayer = new BarsLayer();

	// myCar1 = new Car(color(255,0,0),0,100,2);
	// myCar2 = new Car(color(0,0,255),0,10,1);
}

void draw() {
	sineWaveLayer.moveAndDisplay();
	dancingLine.moveAndDisplay();
	// spotLayer.moveAndDisplay();

	// myCar1.driveAndDisplay();
	// myCar2.driveAndDisplay();

	// barsLayer.moveAndDisplay();
}
