void setup() {
  size(500,500); 
  background(255);
}

void draw() {      
  house(mouseX,mouseY,mouseX*0.02,color(0,random(100,150),random(150,200)));
}

void mousePressed() {
  background(255);
}