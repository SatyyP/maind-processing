int xspacer = 10;
int yspacer = 10;
int zspacer = 5;

void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(255);
  translate(width/2, height/2+yspacer*20, 0);
  rotateX(radians(-90));  
  //rotateZ(radians(45));
  rotateZ(frameCount*0.01);
  

  count();
  //drawOrigin();
}

void count() {
  //black dots
  int counter = 0;
  for (int z=0; z<60; z++) {
    for (int y=0; y<10; y++) {
      for (int x=0; x<6; x++) {      
        fill(100, 150, 0);      
        pushMatrix();
        translate(x*xspacer-xspacer*3, y*yspacer-yspacer*3, -z*zspacer);
        box(xspacer, yspacer, zspacer);
        popMatrix();

        counter++;
        int hourSec = second() + minute()*60;
        if (counter>hourSec) {
          return;
        }
      }
    }
  }
}

void drawOrigin() {   
  noFill();
  stroke(255, 0, 0);
  line(0, 0, 0, 50, 0, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, 50, 0);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, 50);
  stroke(0);
}