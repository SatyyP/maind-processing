PImage cat;
PImage bg;

void setup() {
  size(640,426);
  cat = loadImage("cat.png");
  bg = loadImage("bg.jpg");
}

void draw() {    
  background(bg);
  image(cat, mouseX-cat.width/2, mouseY-cat.height/2);
}

void mousePressed() {
  cat = loadImage("rabbit.png");
}