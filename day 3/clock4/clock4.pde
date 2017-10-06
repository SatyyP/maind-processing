ArrayList<Particle> hours = new ArrayList<Particle>();
ArrayList<Particle> minutes = new ArrayList<Particle>();
ArrayList<Particle> seconds = new ArrayList<Particle>();

boolean debug;

void setup() {
  size(500, 500);
  for (int i=0; i<hour(); i++) {
    Particle p = new Particle(color(255, 0, 0, 50));
    hours.add(p);
  }
  for (int i=0; i<minute(); i++) {
    Particle p = new Particle(color(0, 255, 0, 50));
    minutes.add(p);
  }
  for (int i=0; i<second(); i++) {
    Particle p = new Particle(color(0, 0, 255, 50));
    seconds.add(p);
  }
}

void draw() {
  background(255);
  for (Particle p : hours) {
    p.update();
    p.display();
  }
  
  for (Particle p : minutes) {
    p.update();
    p.display();
  }
  
  for (Particle p : seconds) {
    p.update();
    p.display();
  }
}

void keyPressed() {
  if (key == ' ') {
    debug = !debug;
  }
}

void mouseDragged() {
  //for (Particle p : particles) {
  //  p.setDest(mouseX, mouseY);
  //}
}