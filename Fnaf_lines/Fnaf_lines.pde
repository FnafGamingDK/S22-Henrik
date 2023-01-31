import ddf.minim.*;
Minim minim;
AudioPlayer player;
static final int FADE = 2500;

void setup() {
  size(400, 60);
  background(50, 50, 50);
  minim = new Minim(this);
  player = minim.loadFile("lines.mp3");
}

void draw() {
  //player.play();
  textSize(30);
  //delay(21000);
  hello();
  hearing();
  chances();
  carrer();
}


void hello() {
  delay(10);
  text("Hello, Hello, Hello", 10, 30);
  println(1);
  delay(2500);
}

void hearing() {
  background(50);
  text("If you are hearing this.", 10, 30);
  println(2);
  delay(2500);
}

void chances() {
  background(50);
  text("Chances are you've made", 10, 30);
  println(3);
  delay(2500);
}

void carrer() {
  background(50);
  text("a poor carrer choise", 10, 30);
  println(4);
}
