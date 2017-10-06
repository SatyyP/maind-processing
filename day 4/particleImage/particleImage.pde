ArrayList<Particle> particles = new ArrayList<Particle>();
boolean debug;

PImage cat;
float treshold = 200;

void setup() {
  size(500, 500);
  cat = loadImage("cat.jpg");

  cat.loadPixels();   
  for (int x=0; x<cat.width; x++) {
    for (int y=0; y<cat.height; y++) {
      int loc = x + y * cat.width;
      float b = brightness(cat.pixels[loc]);
      if (b < treshold) {
        Particle p = new Particle(x*5,y*5);
        particles.add(p);
      }
    }
  }  
}

void draw() {
  background(255);

  for (Particle p : particles) {
    p.update();
    p.display();
    p.flyAway(mouseX, mouseY);
  }
}

void keyPressed() {
  if (key == ' ') {
    debug = !debug;
  }
}

void mouseDragged() {
  for (Particle p : particles) {
    p.setDest(mouseX, mouseY);
  }
}