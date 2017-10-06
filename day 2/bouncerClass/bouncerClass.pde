Bouncer b;
Bouncer b1;

void setup() {
  size(500,500);  
  b = new Bouncer(30, 5, 5);
  b1 = new Bouncer(70, 5, 5);
}

void draw() {
  background(255);
  b.update();
  b.display();
  
  b1.update();
  b1.display();
}