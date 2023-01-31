boolean Freddyjs = false;
boolean Bonniejs = false;
boolean Chicajs = false;
boolean Foxyjs = false;
boolean GFjs = false;
boolean Muted = false;
boolean lLight = false;
boolean lDoor = false;
boolean rLight = false;
boolean rDoor = false;
boolean CustomPlay = false;
int i = 1;
int k = 12;
int n;

void windows() {
  if (InGame == true) {
    if (notcams == true) {
      if (lLight == true) fill(255, 255, 153);
      if (lLight == false) noFill();
      stroke(0);
      rect(width/8+120, height/3, width/8, height/3); //win l
      noFill();

      if (rLight == true) fill(255, 255, 153);
      if (rLight == false) noFill();
      rect(width*7/8-120-width/8, height/3, width/8, height/3); //win r
      noFill();
    }
  }
}

void doors() {
  if (InGame == true) {
    if (notcams == true) {
      stroke(0);
      if (lLight == true && lDoor == false) fill(255, 255, 204);
      if (lLight == false && lDoor == false) noFill();
      if (lDoor == true) fill(128);
      rect(70, height/3, width/8, height*2/3); //door l
      noFill();

      if (rLight == true && rDoor == false) fill(255, 255, 204);
      if (rLight == false && rDoor == false) noFill();
      if (rDoor == true) fill(128);
      rect(width-width/8-70, height/3, width/8, height*2/3); //door r
      noFill();
    }
  }
}

void buttons() {
  if (InGame == true) {
    if (notcams == true) {
      if (lDoor == true) fill(51, 255, 51);
      if (lDoor == false) fill(255, 51, 51);
      stroke(0);
      rect(10, height/2, 50, 50); //but do l
      noFill();
      
      if (lLight == true) fill(245);
      if (lLight == false) fill(150);
      rect(10, height/2+60, 50, 50); //but li l
      noFill();

      if (rDoor == true) fill(51, 255, 51);
      if (rDoor == false) fill(255, 51, 51);
      rect(width-60, height/2, 50, 50); //but do r
      noFill();

      if (rLight == true) fill(245);
      if (rLight == false) fill(150);
      rect(width-60, height/2+60, 50, 50); //but li r
      noFill();
    }
  }
}

void camsButton() {
  if (InGame == true) {
    if (notcams == true) {
      stroke(0);
      rect(415, 820, 770, 900);
      line(700, 850, 800, 870);
      line(900, 850, 800, 870);
      line(700, 860, 800, 880);
      line(900, 860, 800, 880);
    }
  }
}

void timer() {
  if (i == 8) {
    i = 7;
  }
  if (InGame == true) {
    stroke(0);
    textSize(50);
    text(k +" AM", width-180, 75);
    textSize(30);
    text("Night " + i, width-180, 105);
    if (n == 0) {
      k = 12;
    }
    if (n == 5120) {
      k = 1;
    }
    if (n == 10240) {
      k = 2;
    }
    if (n == 15360) {
      k = 3;
    }
    if (n == 20480) {
      k = 4;
    }
    if (n == 25600) {
      k = 5;
    }
    if (n == 30720) {
      k = 6;
      win = true;
    }
    if (CustomPlay == true) {
      textSize(20);
      text(freddy + "/" + bonnie + "/" + chica + "/" + foxy, width-180, 130);
    }
  }
}

void Win() {
  if (InGame == true) {
    if (win == true) {
      stroke(0);
      fill(0);
      rect(0, 0, width, height);
      textSize(50);
      fill(255);
      text("Night " + i, width/2-40, height/2);
      text(k + " AM", width/2-20, height/2+50);
      if (n == 30850) {
        i++;
        k = 12;
      }
      text(n, 1, height);
      if (n == 30950) {
        win = false;
        n = 0;
        Muted = false;
      }
      if (i == 6 || i == 7 || i == 8) {
        InGame = false;
        Menu = 1;
      }
    }
  }
}

void MuteCall() {
  if (InGame == true  && i < 6) {
    //if (n == 177) player.play();
    if (n >= 177 && n <= 1357) {
      if (Muted == false) {
        textSize(30);
        fill(175);
        stroke(135);
        rect(50, 50, 165, 50);
        fill(0);
        text("Mute call", 60, 85);
      }
      if (Muted == true && i < 6) {
        //player.pause();
      }
    }
  }
}
/*
void jumpscare() {
 fill(0);
 rect(0, 0, width, height);
 if (Freddyjs == true) {
 }
 if (Bonniejs == true) {
 }
 if (Chicajs == true) {
 }
 if (Foxyjs == true) {
 }
 if (GFjs == true) {
 image(loadImage("GFjs.jpg"), 0, height);
 }
 }*/
