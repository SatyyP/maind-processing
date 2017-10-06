String mytext;
char c;

void setup() {
  size(500,500);
  mytext = "whatever";  
}

void draw() {  
  background(0);
  textSize(40);  
  text(mytext, 200,200);  
}