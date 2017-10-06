float zoff = 0;
int rows = 45;
int cols = 45;
float sizex, sizey;
//the lower the smoother
float smoothness = 0.02;
float disturbance = 0.005;


void setup() {
  size(500,500,P3D);
  sizex = width/cols;
  sizey = height/rows;
  sphereDetail(3);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  translate(0,height/2);
  rotateX(PI/2);
  
  float xoff = 0;
  for (int x=0; x<=cols; x++) {
    float yoff = 0;
    for (int y=0; y<=rows; y++) {      
      float z = noise(xoff, yoff, zoff) * 500;
      pushMatrix();
      translate(x*sizex, y*sizey-height/2, z-250);
      sphere(1);
      popMatrix();         
      yoff += smoothness;
    }
    xoff += smoothness;
  }
  zoff += disturbance;
  
}