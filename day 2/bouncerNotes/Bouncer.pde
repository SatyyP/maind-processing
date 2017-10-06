class Bouncer {

  float posX;
  float posY;
  float speedX;
  float speedY;
  float radius;
  color c;

  Bouncer(color _c, float _radius, float _speedX, float _speedY) {
    radius = _radius;     
    posX = random(radius, width-radius);
    posY = random(radius, height-radius);
    speedX = _speedX;
    speedY = _speedY;
    c = _c;
  }

  //how it works
  void update() {
    posX += speedX;
    posY += speedY;

    if (posX < radius || posX > width-radius) {
      triOsc.play(midiToFreq(midiSequence[note]), 0.8);       
      env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
      note++;     
      if(note == 12) {note = 0;}
      speedX = -speedX;
    }

    if (posY < radius || posY > height-radius) {
      triOsc.play(midiToFreq(midiSequence[note]), 0.8);       
      env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
      note++;     
      if(note == 12) {note = 0;}
      speedY = -speedY;
    }
  }

  //how it looks
  void display() {
    noStroke();
    fill(c);
    ellipse(posX, posY, radius*2, radius*2);
  }
}