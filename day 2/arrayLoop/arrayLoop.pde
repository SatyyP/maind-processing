int n = 100;

float[]x = new float[n];
float[]y = new float[n];

void setup() {
  size(500,500);
  for (int i=0; i<n; i++) {
   x[i] = random(width);
   y[i] = random(height);
  }
}

void draw() {
  background(0);
  for(int i=0; i<n; i++) {
    text("shake",x[i],y[i]);
    x[i]+=random(-1,1);
    y[i]+=random(-1,1);
  }  
}