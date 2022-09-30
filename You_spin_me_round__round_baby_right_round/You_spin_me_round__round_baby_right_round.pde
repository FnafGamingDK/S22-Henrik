void setup(){
  size(500, 500);
}
  

void draw(){
  background(16, 21, 150);
  drawWheel();
  drawEger();
}

void drawWheel(){
  fill(0);
  circle(250, 250, 250);
}

void drawEger(){
  fill(16, 21, 150);
  circle(250, 250, 200);
  fill(99, 99, 99);
  translate(width/2, height/2);
  rotate(frameCount/0.1);
  rect(-100, -2, 200, 4);
  rect(-2, -100, 4, 200);
  rotateZ(radians(45));
  rect(-100, -2, 200, 4);
  rect(-2, -100, 4, 200);
  fill(99, 99, 99);
  circle(0, 0, 50);
}
