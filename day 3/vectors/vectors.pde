PVector pos;
PVector speed;
PVector acc;
PVector wind;

void setup() {
  size(500,500);
  pos = new PVector(width/2, 50);
  speed = new PVector(0,0);
  acc = new PVector(0,0.5);
  wind = new PVector(0.01,0);
}

void draw() {
  background(255);
  noStroke();
  fill(0,0,200);
  ellipse(pos.x, pos.y, 30, 30);
  speed.add(acc);
  speed.add(wind);  
  pos.add(speed);
  
  if (pos.y > height) {
    PVector b = new PVector(0, -10);
    speed.add(b);
  } 
}