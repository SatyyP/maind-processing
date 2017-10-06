float mx, my;
float n = 10;
float siz;

void setup() {
  mx = 100;
  my = 100;
  size(500,500);
  siz = (width-mx*2)/n;
}

void draw() {
 background(255,0,0);
 fill(255);
 noStroke();
 rect(mx,my,width-(mx*2),height-(my*2));
 pushMatrix();
 translate(mx,my);
 for(int i=0; i<=n;i++) {
   for(int j=0; j<=n;j++) {
     fill(0);
     ellipse(i*siz, j*siz, 3,3);
   }
 } 
 popMatrix();
}