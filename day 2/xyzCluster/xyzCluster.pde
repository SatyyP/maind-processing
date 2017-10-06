int n = 500;

Superbox[] boxes = new Superbox[n];

void setup() {
  size(500, 500, P3D);
  for (int i=0; i<n; i++) {
    boxes[i] = new Superbox();
  }
  
}

void draw() {
  background(255);  
  
  translate(width/2, height/2, width/2);
  rotateY(mouseX*0.01);
  rotateX(mouseY*0.01);
  
  for (int i=0; i<n; i++) {
    boxes[i].update();
    boxes[i].display();
  }
}