void setup() {
  size(500,500);
}

void draw() {
  background(0);
  fill(255);  
  ellipse(width/2-150,150, hour()*3,hour()*3);
  ellipse(width/2, 150, minute()*2, minute()*2);
  ellipse(width/2+150, 150, second()*2, second()*2);
  
  noFill();
  stroke(255);
  ellipse(width/2-150,150, 24*3,24*3);
  ellipse(width/2, 150, 60*2, 60*2);
  ellipse(width/2+150, 150, 60*2, 60*2);
  
}