import processing.video.*;

Movie FNaF;

PImage img;

void setup() {
  frameRate(60);
  fullScreen();
  background(255);
  FNaF = new Movie(this, "fnaf1trailer.mp4");
  FNaF.loop();
  img = loadImage("fnaf.png");
}

void draw() {
  image(FNaF, 0, 0);
}

void keyPressed()
{
  if (key=='o')
  {
    FNaF.pause();
  } else if (key=='p')
  {
    FNaF.play();
  }
  if (key == '1')
  {
    FNaF.stop();
    FNaF = new Movie(this, "fnaf1trailer.mp4");
    FNaF.play();
  } else if (key == '2')
  {

    FNaF.stop();
    FNaF = new Movie(this, "fnaf2trailer.mp4");
    FNaF.play();
  } else if (key == '3')
  {
    FNaF.stop();
    FNaF = new Movie(this, "fnaf3trailer.mp4");
    FNaF.play();
  } else if (key == '4')
  {
    FNaF.stop();
    FNaF = new Movie(this, "fnaf4trailer.mp4");
    FNaF.play();
  } else if (key == '5')
  {

    FNaF.stop();
    FNaF = new Movie(this, "fnafwtrailer.mp4");
    FNaF.play();
  } else if (key == '6')
  {

    FNaF.stop();
    FNaF = new Movie(this, "fnafsltrailer.mp4");
    FNaF.play();
  } else if (key == '7')
  {

    FNaF.stop();
    FNaF = new Movie(this, "fnafhwtrailer.mp4");
    FNaF.play();
  } else if (key == '8')
  {
    FNaF.stop();
    FNaF = new Movie(this, "fnafsbtrailer.mp4");
    FNaF.play();
  }
}

void movieEvent(Movie m) {
  m.read();
}
