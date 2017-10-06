import processing.sound.*;

AudioDevice device;
SoundFile[] file;

// Define the number of samples 
int numsounds = 5;


int n = 10;
Bouncer[] b = new Bouncer[n];

void setup() {
  size(500,500);
  
   // Create a Sound renderer and an array of empty soundfiles
  device = new AudioDevice(this, 48000, 32);
  file = new SoundFile[numsounds];
  
  // Load 5 soundfiles from a folder in a for loop. By naming the files 1., 2., 3., n.aif it is easy to iterate
  // through the folder and load all files in one line of code.
  for (int i = 0; i < numsounds; i++){
    file[i] = new SoundFile(this, (i+1) + ".aif");
  }
  
  for(int i=0; i<n; i++) {
    
    color c = color(0,random(200,250),random(200,255));
    float r = random(10,15);
    float speedx = random(-4,4);
    float speedy = random(-4,4);
    
    //Bouncer(color, radius, speedX, speedY)
    b[i] = new Bouncer(c, r, speedx, speedy);
  }
}

void draw() {
  background(255);
  for(int i=0; i<n; i++) {
    b[i].update();
    b[i].display();
  }
}