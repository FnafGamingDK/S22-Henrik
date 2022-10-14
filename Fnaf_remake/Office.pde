void windows() {
  if (notcams == true) {
    if (lLight == true) fill(255, 255, 153);
    if (lLight == false) noFill();
    rect(width/8+120, height/3, width/8, height/3); //win l
    noFill();

    if (rLight == true) fill(255, 255, 153);
    if (rLight == false) noFill();
    rect(width*7/8-120-width/8, height/3, width/8, height/3); //win r
    noFill();
  }
}

void doors() {
  if (notcams == true) {
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

void buttons() {
  if (notcams == true) {
    if (lDoor == true) fill(51, 255, 51);
    if (lDoor == false) fill(255, 51, 51);
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

void camsButton() {
  if (notcams == true) {
    rect(415, 820, 770, 900);
    line(700, 850, 800, 870);
    line(900, 850, 800, 870);
    line(700, 860, 800, 880);
    line(900, 860, 800, 880);
  }
}

void timer() {
  fill(0);
  textSize(50);
  if (k == 1 || k == 2 || k == 3 || k == 4 || k == 5 || k == 6) {
    text(k +" AM", width-150, 50);
  } else if (k == 12) {
    text(k +" PM", width-150, 50);
  }
  textSize(30);
  text("Night " + i, width-150, 80);
}
