PFont sans;

void setup() {
 size(500,500);
 background(0);
 sans = loadFont("sourcesans.vlw");
}

void draw() {
  fill(255);
  //textFont(font, size)
  textFont(sans, 18);
  text("hello processing", mouseX, mouseY);
}