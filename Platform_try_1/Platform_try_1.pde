ArrayList<Platform> p;
boolean iscolliding = false;
boolean isFullScreen = false;
PVector pos;
PVector vel;
float moving;
float walk = 2;
int w = 800;
int h = 600;
int l;
float time;

void setup() {
  p = new ArrayList<Platform>();
  float y = height/2;
  float ory = y;
  for (int i = 0; i < width/50; i++) {
    p.add(new Platform(i*50, y));
    y += random(-75, 75);
  }
  pos = new PVector(20, ory);
  vel = new PVector();
  if (!isFullScreen)
    surface.setResizable(true);
}

void settings() {
  size(w, h, P3D);
}

void draw() {
  background(51);
  fill(255);
  textSize(35);
  text(l, width-50, 40);
  text(frameCount/frameRate, 10, 40);
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
    l = 0;
  }
  if (pos.x > width) {
    setup();
    l++;
  }
  if (pos.x < 0) {
    setup();
  }
  if (pos.y < -250) {
    setup();
  }
  fill(255, 0, 0);
  stroke(0);
  ellipse(pos.x, pos.y-8, 16, 16);
  if (!iscolliding) {
    vel.y += 0.5;
  }
  pos.add(vel);
  pos.x += moving;
  vel.mult(0.9);
}

void keyPressed() {
  if (key == 'a') {
    moving = -walk;
  }
  if (key == 'd') {
    moving = walk;
  }
  if (key == 'w') {
    if (iscolliding) {
      vel.y -= 15;
    }
  }
  if (key == ' ') {
    if (iscolliding) {
      vel.y -= 25;
    }
  }
  if (key == 'i') {
    vel.y -= 10;
  }
  if (key == 'j') {
    moving = -10;
  }
  if (key == 'l') {
    moving = 10;
  }
}

void keyReleased() {
  if (key == 'a') {
    moving = 0;
  }
  if (key == 'd') {
    moving = 0;
  }
  if (key == 'j') {
    moving = 0;
  }
  if (key == 'l') {
    moving = 0;
  }
}
