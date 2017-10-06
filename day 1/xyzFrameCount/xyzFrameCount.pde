void setup() {
  size(640,420,P3D);    
}

void draw() {    
  background(0);
  lights();
  pointLight(51, 102, 126, mouseX, 40, mouseY);
  translate(width/2, height/2);
  rotateY(frameCount*0.01);
  //rotateX(mouseY*0.01);
  noStroke();
  fill(0,200,100);
  //stroke(255);
  sphereDetail(5);
  sphere(100);
  
  //println(frameCount);
}