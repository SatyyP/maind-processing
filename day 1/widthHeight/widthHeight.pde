void setup() {
 size(500,500);
 background(255);
}

void draw() {
 noFill();
 stroke(0,0,0,10);
 ellipse(width/2,height/2,mouseX,mouseY); 
}