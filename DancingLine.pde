class DancingLine {
	int neutralPoint;
	float xOffset;
	float yOffset;

	DancingLine() {
		neutralPoint = 150;
		xOffset = 30;
		yOffset = 30;
	}

	void adjustNeutralPoint() {
		xOffset = xOffset + random(-2, 2);
		yOffset = yOffset + random(-2, 2);
	}

	void moveAndDisplay() {
		adjustNeutralPoint();

		noFill();
		beginShape();
		vertex(70, 70); // first point
		bezierVertex(
			90, 70,
			neutralPoint - xOffset, neutralPoint - yOffset,
			neutralPoint, neutralPoint);
		bezierVertex(
			neutralPoint + xOffset, neutralPoint + yOffset,
			380, 350,
			350, 350);
		endShape();
	}
}
