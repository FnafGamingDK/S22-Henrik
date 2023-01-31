class Raket {
  int bang = 0;
  float lunte = 0.0;
  color farver;
  int overraskelse = 0;
  boolean lovlig = true;
  int gram = 10;
  float xpos, ypos;
  int spænding = 0;


  Raket(int b, float l, color f) {//, int o, boolean lo, int g, int s) {
    bang = b;
    lunte = l;
    farver = f;/*
    overraskelse = o;
     //float pris;
     lovlig = lo;
     gram = g;
     spænding = s;*/
  }

  void visRaket() {
    fill(255, 0, 0);
    rect(xpos-20, ypos-20, 40, 80);
    triangle(xpos-30, ypos-20, xpos+30, ypos-20, xpos, ypos-60);
    if (y <= 99 && stør < 350) eksploderRaket();
  }

  void setPos(float x, float y) {
    xpos=x;
    ypos=y;
  }

  class Raket1 extends Raket {
    void eksploderRaket() {
      
    }
  }
}
