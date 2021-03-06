class Bouncer {
  
  float posX;
  float posY;
  float speedX;
  float speedY;
  int radius;
  
  Bouncer(int r, float _speedX, float _speedY) {
    radius = r;
    speedX = r*60; 
    posX = random(radius, width-radius);
    posY = random(radius, height-radius);
    speedX = _speedX;
    speedY = _speedY;
  }
  
  //how it works
  void update(){
    posX += speedX;
    posY += speedY;
    
    if (posX < radius || posX > width-radius) {
      speedX = -speedX;
    }
    
    if (posY < radius || posY > height-radius) {
      speedY = -speedY;
    }
  }
  
  //how it looks
  void display() {
    noStroke();
    fill(255,0,0);
    ellipse(posX,posY,radius*2,radius*2);
  }
  
}