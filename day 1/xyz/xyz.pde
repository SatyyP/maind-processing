void setup() {
  size(640,420,P3D);  
}

void draw() {    
  background(0);
  translate(width/2, height/2);
  rotateY(mouseX*0.01);
  rotateX(mouseY*0.01);
  noFill();
  stroke(255);
  sphereDetail(int(mouseX*0.05));
  sphere(100);
}