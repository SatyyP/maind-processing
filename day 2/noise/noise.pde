float diam;

float time = 0;

void setup() {
  size(500,500);  
}

void draw() {
  background(100);
  noStroke();
  diam = noise(time)*50+50;
  ellipse(width/2, height/2, diam,diam);  
  time += 0.05;
}