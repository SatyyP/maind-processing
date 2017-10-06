import processing.sound.*;
AudioDevice device;
SoundFile file;

void setup() {
  size(50,50);
  device = new AudioDevice(this, 48000, 32);
  file = new SoundFile(this, "sound.mp3");
}

void draw() {
  background(255);  
}

void keyPressed() {  
  file.play();
}