import processing.sound.*;

TriOsc triOsc;
Env env; 

// Times and levels for the ASR envelope
float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 0.2;

// This is an octave in MIDI notes.
int[] midiSequence = { 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72}; 
int duration = 200;

int note=0; 

int n = 10;
Bouncer[] b = new Bouncer[n];

void setup() {
  size(500,500);
  
  triOsc = new TriOsc(this);    
  env  = new Env(this);
  
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

// This function calculates the respective frequency of a MIDI note
float midiToFreq(int note){
    return (pow(2, ((note-69)/12.0)))*440; 
}