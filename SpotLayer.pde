class SpotLayer {
	Spot[] spots;

	SpotLayer() {
		int numSpots = 70;
		int dia = width / numSpots;
		spots = new Spot[numSpots];

		for (int i = 0; i < spots.length; i++) {
			float x = dia / 2 + i * dia;
			float rate = random(0.1, 2.0);

			spots[i] = new Spot(x, 50, dia, rate);
		}
	}

	void moveAndDisplay() {
		for (int i = 0; i < spots.length; i++) {
			spots[i].move();
			spots[i].display();
		}
	}
}
