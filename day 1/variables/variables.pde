int frank = 0;

void setup() {
  size(500,500);
}

void draw() {  
  background(255);
  noStroke();
  fill(255,0,0);
  rect(frank,100,30,30);
  frank = frank + 5;
}