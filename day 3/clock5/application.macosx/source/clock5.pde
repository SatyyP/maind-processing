void setup() {
  size(500,500);  
}

void draw() {
  background(0);
  float s = sin(radians(second()*6))*100;
  float c = cos(radians(second()*6))*100;
  translate(width/2, height/2);
  ellipse(s, c, 50, 50); 
}