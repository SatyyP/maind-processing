void setup() {
  size(500, 500);
}

void draw() {
  background(230);
  noFill();
  stroke(0);
  strokeWeight(10);
  strokeCap(ROUND);

  pushMatrix();
  translate(width/2, height/2);
  //rotate(frameCount*0.05);
  arc(0, 0, 200, 200, 0, radians(second()*6));
  popMatrix();
}