import controlP5.*;

ControlP5 cp5;

String[] textfieldNames = {"Team fortress 2", "Geometry Dash", "Overwatch", "Minecraft", "Undertale", "Among us", "CS:GO", "Star Wars \nBattlefront 2"};

void setup() {
  size(400,910);

  PFont font = createFont("Times New Roman",25);

  cp5 = new ControlP5(this);

  int y = 100;
  int spacing = 100;
  for(String name: textfieldNames){
    cp5.addTextfield(name)
       .setPosition(20,y)
       .setSize(250,40)
       .setFont(font)
       .setFocus(true)
       .setColor(color(255,255,255))
       ;
     y += spacing;
  textFont(font);
  }
}

void draw() {
  background(0);
  textSize(30);
  fill(255);
  text("What is your opinion \n on these games?", 20, 40); 
}

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
  }
}
