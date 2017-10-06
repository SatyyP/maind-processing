function setup() {
  createCanvas(window.innerWidth,window.innerHeight, WEBGL);
}

function draw() {
  background(0);
  ambientLight(50);
  directionalLight(200, 0, 0, 0.25, 0.25, 0.25);
  pointLight(0, 0, 200, 300, 300, 0);
  var w = map(second(), 0, 60, 0, 200);
  var h = map(minute(), 0, 60, 0, 200);
  var d = map(hour(), 0, 24, 0, 200);

  push();
  translate(width*0.2, height*0.2);
  rotateX(frameCount*0.01);
  rotateY(frameCount*0.01);

  specularMaterial(250);
  box(w,h,d);
  pop();
}
