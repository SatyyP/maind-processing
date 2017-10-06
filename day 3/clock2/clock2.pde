void setup() {
  size(500,500, P3D);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  translate(width/2, height/2);
  rotateX(frameCount*0.01);
  rotateY(frameCount*0.01);  
  box(hour()*4,minute()*4,second()*4);
}