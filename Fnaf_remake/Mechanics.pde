boolean MainMenu = true;
boolean SelectNight = false;
boolean CustomNight = false;
boolean InGame = false;
boolean cams = false;
boolean notcams = true;
boolean win = false;
int freddy = 1;
int bonnie = 1;
int chica = 1;
int foxy = 1;

void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  if (InGame == false) {
    if (MainMenu == true) {
      if (SelectNight == false) {
        if (CustomNight == false) {
          if ((x > 75 && x < 350) && (y > height/2 && y < height/2+50)) {
            InGame = true;
            MainStage = true;
            MainMenu = false;
            SelectNight = false;
            CustomNight = false;
            n = 0;
            i = 1;
          } else if ((x > 75 && x < 350) && (y > height/2+150 && y < height/2+200)) {
            MainMenu = false;
            SelectNight = true;
            CustomNight = false;
          } else if ((x > 75 && x < 412.5) && (y > height/2+300 && y < height/2+350)) {
            MainMenu = false;
            SelectNight = false;
            CustomNight = true;
          }
        }
      }
    } else if (SelectNight == true) {
      if ((x > width-150 && x < width-50) && (y > height-75 && y < height-50)) {
        MainMenu = true;
        SelectNight = false;
        CustomNight = false;
      } else if ((x > 75 && x < 255) && (y > 160 && y < 200)) {
        InGame = true;
        MainStage = true;
        SelectNight = false;
        CustomNight = false;
        n = 0;
      } else if ((x > 75 && x < 255) && (y > 360 && y < 400)) {
        InGame = true;
        MainStage = true;
        SelectNight = false;
        CustomNight = false;
        n = 0;
        i = 2;
      } else if ((x > 75 && x < 255) && (y > 560 && y < 600)) {
        InGame = true;
        MainStage = true;
        SelectNight = false;
        CustomNight = false;
        n = 0;
        i = 3;
      } else if ((x > 75 && x < 255) && (y > 760 && y < 800)) {
        InGame = true;
        MainStage = true;
        SelectNight = false;
        CustomNight = false;
        n = 0;
        i = 4;
      } else if ((x > width/2 && x < width/2+180) && (y > 160 && y < 200)) {
        InGame = true;
        MainStage = true;
        SelectNight = false;
        CustomNight = false;
        n = 0;
        i = 5;
      } else if ((x > width/2 && x < width/2+180) && (y > 360 && y < 400)) {
        InGame = true;
        MainStage = true;
        SelectNight = false;
        CustomNight = false;
        n = 0;
        i = 6;
      } else if ((x > width/2 && x < width/2+180) && (y > 560 && y < 600)) {
        InGame = true;
        MainStage = true;
        SelectNight = false;
        CustomNight = false;
        n = 0;
        i = 7;
      }
    } else if (CustomNight == true) {
      if ((x > width-150 && x < width-50) && (y > height-75 && y < height-50)) {
        MainMenu = true;
        SelectNight = false;
        CustomNight = false;
      }
    }
  }
  if (InGame == true) {
    if (notcams == true) {
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
    if (notcams == false) {
      if (x > width-390 && x < width-290 && y > height-540 && y < height-500) {
        MainStage = true;
        Backstage = false;
        MainRoom = false;
      } else if (x > width-570 && x < width-530 && y > height-485 && y < height-385) {
        Backstage = true;
        MainStage = false;
        MainRoom = false;
      } else if (x > width-570 && x < width-530 && y > height-485 && y < height-385) {
        MainRoom = true;
        MainStage = false;
        Backstage = false;
      }
    }
  }
}

void keyPressed() {
  if (InGame == true) {
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
    if (key == CODED) {
      if (keyCode == 113) {
        InGame = false;
        MainMenu = true;
      }
    }
    if (key == '0') {
      if (k == 12) {
        n = 5120;
      }
      if (k == 1) {
        n = 10240;
      }
      if (k == 2) {
        n = 15360;
      }
      if (k == 3) {
        n = 20480;
      }
      if (k == 4) {
        n = 25600;
      }
      if (k == 5) {
        n = 30720;
      }
    }
    if (key == '9') {
      if (k == 1) {
        n = 0;
      }
      if (k == 2) {
        n = 5120;
      }
      if (k == 3) {
        n = 10240;
      }
      if (k == 4) {
        n = 15360;
      }
      if (k == 5) {
        n = 20480;
      }
    }
    if (key == 's' && notcams == true) {
      cams = true;
      notcams = false;
      lLight = false;
      rLight = false;
    } else if (key == 's' && notcams == false) {
      notcams = true;
      cams = false;
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
}
