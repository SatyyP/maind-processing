void setup() {
  size(640,420);
  noStroke();
}

void draw() {    
  background(255);
  fill(0,0,255);
  
  //translate(100,100); 
  
  pushMatrix();
  rotate(radians(45));
  rect(0,0,50,50);
  popMatrix();
  
  pushMatrix();
  translate(100,100);
  rotate(radians(60));
  scale(2);
  rect(0,0,50,50);
  popMatrix();
  
  
  fill(255,0,0);
  ellipse(0,0,10,10);
}