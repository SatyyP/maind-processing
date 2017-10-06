color c;

void setup() {
  size(500, 500);
  noStroke();
  c = color(255, 0, 0);
}

void draw() {
  background(255);      
  if (dist(300, 300, mouseX, mouseY) < 25) {    
    c = color(0, 0, 255);
  } else {
    c = color(255, 0, 0);
  }
  fill(c);
  ellipse(300, 300, 50, 50);
}