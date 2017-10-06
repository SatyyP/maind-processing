float speedX;
float speedY;
float posX,posY;
int radius = 15;

void setup() {
  size(512,512);
  posX = random(radius, width-radius);
  posY = random(radius, height-radius);
  speedX = random(-5,5);
  speedY = random(-5,5);
}

void draw() {
  background(255);
  noStroke();
  fill(255,0,0);
  ellipse(posX,posY,radius*2,radius*2);
  
  posX += speedX;
  posY += speedY;
  
  if (posX < radius || posX > width-radius) {
    speedX = -speedX;
  }
  
  if (posY < radius || posY > height-radius) {
    speedY = -speedY;
  }
}