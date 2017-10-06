float xpos;
float ypos;
float speed;

void setup() {
  size(500,500);
  xpos = width/2;
  ypos = height/2;
  speed = 5;
}

void draw() {
  //background(255);
  fill(0,255,255);
  noStroke();
  ellipse(xpos,ypos,30,30);
}

void keyPressed() {
  if (keyCode == UP) {
    xpos = xpos-speed;
  }
  if (key == 'd') {
    xpos = xpos+speed;
  }
  if (key == 'w') {
    ypos = ypos-speed;
  }
  if (key == 's') {
    ypos = ypos+speed;
  } 
}