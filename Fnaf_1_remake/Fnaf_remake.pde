PFont myFont;

void setup() {
  fullScreen();
  size(1920, 1080);
  myFont = createFont("FNaF1.ttf", 30);
}

void draw() {
  println(frameRate);
  background(192);
  strokeWeight(4);
  frameRate(60);
  textFont(myFont);
  n++;
  if (power > 0) 
  p++;
  if (frameRate <= 10) {
    p++;
    p++;
    p++;
    p++;
    p++;
    p++;
    p++;
    p++;
    p++;
  }
  MainMenu();
  windows();
  doors();
  buttons();
  //camsButton();
  Cams();
  CamUI();
  CamOutLine();
  if (cams == true) {
    fill(255);
    timer();
    power();
  }
  if (cams == false) {
    fill(0);
    timer();
    power();
  }
  MuteCall();
  if (n >= 30720 && n <= 30950) {
    Win();
  }
}
