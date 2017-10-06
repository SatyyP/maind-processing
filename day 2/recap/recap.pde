void setup() {
  size(300,500);  
}

void draw() {
  background(0,100,100);
  rotRect(mouseX, mouseY, 10);
  rotRect(100, 30, 50);
  rotRect(random(width), random(height), random(360));
}

void rotRect(float x, float y, float r) {
  pushMatrix();
  translate(x,y);  
  rotate(radians(r));
  rect(0, 0, 50, 30);
  popMatrix(); 
}