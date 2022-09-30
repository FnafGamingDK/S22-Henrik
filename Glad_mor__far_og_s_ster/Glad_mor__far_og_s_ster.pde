boolean flower = false;
boolean clean = false;
boolean beer = false;
boolean cut = false;
boolean money = false;
boolean cloths = false;
boolean mum = false;
boolean dad = false;
boolean sister = false;

void setup() {
  size(400, 300);
  board();
  angry1();
  angry2();
  angry3();
}

void draw() {
}

void board() {
  background(125);
  line(100, 0, 100, 300);
  line(200, 0, 200, 300);
  line(300, 0, 300, 300);
  line(0, 100, 400, 100);
  line(0, 200, 400, 200);
  textSize(30);

  text("Mum", 22, 55);
  text("Flower", 110, 55);
  text("Clean", 215, 55);

  text("Dad", 25, 160);
  text("beer", 125, 160);
  text("Cut", 225, 145);
  text("grass", 215, 180);

  text("Sister", 15, 255);
  text("Money", 110, 255);
  text("Cloth", 220, 255);
}

void mouseClicked() {
  float x = mouseX;
  float y = mouseY;
  if ((x > 100 && x < 200) && (y > 0 && y < 100)) {
    flower = true;
    println("Flower");
  } else if ((x > 200 && x < 300) && (y > 0 && y < 100)) {
    clean = true;
    println("Clean");
  } else if ((x > 100 && x < 200) && (y > 100 && y < 200)) {
    beer = true;
    println("Beer");
  } else if ((x > 200 && x < 300) && (y > 100 && y < 200)) {
    cut = true;
    println("Cut grass");
  } else if ((x > 100 && x < 200) && (y > 200 && y < 300)) {
    money = true;
    println("Money");
  } else if ((x > 200 && x < 300) && (y > 200 && y < 300)) {
    cloths = true;
    println("Cloth");
  }

  if (money || cloths) {
    sister = true;
    happy3();
    if (beer && cut && sister) {
      dad = true;
      happy2();
      if (flower && clean && dad && sister) {
        mum = true;
        happy1();
      }
    }
  }
}

void angry1() {
  circle(350, 50, 75);
  circle(335, 40, 20);
  circle(365, 40, 20);
  arc(350, 70, 30, 30, -PI, 0);
}

void angry2() {
  circle(350, 150, 75);
  circle(335, 140, 20);
  circle(365, 140, 20);
  arc(350, 170, 30, 30, -PI, 0);
}

void angry3() {
  circle(350, 250, 75);
  circle(335, 240, 20);
  circle(365, 240, 20);
  arc(350, 270, 30, 30, -PI, 0);
}

void happy1() {
  circle(350, 50, 75);
  circle(335, 40, 20);
  circle(365, 40, 20);
  arc(350, 60, 30, 30, 0, PI);
}

void happy2() {
  circle(350, 150, 75);
  circle(335, 140, 20);
  circle(365, 140, 20);
  arc(350, 160, 30, 30, 0, PI);
}

void happy3() {
  circle(350, 250, 75);
  circle(335, 240, 20);
  circle(365, 240, 20);
  arc(350, 260, 30, 30, 0, PI);
}
