PShape face;
PShape mouth;

void setup() {
  size(500, 500);
  face = loadShape("face.svg");
  
  mouth = face.getChild("mouth");
  mouth.disableStyle();
}

void draw() {
  background(255);
  shape(face, -48, 5);
  fill(255, 0, 0);
  shape(mouth, mouseX, mouseY);
}