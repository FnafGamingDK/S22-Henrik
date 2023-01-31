int power_state = 1;
int p;

void CamUI() {
  if (notcams == false) {
    fill(192);
    stroke(0);

    //Office
    fill(255);
    rect(width-360, height-195, 55, 75);

    //Left hall
    fill(255);
    rect(width-390, height-170, 30, 25);
    rect(width-437, height-285, 32, 25);
    rect(width-455, height-260, 65, 165);
    rect(width-475, height-200, 20, 15);
    rect(width-505, height-225, 40, 65);
    if (cam_state == 7) {
      fill(150, 150, 255);
      rect(width-455, height-260, 65, 81.5);
      rect(width-437, height-285, 32, 25);
    }
    if (cam_state == 8) {
      fill(150, 150, 255);
      rect(width-455, height-178.5, 65, 81.5);
    }
    if (cam_state == 11) {
      fill(150, 150, 255);
      rect(width-475, height-200, 20, 15);
      rect(width-505, height-225, 40, 65);
    }

    //Right hall
    fill(255);
    rect(width-275, height-260, 65, 165);
    rect(width-257, height-285, 32, 25);
    rect(width-305, height-170, 30, 25);
    if (cam_state == 9) {
      fill(150, 150, 255);
      rect(width-257, height-285, 32, 25);
      rect(width-275, height-260, 65, 82);
    }
    if (cam_state == 10) {
      fill(150, 150, 255);
      rect(width-275, height-178.5, 65, 82);
    }


    //Kitchen
    fill(255);
    rect(width-195, height-280, 25, 20);
    rect(width-200, height-260, 100, 80);
    if (cam_state == 6) {
      fill(150, 150, 255);
      rect(width-195, height-280, 25, 20);
      rect(width-200, height-260, 100, 80);
    }

    //Bathroom
    fill(255);
    rect(width-130, height-475, 30, 135);
    rect(width-150, height-450, 20, 20);
    rect(width-100, height-425, 20, 20);
    rect(width-80, height-432.5, 35, 35);
    rect(width-100, height-380, 20, 20);
    rect(width-80, height-387.5, 35, 35);
    if (cam_state == 4) {
      fill(150, 150, 255);
      rect(width-130, height-475, 30, 135);
      rect(width-150, height-450, 20, 20);
      rect(width-100, height-425, 20, 20);
      rect(width-80, height-432.5, 35, 35);
      rect(width-100, height-380, 20, 20);
      rect(width-80, height-387.5, 35, 35);
    }

    //Backroom
    fill(255);
    rect(width-530, height-470, 20, 20);
    rect(width-570, height-485, 40, 100);
    if (cam_state == 2) {
      fill(150, 150, 255);
      rect(width-530, height-470, 20, 20);
      rect(width-570, height-485, 40, 100);
    }

    //Pirate cove
    fill(255);
    rect(width-550, height-360, 40, 50);
    if (cam_state == 5) {
      fill(150, 150, 255);
      rect(width-550, height-360, 40, 50);
    }

    //Main room
    fill(255);
    rect(width-510, height-500, 360, 220);
    if (cam_state == 3) {
      fill(150, 150, 255);
      rect(width-510, height-500, 360, 220);
    }

    //Main stage
    fill(255);
    rect(width-390, height-540, 100, 40);
    if (cam_state == 1) {
      fill(150, 150, 255);
      rect(width-390, height-540, 100, 40);
    }
  }
}

void CamOutLine() {
  if (notcams == false) {
    //outline
    stroke(255);
    line(30, 30, width-30, 30);
    line(30, height-30, width-30, height-30);
    line(30, 30, 30, height-30);
    line(width-30, 30, width-30, height-30);
    stroke(0);
  }
}

void power() {
  if (InGame == true) {
    textSize(25);
    text("Power left: " + power, 50, height-100);
    text("Usage: ", 50, height-50);
    fill(26, 255, 0);
    stroke(26, 255, 0);
    rect(150, height-75, 20, 35);
    fill(0, 204, 0);
    stroke(0, 204, 0);
    rect(165, height-75, 5, 35);
    if ((lDoor == false && lLight == false && rDoor == false && rLight == false && cams == false)) {
      power_state = 1;
      if(p >= 90 && power_state == 1) {
        p = 0;
        power--;
      }
    }
    if ((lDoor == true || lLight == true || rDoor == true || rLight == true || cams == true)) {
      fill(26, 255, 0);
      stroke(26, 255, 0);
      rect(180, height-75, 20, 35);
      fill(0, 204, 0);
      stroke(0, 204, 0);
      rect(195, height-75, 5, 35);
      power_state = 2;
      if(p >= 70 && power_state == 2) {
        p = 0;
        power--;
      }
    }
    if ((lDoor == true && lLight == true) || (rDoor == true && rLight == true) || (lDoor == true && rLight == true) || (rDoor == true && lLight == true) || (lDoor == true && rDoor == true) || (lDoor == true && cams == true) || (rDoor == true && cams == true)) {
      fill(26, 255, 0);
      stroke(26, 255, 0);
      rect(180, height-75, 20, 35);
      fill(0, 204, 0);
      stroke(0, 204, 0);
      rect(195, height-75, 5, 35);
      fill(255, 255, 0);
      stroke(255, 255, 0);
      rect(210, height-75, 20, 35);
      fill(204, 204, 0);
      stroke(204, 204, 0);
      rect(225, height-75, 5, 35);
      power_state = 3;
      if(p >= 50 && power_state == 3) {
        p = 0;
        power--;
      }
    }
    if ((lDoor == true && lLight == true && rLight == true) || (rDoor == true && rLight == true && cams == true) || (lDoor == true && rDoor == true && cams == true) || (lDoor == true && lLight == true && cams == true) || (rDoor == true && rLight == true && cams == true) || (rDoor == true && lLight == true && cams == true) || (lDoor == true && rLight == true && cams == true) || (rDoor == true && lDoor == true && lLight == true) || (rDoor == true && lDoor == true && rLight == true)) {
      fill(26, 255, 0);
      stroke(26, 255, 0);
      rect(180, height-75, 20, 35);
      fill(0, 204, 0);
      stroke(0, 204, 0);
      rect(195, height-75, 5, 35);
      fill(255, 255, 0);
      stroke(255, 255, 0);
      rect(210, height-75, 20, 35);
      fill(204, 204, 0);
      stroke(204, 204, 0);
      rect(225, height-75, 5, 35);
      fill(255, 0, 0);
      stroke(255, 0, 0);
      rect(240, height-75, 20, 35);
      fill(204, 0, 0);
      stroke(204, 0, 0);
      rect(255, height-75, 5, 35);
      power_state = 4;
      if(p >= 30 && power_state == 4) {
        p = 0;
        power--;
      }
    }
  }
}
