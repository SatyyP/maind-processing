color c;
float x,y,r;

void setup() {
  size(500, 500);
  noStroke();
  c = color(255, 0, 0);
  r = 20;
  x = random(width-r);
  y = random(height-r);
}

void draw() {
  background(255);    
  fill(c);
  ellipse(x, y, r*2, r*2);
}

void mousePressed() {
  if (dist(x, y, mouseX, mouseY) < r) {
    if (c == color(0, 0, 255)) {
      c = color(255, 0, 0);
    } else {
      c = color(0, 0, 255);
    }
  }
}