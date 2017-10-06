void setup() {
  size(640,420);
  noStroke();
}

void draw() {    
  background(255);
  fill(0,0,255);
  pushMatrix();
  rectMode(CENTER);
  translate(mouseX, mouseY);
  rotate(mouseX*0.01);
  scale(mouseY*0.01);
  rect(0,0,50,50);
  popMatrix();
}