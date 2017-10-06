void setup () {
  size(500,500);
}

void draw() {
  background(0);
  textAlign(CENTER);
  textSize(36);
  String hours = "" + hour()%12;
  String dots = ":";
  String minutes = "" + minute();
  String seconds = "" + second();
  
  pushMatrix();
  translate(width/2-60, (height/12)*(hour()%12));
  rotate(radians(30*(hour()%12)));
  text(hours, 0,0);
  popMatrix();
  
  text(dots, width/2-30, height/2);
  pushMatrix();
  translate(width/2, (height/60)*minute());
  rotate(radians(5*minute()));
  text(minutes, 0, 0);
  popMatrix();  
  
  text(dots, width/2+30, height/2);
  pushMatrix();
  translate(width/2+60, (height/60)*second()+15);
  rotate(radians(5*second()));
  text(seconds, 0, 0);
  popMatrix();
}