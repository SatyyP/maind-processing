float a1x,a1y,c1x,c1y,a2x,a2y,c2x,c2y;

void setup() {
  size(500,500); 
  a1x = -200;
  a1y = 0;
  c1x = -200;
  c1y = -200;
  a2x = 200;
  a2y = 0;
  c2x = 200;
  c2y = 200;
}

void draw() {
  background(0);
  translate(width/2, height/2);
  noFill();
  stroke(255);
  bezier(a1x,a1y,c1x,c1y,c2x,c2y,a2x,a2y);
  
  //debug
  stroke(200);
  noFill();
  line(a1x,a1y,c1x,c1y);
  line(a2x,a2y,c2x,c2y);
  noStroke();
  fill(150);
  ellipse(a1x,a1y,7,7);
  ellipse(a2x,a2y,7,7);
  fill(200,0,0);
  ellipse(c1x,c1y,4,4);
  ellipse(c2x,c2y,4,4);
  
  c1x = a1x + sin(frameCount*0.1)*50;
  c1y = a1y + cos(frameCount*0.1)*50;
  
  c2x = a2x - sin(frameCount*0.1)*50;
  c2y = a2y - cos(frameCount*0.1)*50;
}