String mytext;
char c;

void setup() {
  size(500,500);
  mytext = "whatever";  
}

void draw() {  
  background(0);
  textSize(40);  
  textAlign(CENTER, CENTER);  
  fill(255);
  text(mytext, width/2,height/2-10);
  fill(255,0,0);
  ellipse(width/2, height/2,5,5);
}