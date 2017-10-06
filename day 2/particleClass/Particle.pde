class Particle {

  float px, py;
  float dx, dy;
  float r;
  float damp;

  Particle() {
    px = random(width);
    py = random(height);
    dx = random(width);
    dy = random(height);
    r = 15;
    damp = 0.01;
  }

  void update() {
    px += (dx - px) * damp;
    py += (dy - py) * damp;
    dx += random(-5, 5);
    dy += random(-5, 5);
  }

  void display() {
    if (debug) {
      stroke(0);
      line(px, py, dx, dy);
      noStroke();
      fill(255, 0, 0);
      ellipse(dx, dy, 10, 10);
    }

    noStroke();
    fill(0, 120, 200);
    ellipse(px, py, r*2, r*2);
  }
}