//install ttslib library to use it
import guru.ttslib.*;

TTS tts;
int s, s1;

void setup() {
  size(100,100);
  smooth();
  tts = new TTS();
}

void draw() {
  s = second();
  if(s != s1) {
    tts.speak(""+second());
  }
  s1 = s;
  
}