void setup() {
	size(512, 512);
}

void draw() {
	background(100);
	for (int i = 0; i < 500; ++i) {
		rect(i*10, i*10, 10, 10);
	}
}