int spacer = 40;

void setup() {
  size(500,500);
}

void draw() {
  background(255);
  translate(50,50);
  
  //background grid
  for (int x=0; x<6; x++) {
    for (int y=0; y<10; y++) {
      fill(255);
      ellipse(x*spacer, y*spacer, 5, 5);
    }
  }  
  
  //black dots
  int counter = 0;
  for (int y=0; y<10; y++) {
    for (int x=0; x<6; x++) {
      fill(0);
      ellipse(x*spacer, y*spacer, 10, 10);
      counter++;
      if (counter>second()) {
        return;
      }
    }
  }
}