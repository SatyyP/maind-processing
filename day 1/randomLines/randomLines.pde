void setup() {
  size(500,500);
  background(255);
}

void draw() {  
  line(random(width), random(height), random(width), random(height));
}