void setup() {
  size(640,420,P3D);  
}

void draw() {    
  background(0);
  lights();
  fill(200);
  noStroke();
  
  //global matrix
  pushMatrix();
  translate(width/2, height/2);
  rotateY(frameCount*0.01);
  rotateX(mouseY*0.01);
  
  //head  
  sphere(100);  
  
  //left eye
  pushMatrix();
  translate(-40,-20,80);
  fill(255,0,0);
  sphere(20);
  popMatrix();
  
  //right eye
  pushMatrix();
  translate(40,-20,80);
  fill(255,0,0);
  sphere(20);
  popMatrix();
    
  popMatrix();
}