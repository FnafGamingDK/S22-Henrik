boolean MainStage = false;
boolean Backstage = false;
boolean MainRoom = false;

  void Cams() {
  if (cams == true) {
    if (MainStage == true) {
      stroke(0);
      line(width/2-150, 0, width/2-150, height);
      line(0, height-100, width/2-150, height/2+300);
      line(width/2-150, height/2+300, width, height-250);
      rect(width-550, height-360, 40, 50);
      rect(width-510, height-500, 360, 220);
      rect(width-257, height-285, 32, 25);
      rect(width-195, height-280, 25, 20);
      rect(width-510, height-500, 360, 220);
      fill(150, 150, 255);
      rect(width-390, height-540, 100, 40);
    }
    if (Backstage == true) {
      line(width/2-200, height, width/2, height/2);
      line(width/2-500, height/2, width/2, height/2);
      line(width/2-500, height/2, width/2-800, height);
      line(width/2-26.5, height/2+95, width/2-25, height-300);
      line(width-500, height, width-600, height-500);
      line(width-600, height-500, width-600, 350);
      line(width-600, 350, width-675, 200);
      line(width-675, 200, width-675, 750);
      line(width-675, 750, width-800, 900);
      line(width-800, 900, width-800, 350);
      line(width-800, 350, width-675, 200);
      line(width-700, 227, width-700, 0);
      line(width-1295, 775, width-800, 775);
      line(800, height/2, 800, 0);
      fill(150, 150, 255);
      rect(width-530, height-470, 20, 20);
      rect(width-570, height-485, 40, 100);
    }
    if (MainRoom == true) {
      
    }
  }
}
