ArrayList<Platform> p;
boolean iscolliding = false;
boolean dash = true;
boolean Left = false;
boolean Right = false;
boolean Up = false;
boolean Down = false;
boolean x = false;
PVector pos;
PVector vel;
float moving;
float walk = 4;
float Dash = 8;

void setup() {
  p = new ArrayList<Platform>();
  float y = height/2;
  float ory = y;
  for (int i = 0; i < width/100; i++) {
    p.add(new Platform(i*100, y));
    y += 0;//random(-75, 75);
  }
  pos = new PVector(20, ory);
  vel = new PVector();
}

void settings() {
  size(800, 400);
}

void draw() {
  background(51);
  fill(255);
  textSize(35);
  iscolliding = false;
  for (Platform i : p) {
    i.show();
    if (i.collide(pos)) {
      iscolliding = true;
      pos.y = i.pos.y;
    }
  }
  if (pos.y > height) {
    setup();
  }
  fill(255, 0, 0);
  stroke(0);
  ellipse(pos.x, pos.y-8, 16, 16);
  if (!iscolliding) {
    vel.y += 0.5;
    dash = true;
  }
  pos.add(vel);
  pos.x += moving;
  vel.mult(0.9);
  if (Right == true && x == true && dash == true) {
    moving = Dash;
    dash = false;
  }
  if (key == 'n') {
    vel.y = -1;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) Left = true;
    if (keyCode == RIGHT) Right = true;
    if (keyCode == UP) Up = true;
    if (keyCode == DOWN) Down = true;
    if (keyCode == LEFT) {
      moving = -walk;
    }
    if (keyCode == RIGHT) {
      moving = walk;
    }
  }
  if (key == 'x' || key == 'X') x = true;

  if (key == 'c' || key == 'C') {
    if (iscolliding) {
      vel.y -= 15;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) Left = false;
    if (keyCode == RIGHT) Right = false;
    if (keyCode == UP) Up = false;
    if (keyCode == DOWN) Down = false;
    if (keyCode == LEFT) {
      moving = 0;
    }
    if (keyCode == RIGHT) {
      moving = 0;
    }
  }
  if (key == 'x' || key == 'X') {
    moving = 0;
  }
}
