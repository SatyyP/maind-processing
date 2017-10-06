int n = 100;

float[]x = new float[n];
float[]y = new float[n];
float[]r = new float[n];

void setup() {
  size(500,500);
  for (int i=0; i<n; i++) {
   x[i] = random(width);
   y[i] = random(height);
   r[i] = random(360);
  }
}

void draw() {
  background(0);
  //loop through the arrays
  for(int i=0; i<n; i++) {

    //draw text
    pushMatrix();
    translate(x[i],y[i]);
    rotate(radians(r[i]));
    text("shake",0,0);    
    popMatrix();
    
    //update values
    x[i]+=random(-1,1);
    y[i]+=random(-1,1);
    r[i]+=1;
  }  
}