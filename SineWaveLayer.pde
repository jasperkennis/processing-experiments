class SineWaveLayer {
	float[] sineWave;

	SineWaveLayer() {
		sineWave = new float[width];
		for (int i = 0; i < sineWave.length; i++) {
			// Fill array with values from sin()
			float r = map(i, 0, width, 0, TWO_PI);
			sineWave[i] = abs(sin(r));
		}
	}

	void moveAndDisplay() {
		for (int i = 0; i < sineWave.length; i++) {
			// Set stroke values to numbers read from array
			stroke(sineWave[i] * 255,sineWave[i] * 255,sineWave[i] * 255, 10);
			line(i, 0, i, height);
		}
	}
}
