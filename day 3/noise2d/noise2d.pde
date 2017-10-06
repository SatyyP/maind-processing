float zoff = 0;
int rows = 10;
int cols = 10;
float sizex, sizey;


void setup() {
  size(500,500);
  sizex = width/cols;
  sizey = height/rows;
}

void draw() {
  background(0);
  noStroke();   
  float xoff = 0;
  for (int x=0; x<cols; x++) {
    float yoff = 0;
    for (int y=0; y<rows; y++) {      
      float c =  noise(xoff, yoff, zoff) * 255;
      fill(c);
      rect(x*sizex, y*sizey, sizex, sizey);
      yoff += 0.06;
    }
    xoff += 0.06;
  }
  zoff += 0.01;
}