void setup() {
  size(500,500);   
}

void draw() {
  background(255);
  float a1x, a1y;
  float a2x, a2y;
  float c1x, c1y;
  float c2x, c2y;
  a1x = 100;
  a1y = 100;
  a2x = 250;
  a2y = 400;
  c1x = mouseX;
  c1y = mouseY;
  c2x = 200;
  c2y = 400;
    
  noStroke();
  fill(0);
  ellipse(a1x,a1y,5,5);
  ellipse(a2x,a2y,5,5);  
  noFill();
  stroke(150);
  line(a1x,a1y,c1x,c1y);
  line(a2x,a2y,c2x,c2y); 
  noStroke();
  fill(255,0,0);
  ellipse(c1x,c1y,3,3);
  ellipse(c2x,c2y,3,3);
  noFill();
  stroke(0);
  bezier(a1x,a1y,c1x,c1y,c2x,c2y,a2x,a2y);
}