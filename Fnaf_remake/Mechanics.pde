void mousePressed() {
  int x = mouseX;
  int y = mouseY;

  if (x > 10 && x < 60 && y > height/2 && y < height/2+50) { //do l
    if (lDoor == false) {
      lDoor = true;
    } else if (lDoor == true) {
      lDoor = false;
    }
  }

  if (x > 10 && x < 60 && y > height/2+60 && y < height/2+110) { //li l
    if (lLight == false) {
      lLight = true;
      rLight = false;
    } else if (lLight == true) {
      lLight = false;
    }
  }

  if (x > width-60 && x < width-10 && y > height/2 && y < height/2+50) { //do r
    if (rDoor == false) {
      rDoor = true;
    } else if (rDoor == true) {
      rDoor = false;
    }
  }

  if (x > width-60 && x < width-10 && y > height/2+60 && y < height/2+110) { //li r
    if (rLight == false) {
      rLight = true;
      lLight = false;
    } else if (rLight == true) {
      rLight = false;
    }
  }
}

void keyPressed() {
  if (key =='+') {
    i++;
    if (i == 8) {
      i = 7;
    }
  }
  if (key == '-') {
    i--;
    if (i == 0) {
      i = 1;
    }
  }
  if (key == '0') {
    k++;
    if (k == 13) k = 1;
    if (k == 7) k = 6;
  }
  if (key == '9') {
    k--;
    if (k == 0) k = 12;
    if (k == 11) k = 12;
  }
  if (key == 's' && notcams == true) {
    notcams = false;
    lLight = false;
    rLight = false;
  } else if (key == 's' && notcams == false) {
    notcams = true;
  }
  if (key == 'a' && lDoor == false) {
    lDoor = true;
  } else if (key == 'a' && lDoor == true) {
    lDoor = false;
  }
  if (key == 'q' && lLight == false) {
    lLight = true;
    rLight = false;
  } else if (key == 'q' && lLight == true) {
    lLight = false;
  }
  if (key == 'd' && rDoor == false) {
    rDoor = true;
  } else if (key == 'd' && rDoor == true) {
    rDoor = false;
  }
  if (key == 'e' && rLight == false) {
    rLight = true;
    lLight = false;
  } else if (key == 'e' && rLight == true) {
    rLight = false;
  }
}
