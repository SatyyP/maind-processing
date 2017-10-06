class Superbox {
  
  float px,py,pz;
  float rx,ry,rz;
  color c;
  float w,h,d;
  
  Superbox() {
    px = random(-500,500);
    py = random(-500,500);
    pz = random(-500,500);
    rx = random(360);
    ry = random(360);
    rz = random(360);
    c = color(random(255),random(255),random(255));
    w = random(10,30);
    h = random(10,30);
    d = random(10,30);
  }
  
  void update() {
    rx += 1;
    ry += 1;
    rz -= 1;
  }
  
  void display() {
    fill(c);
    pushMatrix();
    translate(px,py,pz);
    rotateX(radians(rx));
    rotateY(radians(ry));
    rotateZ(radians(rz));
    box(w,h,d);
    popMatrix();
  }
  
}