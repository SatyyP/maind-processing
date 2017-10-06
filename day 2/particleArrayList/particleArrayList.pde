ArrayList<Particle> particles = new ArrayList<Particle>();
boolean debug;

void setup() {
  size(500, 500);
  for (int i=0; i<100; i++) {
    Particle p = new Particle();
    particles.add(p);
  }
}

void draw() {
  background(255);
  for(Particle p : particles) {
    p.update();
    p.display();
    p.flyAway(mouseX,mouseY);    
  }
}

void keyPressed() {
  if (key == ' ') {
    debug = !debug;
  }
}

void mouseDragged() {
   for(Particle p : particles) {
    p.setDest(mouseX, mouseY);    
  }
}