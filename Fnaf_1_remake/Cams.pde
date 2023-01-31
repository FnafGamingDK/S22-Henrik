int cam_state = 1;

PImage img;

void Cams() {
  if (cams == true) {
    if (cam_state == 1) {
      stroke(0);
      img = loadImage("Empty_stage.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 2) {
      img = loadImage("Backstage.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 3) {
      img = loadImage("PartyRoom.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 4) {
      img = loadImage("Bathroom.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 5) {
      img = loadImage("PirateCove.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 6) {
      fill(0);
      rect(0-10, 0-10, width+20, height+20);
      fill(255);
      textSize(50);
      text("-CAMERA DISABLED-",width/2-200, 100);
      text("AUDIO ONLY",width/2-100, 150);
    }
    if (cam_state == 7) {
      img = loadImage("LeftHall1.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 8) {
      img = loadImage("LeftHall2.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 9) {
      img = loadImage("RightHall1.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 10) {
      img = loadImage("RightHall2.jpg");
      image(img, 0, 0, width, height);
    }
    if (cam_state == 11) {
      img = loadImage("Closet.jpg");
      image(img, 0, 0, width, height);
    }
  }
}
