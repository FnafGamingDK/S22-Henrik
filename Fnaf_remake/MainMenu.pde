void MainMenu() {
  if (MainMenu == true) {
    if (SelectNight == false) {
      if (CustomNight == false) {
        fill(0);
        textSize(90);
        text("Five Night \nat Freddy's \n suffed version", 50, 90);
        textSize(60);
        text("New game", 75, height/2+50);
        text("Select night", 75, height/2+250);
        text("Custom night", 75, height/2+450);
      }
    }
  }
  if (SelectNight == true) {
    if (MainMenu == false) {
      if (CustomNight == false) {
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
        
      }
    }
  }
}
