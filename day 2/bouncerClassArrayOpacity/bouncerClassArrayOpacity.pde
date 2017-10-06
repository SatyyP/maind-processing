int n = 100;
Bouncer[] b = new Bouncer[n];

void setup() {
  size(500,500);
  
  for(int i=0; i<n; i++) {
    
    color c = color(0,random(200,250),random(200,255));
    float r = random(10,15);
    float speedx = random(-7,7);
    float speedy = random(-7,7);
    
    //Bouncer(color, radius, speedX, speedY)
    b[i] = new Bouncer(r, speedx, speedy);
  }
}

void draw() {
  background(255);
  for(int i=0; i<n; i++) {
    b[i].update();
    b[i].display();
  }
}