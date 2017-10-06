class Bouncer {
  
  float posX;
  float posY;
  float speedX;
  float speedY;
  float radius;
  color c;
  PImage face;
  float r;
  
  Bouncer(color _c, float _radius, float _speedX, float _speedY) {
    radius = _radius;     
    posX = random(radius, width-radius);
    posY = random(radius, height-radius);
    speedX = _speedX;
    speedY = _speedY;
    c = _c;
    face = loadImage("face.png");
    r = random(360);
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
    
    r++;
  }
  
  //how it looks
  void display() {
    pushMatrix();
    translate(posX-radius, posY-radius);
    rotate(radians(r));
    image(face, 0,0);
    popMatrix();
  }
  
}