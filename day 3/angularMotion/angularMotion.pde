void setup() {
  size(500,500);  
}

void draw() {
  background(0);
  
  //minute
  float sm = sin(-radians(minute()*6))*150;
  float cm = cos(-radians(minute()*6))*150;
  translate(width/2, height/2);
  noFill();
  stroke(255);
  ellipse(0, 0, 300, 300);
  noStroke();
  fill(255);
  ellipse(sm, cm, 20, 20);
  
  //second
  float s = sin(-radians(second()*6))*200;
  float c = cos(-radians(second()*6))*200;  
  noFill();
  stroke(255);
  ellipse(0, 0, 400, 400);
  noStroke();
  fill(255);
  ellipse(s, c, 10, 10);
}