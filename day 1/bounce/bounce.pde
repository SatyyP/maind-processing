float xpos;
float xspeed;
float ypos;
float yspeed;

void setup() {  
  size(500,500);
  xpos = random(width);
  ypos = random(height);
  xspeed = random(-8,8);
  yspeed = random(-8,8);
}

void draw() {  
  background(255);
  noStroke();
  fill(255,0,0);
  rect(xpos, ypos, 30, 30);  
  
  xpos = xpos + xspeed;
  ypos = ypos + yspeed;
  
  if(xpos > width-30 || xpos<0){
    xspeed = -xspeed;
  }   
  
  if(ypos > height-30 || ypos<0){
    yspeed = -yspeed;
  }   
}

void mousePressed() {
  xspeed = random(-8,8);
  yspeed = random(-8,8);
}