void setup() {
  size(500,500);
  noStroke();
}

void draw() {
  background(255);
  fill(255,0,0);

  if (mouseX > 300 && mouseX < 350 && mouseY > 300 && mouseY<350) {
    fill(0,0,255);
    rect(300,300,50,50);
  }  
}