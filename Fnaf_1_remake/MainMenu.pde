void MainMenu() {
  if (Menu == 1) {
    background(0);
    fill(255);
    textSize(90);
    text("Five Night \nat Freddy's \nscuffed version", 50, 90);
    textSize(60);
    text("New game", 75, height/2+50);
    text("Select night", 75, height/2+200);
    text("Custom night", 75, height/2+350);
  }
  if (Menu == 2) {
    background(0);
    fill(255);
    textSize(60);
    text("Night 1", 75, 200);
    text("Night 2", 75, 400);
    text("Night 3", 75, 600);
    text("Night 4", 75, 800);
    text("Night 5", width/2, 200);
    text("Night 6", width/2, 400);
    text("1/9/8/7", width/2, 600);
    text("20/20/20/20", width/2, 800);
    textSize(35);
    text("Back", width-150, height-50);
  }
  if (Menu == 3) {
    background(0);

    //Freddy
    stroke(0);
    fill(100);
    square(width/2-675, height/2-105, 250);
    rect(width/2-675, height/2-180, 256, 75);
    rect(width/2-675, height/2+145, 256, 75);
    image(loadImage("Freddy.jpg"), width/2-675, height/2-105);
    fill(255);
    textSize(40);
    text("A.I \n" + freddy, width/2-575, height/2+275);

    //Bonnie
    fill(100);
    square(width/2-300, height/2-105, 250);
    rect(width/2-300, height/2-180, 256, 75);
    rect(width/2-300, height/2+145, 256, 75);
    image(loadImage("Bonnie.jpg"), width/2-300, height/2-105);
    fill(255);
    textSize(40);
    text("A.I \n" + bonnie, width/2-190, height/2+275);

    //Chica
    fill(100);
    square(width/2+75, height/2-105, 250);
    rect(width/2+75, height/2-180, 256, 75);
    rect(width/2+75, height/2+145, 256, 75);
    image(loadImage("Chica.jpg"), width/2+75, height/2-105);
    fill(255);
    textSize(40);
    text("A.I \n" + chica, width/2+180, height/2+275);

    //Foxy
    fill(100);
    square(width/2+450, height/2-105, 250);
    rect(width/2+450, height/2-180, 256, 75);
    rect(width/2+450, height/2+145, 256, 75);
    image(loadImage("Foxy.jpg"), width/2+450, height/2-105);
    fill(255);
    textSize(40);
    text("A.I \n" + foxy, width/2+535, height/2+275);

    textSize(35);
    text("Play", width-150, height-50);
    text("Back", 100, height-50);
    textSize(50);
    if (EvenHarder == false) {
      fill(200, 0, 0);
      text("Hardmode", width/2-100, height/2+400);
    }
    if (EvenHarder == true) {
      fill(0, 200, 0);
      text("Hardmode", width/2-100, height/2+400);
    }
    /*if ((freddy == 1) && (bonnie == 9) && (chica == 8) && (foxy == 7) && (InGame == true)) {
     GFjs = true;
     jumpscare();
     }*/
  }
}
