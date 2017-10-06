void setup() {
  size(displayWidth,displayHeight,P3D);
}

void draw() {
  background(0);
  float w = map(second(), 0, 60, 0, 200);
  float h = map(minute(), 0, 60, 0, 200);
  float d = map(hour(), 0, 24, 0, 200);
  noFill();
  stroke(255);
  translate(width/2, height/2);
  rotateX(frameCount*0.01);
  rotateY(frameCount*0.01);
  box(w,h,d);
}