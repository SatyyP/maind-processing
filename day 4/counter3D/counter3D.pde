int spacer = 40;

void setup() {
  size(500,500,P3D);
}

void draw() {
  background(255);
  translate(width/2-spacer*3,height/2+spacer*5,-100);
  rotateX(radians(-90));
  
  //black dots
  int counter = 0;
  for (int y=0; y<10; y++) {
    for (int x=0; x<6; x++) {
      fill(100,150,0);      
      pushMatrix();
      translate(x*spacer, y*spacer);
      box(40,40,10);
      popMatrix();
      
      counter++;
      if (counter>second()) {
        return;
      }      
    }
  }
}