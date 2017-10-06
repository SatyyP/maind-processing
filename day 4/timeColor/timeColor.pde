void setup() {
  size(500, 500);
}

void draw() {  
  float r = map(second(), 0, 60, 0, 255);
  float g = map(minute(), 0, 60, 0, 255);
  float b = map(hour(), 0, 24, 0, 255);
  background(255-r, 255-g, 255-b);
  fill(r, g, b);
  noStroke();
  ellipse(width/2, height/2, 200, 200);
}