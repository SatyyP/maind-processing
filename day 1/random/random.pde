void setup() {
 size(500,500);
 background(255); 
}

void draw() {
 //background(255);
 fill(random(255),random(255), random(255));
 ellipse(random(width), random(height), 30, 30);
 fill(mouseX, 0,0);
 ellipse(mouseX, mouseY, 30,30);
}

void mousePressed() {
  
}