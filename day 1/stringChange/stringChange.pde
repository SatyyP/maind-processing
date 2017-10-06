String mytext;
char c;

void setup() {
  size(500,500);   
}

void draw() {    
  background(0);
  textSize(40);  
  textAlign(CENTER, CENTER);  
  fill(255);    
  
  if(mousePressed) {
    mytext = "dragging the mouse!";
  } else {
    mytext = "whatever";
  }
  
  text(mytext, width/2,height/2-10);
  fill(255,0,0);
  ellipse(width/2, height/2,5,5);
}