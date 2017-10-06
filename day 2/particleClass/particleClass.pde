

boolean debug;
Particle p;

void setup() {
  size(500, 500);
  p = new Particle();
}

void draw() {
  background(255);
  p.update();
  p.display();  
}

void keyPressed() {
  if (key == ' ') {
    debug = !debug;
  }
}