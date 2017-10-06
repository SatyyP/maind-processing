void setup() {
  size(500,500, P3D);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  translate(width/2, height/2);
  rotateX(radians(hour()));
  rotateY(radians(minute()));
  rotateZ(radians(second()));
  box(100,50,50);
}