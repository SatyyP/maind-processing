float xpos = 0;
float speed = 1;

void setup() {
  size(500,500);
}

void draw() {  
  background(255);
  noStroke();
  fill(255,0,0);
  rect(xpos, 100, 30, 30);  
  xpos = xpos + speed;  
}