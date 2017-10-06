PImage cat;
float treshold = 200;
void setup() {
  size(500, 500);
  cat = loadImage("cat.jpg");
}

void draw() {
  background(255);  
  cat.loadPixels(); 
  treshold = mouseX/2;
  for (int x=0; x<cat.width; x++) {
    for (int y=0; y<cat.height; y++) {
      int loc = x + y * cat.width;
      float b = brightness(cat.pixels[loc]);
      if (b < treshold) {
        noStroke();
        fill(0);
        ellipse(x*5,y*5,2*b*0.01,2*b*0.01);
      }
    }
  }
}