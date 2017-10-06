
void house(float x, float y, float r) {
  pushMatrix();
  translate(x,y);
  rotate(r);
  rect(0,0,60,60);
  triangle(0,0,60,0,30,-30);  
  rect(20,30,20,30);
  popMatrix();
}