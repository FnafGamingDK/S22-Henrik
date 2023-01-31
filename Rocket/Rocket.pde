float x = 0;
float y = 0;
float stør = 100;
int farve = 255;
int minus;
Raket r;
Raket r2;
Raket r3;
Raket r4;
Raket r5;

void setup() {
  r = new Raket(5, 10.0, #FF0707);
  r2 = new Raket(8, 10.0, #FF0707);
  r3 = new Raket(2, 10.0, #FF0707);
  r4 = new Raket(2, 10.0, #FF0707);
  r5 = new Raket(2, 10.0, #FF0707);
  x = width/2;
  y = height / 2+400;
}

void draw() {
  background(0);
  r.setPos(x, y);
  r2.setPos(x-400, y);
  r3.setPos(x+400, y);
  r4.setPos(x-800, y);
  r5.setPos(x+800, y);
  r.visRaket();
  r2.visRaket();
  r3.visRaket();
  r4.visRaket();
  r5.visRaket();
  y = y - minus;

  if (y <= 99 && stør < 350) {
    y = -1000;
    stør = stør + 7.5;
  }
}

void settings() {
  fullScreen();
  //size(1000, 1000);
}

void keyPressed() {
  if (key == ' ') minus = 20;
  if (key == 'r') setup();
}
