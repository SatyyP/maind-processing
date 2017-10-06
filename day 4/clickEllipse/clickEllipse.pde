color c;

void setup() {
  size(500, 500);
  noStroke();
  c = color(255, 0, 0);
}

void draw() {
  background(255);    
  fill(c);
  ellipse(300, 300, 50, 50);
}

void mousePressed() {
  if (dist(300, 300, mouseX, mouseY) < 25) {
    if (c == color(0, 0, 255)) {
      c = color(255, 0, 0);
    } else {
      c = color(0, 0, 255);
    }
  }
}