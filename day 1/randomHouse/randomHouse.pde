void setup() {
  size(500,500); 
  background(255);
}

void draw() {      
  house(random(width),random(height),random(radians(360)),color(0,random(100,150),random(150,200)));
}