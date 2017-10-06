void face() {
  rectMode(CENTER);
  fill(#FFCECE);
  rect(width/2,height/2, 150,350, 10);
  triangle(width/2+75,height/2-100,width/2+75,height/2,width/2+120,height/2);
  fill(255);
  ellipse(width/2+30,height/2-40,20,20);
  fill(0);
  ellipse(width/2+30,height/2-40,10,10);
  rectMode(CORNER);
  rect(width/2+25,height/2+100,50,30,18,0,0,18);
}