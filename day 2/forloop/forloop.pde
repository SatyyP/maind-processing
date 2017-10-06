int spacing = 30;

void setup() {
  size(500,500);  
}

void draw() {
  background(255);  
  translate(30,30);
  rectMode(CENTER);
  for (int i=0; i<13; i++) {
    pushMatrix();
    translate(i*spacing, 0);
    rotate(radians(i*10));
    fill(i*20,0,0);
    rect(0,0,20,20);
    popMatrix();
  }
    
}