import controlP5.*;

ControlP5 op5;
Knob Red;
Knob Green;
Knob Blue;
Knob Opacity;

PImage webImg;
float R, G, B;

void setup() {
  size(800, 800);
  String url = "https://i.insider.com/602ee9ced3ad27001837f2ac?width=700";
  webImg = loadImage(url, "png");
  op5 = new ControlP5(this);

  Red = op5.addKnob("Red", 0, 255, 75, 100, height - 200, 100);
  Green = op5.addKnob("Green", 0, 255, 75, width/2-50, height - 200, 100);
  Blue = op5.addKnob("Blue", 0, 255, 75, width - 200, height - 200, 100);
  Opacity = op5.addKnob("Opacity", 0, 255, 0, 100, 100, 100);
}

void draw() {
  tint(1000);
  background(Red.getValue(), Green.getValue(), Blue.getValue());
  tint(Opacity.getValue(), Opacity.getValue());
  image(webImg, 0, 0, width, height);
}
