int n = 10;

ArrayList<Bouncer> bouncers = new ArrayList<Bouncer>();

void setup() {
  size(500, 500);

  //add n bouncers
  for (int i=0; i<n; i++) {    
    addBouncer();
  }
}

void draw() {
  background(255);
  for (int i=0; i<bouncers.size(); i++) {
    bouncers.get(i).update();
    bouncers.get(i).display();
  }
}

void mousePressed() {
  //addBouncer();
  removeBouncer();
}

void addBouncer() {
  //initial values
  color c = color(0, random(200, 250), random(200, 255));
  float r = random(10, 15);
  float speedx = random(-7, 7);
  float speedy = random(-7, 7);

  //Bouncer(color, radius, speedX, speedY)
  Bouncer b = new Bouncer(c, r, speedx, speedy);
  bouncers.add(b);
}

void removeBouncer() {
  if (bouncers.size() > 0) {
    bouncers.remove(0);
  } else {
    for (int i=0; i<n; i++) {    
      addBouncer();
    }
  }
}