boolean lLight = false;
boolean lDoor = false;
boolean rLight = false;
boolean rDoor = false;
boolean notcams = true;
int i = 1;
int k = 12;
int X = mouseX;
int Y = mouseY;

void setup() {
  fullScreen();
}

void draw() {
  background(192);
  strokeWeight(4);
  windows();
  doors();
  buttons();
  //camsButton();
  cams();
  timer();
}
