void setup() {
  size(500,500);
  background(255);
}

void draw() {
  line(mouseX, mouseY, pmouseX, pmouseY);
}