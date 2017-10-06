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
  rotate(-PI/2);
  println(hour());
  arc(0, 0, 200, 200, 0, radians(second()*6));
  arc(0, 0, 180, 180, 0, radians(minute()*6));
  arc(0, 0, 160, 160, 0, radians((hour()-12)*30));
  popMatrix();
}