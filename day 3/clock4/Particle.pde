class Particle {

  float px, py;
  float dx, dy;
  float r;
  float damp;
  color c;

  Particle(color _c) {
    px = random(width);
    py = random(height);
    dx = random(width);
    dy = random(height);
    r = 15;
    damp = random(0.01, 0.05);
    c = _c;
  }

  void update() {
    px += (dx - px) * damp;
    py += (dy - py) * damp;
    dx += random(-5, 5);
    dy += random(-5, 5);
    
    if (dx < 0) dx = 0;
    if (dx > width) dx = width;
    if (dy < 0) dy = 0;
    if (dy > height) dy = height;
  }

  void display() {
    if (debug) {
      stroke(100,100,100,100);
      line(px, py, dx, dy);
      noStroke();
      fill(150, 0, 0, 200);
      ellipse(dx, dy, 10, 10);
    }

    noStroke();
    fill(0);
    ellipse(px, py, 5, 5);
    fill(c);
    ellipse(px, py, r*2, r*2);    
  }
  
  void setDest(float x, float y) {
    dx = x;
    dy = y;
  }
}