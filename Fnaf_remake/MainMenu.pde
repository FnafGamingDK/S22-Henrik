void MainMenu() {
  if (MainMenu == true) {
    if (SelectNight == false) {
      if (CustomNight == false) {
        background(0);
        fill(255);
        textSize(90);
        text("Five Night \nat Freddy's \nsuffed version", 50, 90);
        textSize(60);
        text("New game", 75, height/2+50);
        text("Select night", 75, height/2+200);
        text("Custom night", 75, height/2+350);
      }
    }
  }
  if (SelectNight == true) {
    if (MainMenu == false) {
      if (CustomNight == false) {
        background(0);
        fill(255);
        textSize(60);
        text("Night 1", 75, 200);
        text("Night 2", 75, 400);
        text("Night 3", 75, 600);
        text("Night 4", 75, 800);
        text("Night 5", width/2, 200);
        text("Night 6", width/2, 400);
        text("Night 7", width/2, 600);
        textSize(35);
        text("Back", width-150, height-50);
      }
    }
  }
  if (CustomNight == true) {
    if (MainMenu == false) {
      if (SelectNight == false) {
        background(0);
        
        //Freddy
        fill(100);
        square(width/2-675, height/2-105, 250);
        rect(width/2-675, height/2-180, 256, 75);
        rect(width/2-675, height/2+145, 256, 75);
        image(loadImage("Freddy.jpg"), width/2-675, height/2-105);
        fill(255);
        textSize(40);
        text("A.I. " + freddy, width/2-590, height/2+300);
        
        //Bonnie
        fill(100);
        square(width/2-300, height/2-105, 250);
        rect(width/2-300, height/2-180, 256, 75);
        rect(width/2-300, height/2+145, 256, 75);
        image(loadImage("Bonnie.jpg"), width/2-300, height/2-105);
        fill(255);
        textSize(40);
        text("A.I. " + bonnie, width/2-200, height/2+300);
        
        //Chica
        fill(100);
        square(width/2+75, height/2-105, 250);
        rect(width/2+75, height/2-180, 256, 75);
        rect(width/2+75, height/2+145, 256, 75);
        image(loadImage("Chica.jpg"), width/2+75, height/2-105);
        fill(255);
        textSize(40);
        text("A.I. " + chica, width/2+170, height/2+300);
        
        //Foxy
        fill(100);
        square(width/2+450, height/2-105, 250);
        rect(width/2+450, height/2-180, 256, 75);
        rect(width/2+450, height/2+145, 256, 75);
        image(loadImage("Foxy.jpg"), width/2+450, height/2-105);
        fill(255);
        textSize(40);
        text("A.I. " + foxy, width/2+535, height/2+300);
        
        textSize(35);
        text("Back", width-150, height-50);
      }
    }
  }
}
