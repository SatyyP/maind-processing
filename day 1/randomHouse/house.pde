
void house(float x, float y, float r, color c) {
  fill(c);
  pushMatrix();
  translate(x,y);
  scale(0.5);
  rotate(r);
  rect(0,0,100,100);
  triangle(0,0,100,0,50,-50);  
  rect(40,60,20,40);
  popMatrix();
}