void setup() {
  fullScreen();
  //size(1920, 1080);
}

void draw() {
  background(192);
  strokeWeight(4);
  MainMenu();
  windows();
  doors();
  buttons();
  //camsButton();
  CamUI();
  Cams();
  CamOutLine();
  timer();
  n++;
  text(n, width/2, height/2);
  if (k == 6) {
    Win();
  }
}
