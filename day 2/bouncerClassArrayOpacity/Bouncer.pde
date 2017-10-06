class Bouncer {
  
  float posX;
  float posY;
  float speedX;
  float speedY;
  float radius;
  color c;
  
  Bouncer( float _radius, float _speedX, float _speedY) {
    radius = _radius;     
    posX = random(radius, width-radius);
    posY = random(radius, height-radius);
    speedX = _speedX;
    speedY = _speedY;
    PVector v = new PVector(speedX, speedY);
    c = color(0,0,0,v.mag()*40);
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
    fill(c);
    ellipse(posX,posY,radius*2,radius*2);
  }
  
}