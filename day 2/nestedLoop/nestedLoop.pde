int n = 50;
float rSize;

void setup() {
  size(500,500); 
  rSize = width/n;
  noStroke();
}

void draw() {
  background(255);  
  for(int i=0; i<n; i++) {
    for(int j=0; j<n; j++) {
      fill(random(255));      
      rect(i*rSize, j*rSize, rSize, rSize);
    }    
  }
  
}