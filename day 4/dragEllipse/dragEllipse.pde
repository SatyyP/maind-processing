color c;
float x, y, r;
float offX, offY;

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
  offX = mouseX-x;
  offY = mouseY-y;
}

void mouseDragged() {  
  if (dist(x, y, mouseX, mouseY) < r) {    
    x = mouseX-offX;
    y = mouseY-offY;
    c = color(0, 0, 255);
  }
}

void mouseReleased() {
  c = color(255, 0, 0);
}